import SwiftUI

struct ContentView: View {
    @State private var isActive: Bool = false
    var body: some View {
        SymbolEffects(isActive: $isActive)
        /// Animation task for 2 seconds later starting
            .task {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    self.isActive.toggle()
                }
            }
    }
}

#Preview {
    ContentView()
        .preferredColorScheme(.dark)
}

/// Custom SymbolEffect you can utilize from this feature in your application
struct SymbolEffects: View {
    @Binding var isActive: Bool
    var body: some View {
        Image(systemName: "signature")
            .resizable()
            .font(.largeTitle)
            .aspectRatio(contentMode: .fill)
            .frame(width: 160, height: 160)
            .symbolEffect(.drawOff, isActive: isActive)
           
    }
}
