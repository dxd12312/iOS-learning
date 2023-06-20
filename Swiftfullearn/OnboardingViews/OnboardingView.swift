//
//  OnboardingView.swift
//  Swiftfullearn
//
//  Created by dxd on 2023/6/19.
//

import SwiftUI

struct OnboardingView: View {
    //Onboarding states:
    /*
     0 - Welcome Screen
     1 - add name
     2 - add age
     3 - add gender
     */
    @State var onboardingState: Int = 0
    let transion: AnyTransition = .asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading))
    //填写的东西
    @State var textField: String = ""
    @State var age: Double = 50
    @State var gender: String = ""
    //警告
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    //app store
    @AppStorage("name") var currentUsername: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    var body: some View {
        // 内容
        ZStack {
            ZStack {
                switch onboardingState {
                case 0:
                    welcomeSection
                        .transition(transion)
                case 1:
                    addNameSelection
                        .transition(transion)
                case 2:
                    addAgeSection
                        .transition(transion)
                case 3:
                    addGenderSelection
                        .transition(transion)
                default: RoundedRectangle(cornerRadius: 25)
                        .foregroundColor(.green)
                }
            }
            //按钮
            VStack {
                Spacer()
                bottomButton
                
            }
            .padding(30)
        }
        .alert(isPresented: $showAlert) {
            return Alert(title: Text(alertTitle))
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
            .background(Color.purple)
    }
}

//组件
extension OnboardingView {
    private var bottomButton: some View {
        Text(onboardingState == 0 ? "Sign in": onboardingState == 3 ? "Finsh" : "Next")
            .font(.headline)
            .foregroundColor(.purple)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(.white)
            .cornerRadius(10)
            .animation(nil)
            .onTapGesture {
                handleNextButtonPressed()
            }
    }
    
    private var welcomeSection: some View {
        VStack(spacing: 40.0) {
            Spacer()
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200,height: 200)
                .foregroundColor(.white)
            Text("Find your match.")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .overlay(
                    Capsule(style: .continuous)
                        .frame(height: 3)
                        .offset(y: 5)
                        .foregroundColor(.white)
                    , alignment: .bottom
                )
            Text("This is the #1 app for finding your match online! In this tutorial we are practicing using AppStore amd other SwiftUi techniques.")
                .foregroundColor(.white)
                .fontWeight(.medium)
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(30)
    }
    
    private var addNameSelection: some View {
        VStack(spacing: 40.0) {
            Spacer()
            Text("What's is name?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            TextField("Your name here", text: $textField)
                .font(.headline)
                .frame(height: 55)
                .padding(.horizontal)
                .background(Color.white)
                .cornerRadius(10)
            Spacer()
            Spacer()
        }
        .padding(30)
    }
    
    private var addAgeSection: some View {
        VStack(spacing: 20.0) {
            Spacer()
            Text("What's is age?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Text("\(String(format: "%.0f", age))")
                .font(.largeTitle)
                .foregroundColor(.white)
            Slider(value: $age, in: 18...100,step: 1)
                .accentColor(.white)
            Spacer()
            Spacer()
        }
        .padding(30)
    }
    
    private var addGenderSelection: some View {
        VStack(spacing: 20.0) {
            Spacer()
            Text("What's is gender?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Picker(selection: $gender, label: Text(gender.count > 1 ? gender: "Select a gender")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(.white)
                .cornerRadius(10),
                   content: {
                Text("Male").tag("Male")
                Text("Female").tag("Female")
                Text("Non-Binary").tag("Non-Binary")
            })
            .pickerStyle(MenuPickerStyle())

            Spacer()
            Spacer()
        }
        .padding(30)
    }
}

extension OnboardingView {
    
    func handleNextButtonPressed() {
        
        //检查是否输入
        switch onboardingState{
        case 1:
            guard textField.count >= 3 else {
                showAlert(title: "Your name must be at least 3 characters long! 😫")
                return
            }
        case 3:
            guard gender.count > 1 else {
                showAlert(title: "Please select a gender before moving forward 😝")
                return
            }
        default:
            break
        }
        
        if onboardingState == 3 {
           signIn()
        } else {
            withAnimation(.spring()) {
                onboardingState += 1
            }
        }
    }
    
    func signIn() {
        currentUsername = textField
        currentUserAge = Int(age)
        currentUserGender = gender
        withAnimation(.spring()) {
            currentUserSignedIn = true
        }
      
    }
    
    func showAlert(title: String) {
        alertTitle = title
        showAlert.toggle()
    }
}

struct CustomLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        Label(configuration)
            .font(.headline)
            .foregroundColor(.red)
            .padding(10)
            .background(Color.blue)
            .cornerRadius(5)
    }
}
