import SwiftUI

struct ContentView: View {
    let columnLayout = Array(repeating: GridItem(), count: 3)
    
    @State private var selectedColor = Color.gray
    
    let allColors: [Color] = [
        .pink,
        .red,
        .orange,
        .yellow,
        .green,
        .mint,
        .teal,
        .cyan,
        .blue,
        .indigo,
        .purple,
        .brown,
        .gray
    ]
    
    var body: some View {
        VStack {
            Text("Selected Color")
                .font(.body)
                .padding(10)
            
            ScrollView {
                LazyVGrid(column: columnLayout) {
                    ForEach(allColors, id: \.description) { color in
                        
                    }
                }
            }
        }
    }
}
