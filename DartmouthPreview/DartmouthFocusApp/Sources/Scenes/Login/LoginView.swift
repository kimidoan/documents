import SwiftUI

struct LoginView: View {
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var isLoggedIn = false
    
    var body: some View {
        NavigationView {
            ZStack {
                // Background Color - Dartmouth Green
                Color(red: 0.1, green: 0.4, blue: 0.25)
                    .ignoresSafeArea()
                
                VStack(spacing: 40) {
                    // Status Bar Space
                    HStack {
                        Text("9:41")
                            .foregroundColor(.white)
                        Spacer()
                        HStack(spacing: 5) {
                            Image(systemName: "cellullar")
                            Image(systemName: "wifi")
                            Image(systemName: "battery.100")
                        }
                    }
                    .padding(.horizontal)
                    .padding(.top, 10)
                    
                    // Dartmouth Logo
                    Image("dartmouth_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 120)
                        .padding(.top, 20)
                    
                    Text("DARTMOUTH")
                        .font(.custom("Trajan Pro", size: 24).bold())
                        .foregroundColor(.white)
                    
                    // App Title
                    VStack(spacing: 15) {
                        Text("FOCUSFLOW")
                            .font(.custom("Trajan Pro", size: 48))
                            .foregroundColor(.white)
                        
                        Text("UNLEASH YOUR BRAIN POTENTIAL")
                            .font(.system(size: 16))
                            .foregroundColor(.white.opacity(0.9))
                    }
                    .padding(.top, 30)
                    
                    Spacer()
                    
                    // Login Form
                    VStack(spacing: 20) {
                        TextField("Name", text: $name)
                            .textFieldStyle(RoundedTextFieldStyle())
                        
                        TextField("Email", text: $email)
                            .textFieldStyle(RoundedTextFieldStyle())
                            .keyboardType(.emailAddress)
                            .autocapitalization(.none)
                        
                        NavigationLink(destination: MainFeatureView(), isActive: $isLoggedIn) {
                            Button(action: {
                                isLoggedIn = true
                            }) {
                                Text("Login")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                    .frame(maxWidth: .infinity)
                                    .frame(height: 50)
                                    .background(Color(red: 0.08, green: 0.3, blue: 0.2))
                                    .cornerRadius(25)
                            }
                        }
                    }
                    .padding(.horizontal, 30)
                    
                    Spacer()
                }
            }
            .navigationBarHidden(true)
        }
    }
}

// Custom TextField Style
struct RoundedTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(20)
            .background(Color.white)
            .cornerRadius(30)
            .foregroundColor(.black)
    }
}

// Preview
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
} 