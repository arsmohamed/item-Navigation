import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
    }
}


struct Item : Identifiable {
    let name : String
    let id = UUID()
}

class Model : ObservableObject {
    @Published var meals: [Item] = menuItems()
    
    static func menuItems ()  -> [Item] {
        return [
            Item(name: "Lasagna"),
            Item(name: "Fettuccini Alfredo"),
            Item(name: "Spaghetti"),
            Item(name: "Avocato Toast"),
            Item(name: "Tortellini"),
            Item(name: "Pizza"),
        ]
    }
}
