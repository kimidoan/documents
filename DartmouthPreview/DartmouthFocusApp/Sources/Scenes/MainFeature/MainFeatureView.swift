import SwiftUI

struct MainFeatureView: View {
    var body: some View {
        ZStack {
            // Background
            Color(red: 0.1, green: 0.4, blue: 0.25) // Dartmouth Green
                .ignoresSafeArea()
            
            VStack(spacing: 0) {
                // Header
                HeaderView()
                
                // Main Content
                ScrollView {
                    VStack(spacing: 30) {
                        // Welcome Text
                        WelcomeTextView()
                        
                        // Feature Grid
                        FeatureGridView()
                        
                        // Raw Signal Section
                        RawSignalView()
                    }
                    .padding(.horizontal)
                    .padding(.top, 20)
                }
                .background(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                
                // Tab Bar
                CustomTabBar()
            }
        }
        .navigationBarHidden(true)
    }
}

struct HeaderView: View {
    var body: some View {
        VStack(spacing: 0) {
            // Status Bar
            HStack {
                Text("9:41")
                    .foregroundColor(.white)
                Spacer()
                HStack(spacing: 5) {
                    Image(systemName: "battery.75")
                    Image(systemName: "speaker.wave.2.fill")
                    Image(systemName: "bluetooth")
                }
                .foregroundColor(.white)
            }
            .padding(.horizontal)
            .padding(.top, 10)
            
            // Main Header
            HStack {
                // Dartmouth Logo
                Image("dartmouth_small_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 24)
                
                Spacer()
                
                // App Title
                VStack(spacing: 2) {
                    Text("FOCUSFLOW")
                        .font(.system(size: 20, weight: .bold))
                    Text("UNLEASH YOUR BRAIN POTENTIAL")
                        .font(.system(size: 10))
                }
                .foregroundColor(.white)
                
                Spacer()
                
                // Status Icons
                HStack(spacing: 15) {
                    Image(systemName: "battery.75")
                    Image(systemName: "speaker.wave.2")
                }
                .foregroundColor(.white)
            }
            .padding(.horizontal)
            .padding(.top, 10)
        }
    }
}

struct WelcomeTextView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Welcome To")
                .font(.custom("Optima", size: 36))
            Text("Your Focus Flow Space")
                .font(.custom("Optima", size: 28))
                .foregroundColor(.black.opacity(0.8))
            Text("AI PERSONALIZED AUDIO THERAPY\nPLATFORM FOR ENHANCED FOCUS")
                .font(.system(size: 12, weight: .medium))
                .foregroundColor(.gray)
                .padding(.top, 5)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal)
        .padding(.top, 20)
    }
}

struct FeatureButton: View {
    let title: String
    let icon: String
    let color: Color
    
    var body: some View {
        VStack(spacing: 15) {
            Image(systemName: icon)
                .font(.system(size: 32))
            Text(title)
                .font(.system(size: 16, weight: .medium))
                .multilineTextAlignment(.center)
        }
        .foregroundColor(.white)
        .frame(width: 160, height: 160)
        .background(Color(red: 0.1, green: 0.4, blue: 0.25))
        .cornerRadius(20)
    }
}

struct FeatureGridView: View {
    var body: some View {
        LazyVGrid(columns: [
            GridItem(.flexible()),
            GridItem(.flexible())
        ], spacing: 20) {
            FeatureButton(title: "Deep Focus", icon: "brain.head.profile", color: .green)
            FeatureButton(title: "Quick Focus", icon: "bolt.fill", color: .blue)
            FeatureButton(title: "Focus\nBootcamp", icon: "waveform.path.ecg", color: .purple)
            FeatureButton(title: "Memory\nTraining", icon: "brain", color: .orange)
        }
        .padding(.horizontal)
    }
}

struct RawSignalView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Raw signal")
                .font(.headline)
            
            VStack(alignment: .leading, spacing: 15) {
                SignalRow(title: "EEG", subtitle: "Brain signals")
                SignalRow(title: "EOG", subtitle: "Eye motions")
                SignalRow(title: "EMG", subtitle: "Facial activity")
            }
            
            Image("device_preview")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity)
                .padding(.top)
        }
        .padding()
    }
}

struct SignalRow: View {
    let title: String
    let subtitle: String
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(title)
                    .font(.system(size: 16, weight: .semibold))
                Text(subtitle)
                    .font(.system(size: 14))
                    .foregroundColor(.gray)
            }
            
            Spacer()
            
            // Signal wave animation placeholder
            Image(systemName: "waveform.path.ecg")
                .foregroundColor(.green)
                .font(.system(size: 24))
        }
    }
}

struct CustomTabBar: View {
    var body: some View {
        HStack(spacing: 60) {
            TabBarButton(icon: "house.fill")
            TabBarButton(icon: "brain.head.profile")
            TabBarButton(icon: "gearshape.fill")
        }
        .padding(.vertical, 20)
        .background(Color(red: 0.1, green: 0.4, blue: 0.25))
    }
}

struct TabBarButton: View {
    let icon: String
    
    var body: some View {
        Button(action: {}) {
            Image(systemName: icon)
                .font(.system(size: 24))
                .foregroundColor(.white)
        }
    }
}

struct MainFeatureView_Previews: PreviewProvider {
    static var previews: some View {
        MainFeatureView()
    }
} 