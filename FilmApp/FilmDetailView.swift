import SwiftUI

struct FilmDetailView: View {
    var film: Film
    
    // Function to return a suitable background gradient based on genre
    func getBackgroundGradient(for genre: String) -> LinearGradient {
        switch genre {
        case "Action":
            return LinearGradient(gradient: Gradient(colors: [Color.red, Color.black]), startPoint: .topLeading, endPoint: .bottomTrailing)
        case "Love":
            return LinearGradient(gradient: Gradient(colors: [Color.pink, Color.red]), startPoint: .topLeading, endPoint: .bottomTrailing)
        case "Adventure":
            return LinearGradient(gradient: Gradient(colors: [Color.blue, Color.green]), startPoint: .topLeading, endPoint: .bottomTrailing)
        default:
            return LinearGradient(gradient: Gradient(colors: [Color.gray, Color.black]), startPoint: .topLeading, endPoint: .bottomTrailing)
        }
    }
    
    var body: some View {
        VStack {
            // Background Gradient
            getBackgroundGradient(for: film.name) // Dynamically changes gradient based on genre
                .ignoresSafeArea()
            
            VStack(spacing: 25) {
                // Film Title
                Text(film.name)
                    .font(.system(size: 40, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
                    .shadow(radius: 10)
                    .padding(.top, 80)
                
                // Film Details Section
                VStack(alignment: .leading, spacing: 15) {
                    // Director Text
                    Text("Director: \(film.director)")
                        .font(.title2)
                        .foregroundColor(.white)
                        .bold()
                    
                    // Author Text
                    Text("Author: \(film.author)")
                        .font(.title2)
                        .foregroundColor(.white)
                        .bold()
                    
                    // Release Date Text
                    Text("Release Date: \(film.releaseDate)")
                        .font(.title2)
                        .foregroundColor(.white)
                        .bold()
                }
                .padding()
                .background(Color.black.opacity(0.6))
                .cornerRadius(20)
                .shadow(radius: 15)
                .padding(.horizontal, 20)
                
                Spacer()
            }
        }
        .navigationTitle(film.name)
        
    }
}
