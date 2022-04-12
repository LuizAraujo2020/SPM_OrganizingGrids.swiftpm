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
                .font(.title)
                .fontWeight(.bold)
                .padding()
                .foregroundColor(selectedColor)
            
            ScrollView {
                LazyVGrid(columns: columnLayout) {
                    ForEach(allColors, id: \.description) { color in
                        Button {
                            selectedColor = color
                        } label: {
                            RoundedRectangle(cornerRadius: 4.0)
                                .aspectRatio(1.0, contentMode: .fit)
                                .foregroundColor(color)
                        }
                        .buttonStyle(.plain)
                    }
                }
            }
        }
    }
}
