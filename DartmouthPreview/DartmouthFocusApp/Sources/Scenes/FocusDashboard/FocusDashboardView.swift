import SwiftUI

struct FocusDashboardView: View {
    var body: some View {
        VStack(spacing: 20) {
            // Header
            HStack {
                Image("dartmouth_logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 24)
                Spacer()
                HStack(spacing: 16) {
                    Image(systemName: "battery.100")
                    Image(systemName: "wifi")
                    Text(Date(), style: .time)
                }
            }
            .padding(.horizontal)
            
            // Welcome Text
            VStack(alignment: .leading, spacing: 8) {
                Text("Welcome To")
                    .font(.system(size: 36, weight: .bold))
                    .opacity(0.9)
                Text("Dartmouth Focus")
                    .font(.system(size: 28, weight: .medium))
                    .opacity(0.7)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
            
            // Feature Grid
            LazyVGrid(columns: [
                GridItem(.flexible()),
                GridItem(.flexible())
            ], spacing: 20) {
                FeatureButton(icon: "brain.head.profile", title: "Focus Session")
                FeatureButton(icon: "chart.bar.fill", title: "Analytics")
                FeatureButton(icon: "person.fill", title: "Profile")
                FeatureButton(icon: "gear", title: "Settings")
            }
            .padding(.horizontal)
            
            // Raw Signal Section
            VStack(alignment: .leading, spacing: 12) {
                Text("Raw Signal")
                    .font(.system(size: 24, weight: .semibold))
                Image(systemName: "waveform.path.ecg")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 100)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
            
            Spacer()
            
            // Tab Bar
            HStack(spacing: 40) {
                TabBarButton(icon: "house.fill", title: "Home")
                TabBarButton(icon: "chart.bar.fill", title: "Stats")
                TabBarButton(icon: "person.fill", title: "Profile")
            }
            .padding(.vertical, 20)
            .background(Color.white)
        }
        .background(Color(red: 0.1, green: 0.4, blue: 0.25))
        .foregroundColor(.white)
    }
}

struct FeatureButton: View {
    let icon: String
    let title: String
    
    var body: some View {
        VStack(spacing: 16) {
            Image(systemName: icon)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text(title)
                .font(.system(size: 16, weight: .medium))
        }
        .frame(width: 160, height: 160)
        .background(Color.white.opacity(0.1))
        .cornerRadius(20)
    }
}

struct TabBarButton: View {
    let icon: String
    let title: String
    
    var body: some View {
        VStack(spacing: 4) {
            Image(systemName: icon)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 24, height: 24)
            Text(title)
                .font(.system(size: 12))
        }
    }
}

#Preview {
    FocusDashboardView()
} 