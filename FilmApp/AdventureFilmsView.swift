import SwiftUI

struct AdventureFilmsView: View {
    let films = adventureFilms
    
    var body: some View {
        VStack {
            ZStack {
                // Adventure Film Background Gradient
                LinearGradient(gradient: Gradient(colors: [Color.blue, Color.green]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                
                Text("Adventure Films")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .shadow(radius: 10)
            }
            .frame(height: 300)
            
            List(films) { film in
                NavigationLink(destination: FilmDetailView(film: film)) {
                    HStack {
                        // Rounded Rectangle to represent a film card
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.white.opacity(0.2))
                            .frame(width: 100, height: 150)
                            .shadow(radius: 5)
                        
                        Text(film.name)
                            .font(.title3)
                            .fontWeight(.semibold)
                            .padding(.leading, 10)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.vertical, 10)
                    }
                    .padding()
                    .background(Color.black.opacity(0.3)) // Dark overlay for the row
                    .cornerRadius(12)
                    .shadow(radius: 5)
                    .padding(.bottom, 5)
                }
                .buttonStyle(PlainButtonStyle()) // To avoid default button style
            }
            .listStyle(PlainListStyle()) // Removes default list styling
        }
    }
}
