import SwiftUI

struct ContentView: View {
    @ObservedObject private var model = Model()
    
    var body: some View {
        VStack {
            List {
                ForEach(model.meals) { item in
                    Text(item.name)
                }
            }
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
