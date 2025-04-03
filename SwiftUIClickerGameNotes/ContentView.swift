import SwiftUI

struct ContentView: View {
    @State var points = 0 //variables go up here
    var body: some View {
        VStack {
            Spacer()
            Spacer()
            Spacer()
            //Spacer()
           Text("Beastie Clicker Game") // get words on the screen
                .font(.largeTitle) // change size of text
                .foregroundStyle(.green)
            Spacer() // putting space between things on the view
            HStack{
                Spacer()
                Text("\(points)")
                    .font(.largeTitle)
                Spacer()
                Button("Push Me!"){ //making a button
                    print("Button Clicked: +1") // printing to the console
                    points += 1
                }
                //.frame(minWidth: 0, maxWidth: .infinity) //makes button bigger
                //.background(.red)
                .buttonStyle(.borderedProminent) //makes button rounded
                .tint(.green) // sets the button backrground color
                .cornerRadius(12)
                .font(.largeTitle)
                
                Spacer()
            }
            
            Spacer()
            Spacer()
            
            Button(action:{
                print("Beastie Clicked: +5")
                points+=5
            }){
                Image("St. Patrick Beastie")
            }
                .cornerRadius(5)
            
            Spacer()
        }
        
    }
}

#Preview {
    ContentView()
}
