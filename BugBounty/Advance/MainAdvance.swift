//
//  MainAdvance.swift
//  LearnLinux
//
//  Created by Akshay Bhasme on 01/06/24.
//



import SwiftUI
import Lottie



struct MainAdvance: View {
    
    @Binding var showTabBar: Bool // Add a binding for controlling the visibility of the tab bar





    var body: some View {
        

            
        NavigationView {
            ScrollView{
                
                
                VStack(spacing: 0) {
                    
                   
                    LottieView(animationName: "b2", loopMode: .loop)
                        .frame(width: .infinity, height: 200)
                    
                    ListViewA1(showTabBar: $showTabBar)
                        .frame(height: 360) // or use a specific height

                    ListViewA2(showTabBar: $showTabBar)
                        .padding(.vertical, 0)
                        .frame(height: 300) // or use a specific height
             

               

                    

                    
                    Spacer()
                    
                }
                
            }
       

        }
                
                
            
        

    }
}
struct ListViewA1: View {
    @Binding var showTabBar: Bool // Add a binding for controlling the visibility of the tab bar

    var body: some View {
        List {
            ForEach(["Reconnaissance Techniques",
                     "Some Third Party Tools",
                     "Tips For Success in Bug Bounty",
                     "Tools And Resources",
                     "Tools For Mobile App Bug Hunter",
                     "Top Website For Bug Hunters",
                     "Workflow And Reporting",
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
        case "Reconnaissance Techniques":
            return AnyView(A1_recon_techniques().navigationTitle(item))
        case "Some Third Party Tools":
            return AnyView(A2_third_party_tools().navigationTitle(item))
        case "Tips For Success in Bug Bounty":
            return AnyView(A3_tips_for_sucsess().navigationTitle(item))
        case "Tools And Resources":
            return AnyView(A4_tools_n_resources().navigationTitle(item))
        case "Tools For Mobile App Bug Hunter":
            return AnyView(A5_tools_for_mobile_app().navigationTitle(item))
        case "Top Website For Bug Hunters":
            return AnyView(A6_top_website().navigationTitle(item))
        case "Workflow And Reporting":
            return AnyView(A7_workflow_report().navigationTitle(item))
       
        default:
            return AnyView(EmptyView().navigationTitle("Unknown"))
        }
    }
}

struct ListViewA2: View {
    @Binding var showTabBar: Bool // Add a binding for controlling the visibility of the tab bar

    var body: some View {
        List {
            ForEach(["Bug Bounty Platform",
                     "How to Write Bug Report?",
                     
                           
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
        case "Bug Bounty Platform":
            return AnyView(A8_bug_bounty_platform_report().navigationTitle(item))
        case "How to Write Bug Report?":
            return AnyView(A9_how_to_write_report().navigationTitle(item))
       
        default:
            return AnyView(EmptyView().navigationTitle("Unknown"))
        }
    }
}









struct MainAdvance_Previews: PreviewProvider {
    @State static var showTabBar = true // Create a State variable for showTabBar

    static var previews: some View {
        MainAdvance(showTabBar: $showTabBar) // Pass the binding to BasicHomeView
    }
}







