import SwiftUI

struct ContentView: View {
    @State private var maxLines: Int = 3

    var body: some View {
        VStack {
            Text("This is a dynamic multi-line text view that can span up to the specified number of lines.")
                .lineLimit(maxLines) // Use a variable to set the line limit.

            Slider(value: Binding(
                get: { Double(maxLines) },
                set: { maxLines = Int($0) }
            ), in: 1...5, step: 1)
            .padding()

            Text("Line limit: \(maxLines)")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
