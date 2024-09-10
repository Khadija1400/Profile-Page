//
//  ContentView.swift
//  Profile Page
//
//  Created by Sara Alsagaf on 07/03/1446 AH.
//

import SwiftUI

struct ContentView: View {
    @Binding  var Email : String
    @Binding  var Name : String
    @Binding  var Bio : String
    @Binding  var Educaion : String
    @Binding  var Skills : String

    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Image("profile")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 130,height: 130)
                    Image(systemName: "checkmark.seal.fill")
                        .font(.system(size: 33))
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        .offset(x: 65, y: -100)
                    
                    
                }
                .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .leading)
                VStack{
                    Text("Hi ," + $Name.wrappedValue)
                        .foregroundColor(Color("primaryblue"))
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(.bold)
                        .offset(x: 50,y: -50)
                    
                    Text("You can find all your information here.")
                        .font(.system(size: 15))
                        .fontWeight(.light)
                        .foregroundColor(.black)
                        .offset(x: 50,y: -50)
                    
                }
                .frame(maxWidth: .infinity ,maxHeight: .infinity ,alignment: .leading)
                VStack(alignment: .leading, content:{
                    Text("Email")
                        .padding()
                        .foregroundColor(Color("primaryblue"))
                        .offset(x: 20,y:5)

                    TextField(Email, text: $Email)
                        .disabled(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                        .padding()
                        .background(Color("secondaryblue"))
                        .cornerRadius(12)
                        .padding(.horizontal)


                    Text("Name")
                        .padding()
                        .foregroundColor(Color("primaryblue"))
                        .offset(x: 20,y:5)

                    TextField(Name, text: $Name)
                        .disabled(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                        .padding()
                        .background(Color("secondaryblue"))
                        .cornerRadius(12)
                        .padding(.horizontal)
                    
                    
                    
                    Text("Bio")
                        .padding()
                        .foregroundColor(Color("primaryblue"))
                        .offset(x: 20,y:5)

                    TextField(Bio, text: $Bio)
                        .disabled(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                        .padding()
                        .background(Color("secondaryblue"))
                        .cornerRadius(12)
                        .padding(.horizontal)
                    
                    Text("Educaion")
                        .padding()
                        .foregroundColor(Color("primaryblue"))
                        .offset(x: 20,y:5)

                    TextField(Educaion, text: $Educaion)
                        .disabled(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                        .padding()
                        .background(Color("secondaryblue"))
                        .cornerRadius(12)
                        .padding(.horizontal)
                    
                    Text("Skills")
                        .padding()
                        .foregroundColor(Color("primaryblue"))
                        .offset(x: 20,y:5)

                    TextField(Skills, text: $Skills)
                        .disabled(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                        .padding()
                        .background(Color("secondaryblue"))
                        .cornerRadius(12)
                        .padding(.horizontal)
                    })
                .offset(y:-30.5)

                }
            }
        }
    }


//#Preview {
//    ContentView()
//}
struct ContentView_Previews: PreviewProvider{
    static var previews: some View{
        ContentView(
            Email: .constant(""),
            Name: .constant(""),
            Bio: .constant(""),
            Educaion: .constant(""),
            Skills: .constant(""))
    }
}
