//
//  MainBasic.swift
//  LearnLinux
//
//  Created by Akshay Bhasme on 01/06/24.
//



import SwiftUI
import Lottie



struct MainBasic: View {
    
    @Binding var showTabBar: Bool // Add a binding for controlling the visibility of the tab bar





    var body: some View {
        

            
        NavigationView {
            ScrollView{
                
                
                VStack(spacing: 0) {
                    
                   
                    LottieView(animationName: "ttols", loopMode: .loop)
                        .frame(width: .infinity, height: 200)
                    
                    ListViewB1(showTabBar: $showTabBar)
                        .frame(height: 180) // or use a specific height

                    ListViewB2(showTabBar: $showTabBar)
                        .padding(.vertical, 0)
                        .frame(height: 400) // or use a specific height
                  

                    

                    
                    Spacer()
                    
                }
                
            }
       

        }
                
                
            
        

    }
}
struct ListViewB1: View {
    @Binding var showTabBar: Bool // Add a binding for controlling the visibility of the tab bar

    var body: some View {
        List {
            ForEach(["Introduction",
                     "What is Bug Bounty?",
                     "Top vulnerability",
                    ], id: \.self) { item in
                NavigationLink(destination: destinationView(for: item)
                                .onAppear { showTabBar = false }
                    .navigationTitle(item)) {

                    CardView(item: item)
                        .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                }
            }
        }
        .onAppear {
            showTabBar = true // Ensure tab bar is shown when view appears
        }
        .scrollDisabled(true)
    }

    func destinationView(for item: String) -> some View {
        switch item {
        case "Introduction":
            return AnyView(B1_Intro().navigationTitle(item))
        case "What is Bug Bounty?":
            return AnyView(B2_whatis_bug_bounty().navigationTitle(item))
        case "Top vulnerability":
            return AnyView(B3_top_vuln().navigationTitle(item))
       default:
            return AnyView(EmptyView().navigationTitle("Unknown"))
        }
    }
}

struct ListViewB2: View {
    @Binding var showTabBar: Bool // Add a binding for controlling the visibility of the tab bar

    var body: some View {
        List {
            ForEach(["Penetration Testing Labs",
                     "Bug Bounty Tools",
                     "Hacker Search Engine",
                     "Learn From Websites",
                     "Top Company BugBounty Program",
                     "Online Practice Bug Hunting",
                     "Top Extension For Bug Hunter",
                    ], id: \.self) { item in
                NavigationLink(destination: destinationView(for: item)
                                .onAppear { showTabBar = false }
                    .navigationTitle(item)) {

                    CardView(item: item)
                        .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                }
            }
        }
        .onAppear {
            showTabBar = true // Ensure tab bar is shown when view appears
        }
        .scrollDisabled(true)
    }

    func destinationView(for item: String) -> some View {
        switch item {
        case "Penetration Testing Labs":
            return AnyView(B4_penetration_testing_labs().navigationTitle(item))
        case "Bug Bounty Tools":
            return AnyView(B5_bug_bounty_tools().navigationTitle(item))
        case "Hacker Search Engine":
            return AnyView(B6_hackers_search_engin().navigationTitle(item))
        case "Learn From Websites":
            return AnyView(B7_learn_from_website().navigationTitle(item))
        case "Top Company BugBounty Program":
            return AnyView(B8_top_company_program().navigationTitle(item))
        case "Online Practice Bug Hunting":
            return AnyView(B9_online_practice().navigationTitle(item))
        case "Top Extension For Bug Hunter":
            return AnyView(B10_top_extension_bug_bounty().navigationTitle(item))
   
        default:
            return AnyView(EmptyView().navigationTitle("Unknown"))
        }
    }
}




struct CardView: View {
    let item: String
    
    var body: some View {
        
        VStack(spacing: 10) { // Aligning content to the start
            Text(item)
                .font(.headline)
                .foregroundColor(.black.opacity(0.8))
                .frame(maxWidth: .infinity, alignment: .leading)
                .lineLimit(1)
                .truncationMode(.tail)
                
        }
        
        .frame(maxHeight: 40)
        .cornerRadius(10)
        .padding(0)
    }
        
        
        
    
}



struct MainBasic_Previews: PreviewProvider {
    @State static var showTabBar = true // Create a State variable for showTabBar

    static var previews: some View {
        MainBasic(showTabBar: $showTabBar) // Pass the binding to BasicHomeView
    }
}






