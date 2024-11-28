import SwiftUI

@main
struct FilmDetailsApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                TabView {
                    NavigationLink(destination: ActionFilmsView()) {
                        Text("Action Films")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                    }
                    .tabItem {
                        Label("Action", systemImage: "film")
                            .foregroundColor(.white)
                    }
                    .background(Color.black)
                    
                    NavigationLink(destination: LoveFilmsView()) {
                        Text("Love Films")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                    }
                    .tabItem {
                        Label("Love", systemImage: "heart")
                            .foregroundColor(.white)
                    }
                    .background(Color.pink)
                    
                    NavigationLink(destination: AdventureFilmsView()) {
                        Text("Adventure Films")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                    }
                    .tabItem {
                        Label("Adventure", systemImage: "globe")
                            .foregroundColor(.white)
                    }
                    .background(Color.blue)
                }
                .tabViewStyle(DefaultTabViewStyle())
                .background(LinearGradient(gradient: Gradient(colors: [Color.black, Color.gray]), startPoint: .top, endPoint: .bottom))
                .edgesIgnoringSafeArea(.all)
            }
            
            .navigationBarBackButtonHidden(true)
        }
    }
}
