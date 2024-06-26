//
//  MainBasic.swift
//  LearnLinux
//
//  Created by Akshay Bhasme on 01/06/24.
//



import SwiftUI
import Lottie



struct MainIntermediate: View {
    
    @Binding var showTabBar: Bool // Add a binding for controlling the visibility of the tab bar
    
    
    
    
    
    var body: some View {
        
        
        
        NavigationView {
            ScrollView{
                
                
                VStack(spacing: 0) {
                    
                    
                    LottieView(animationName: "online", loopMode: .loop)
                        .frame(width: .infinity, height: 200)
                    
                    ListViewI1(showTabBar: $showTabBar)
                        .frame(height: 220) // or use a specific height
                    
                    ListViewI2(showTabBar: $showTabBar)
                        .padding(.vertical, 0)
                        .frame(height: 300) // or use a specific height
        
                    
                    
                    
                    
                    
                    
                    Spacer()
                    
                }
                
            }
            
            
        }
        
        
        
        
        
    }
}
struct ListViewI1: View {
    @Binding var showTabBar: Bool // Add a binding for controlling the visibility of the tab bar
    
    var body: some View {
        List {
            ForEach(["Advance Xss",
                     "Api Security Testing",
                     "Bug Bounty Check List",
                     "Mobile App Reverse Engineering",
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
        case "Advance Xss":
            return AnyView(I1_advance_xss().navigationTitle(item))
        case "Api Security Testing":
            return AnyView(I2_api_testing().navigationTitle(item))
        case "Bug Bounty Check List":
            return AnyView(I3_bug_bounty_checklist().navigationTitle(item))
        case "Mobile App Reverse Engineering":
            return AnyView(I4_mobile_reverse_eng().navigationTitle(item))
        default:
            return AnyView(EmptyView().navigationTitle("Unknown"))
        }
    }
}

struct ListViewI2: View {
    @Binding var showTabBar: Bool // Add a binding for controlling the visibility of the tab bar
    
    var body: some View {
        List {
            ForEach(["Mobile Application Testing",
                     "Mobile Device Security Testing",
                     "Real Life Bug Bounty Cases",
                     "Books For Bug Bounty",
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
        case "Mobile Application Testing":
            return AnyView(I5_mobile_application_testing().navigationTitle(item))
        case "Mobile Device Security Testing":
            return AnyView(I6_mobile_device_security_testing().navigationTitle(item))
        case "Real Life Bug Bounty Cases":
            return AnyView(I7_real_life_bug_bounty_cases().navigationTitle(item))
        case "Books For Bug Bounty":
            return AnyView(I8_books_for_bug_bounty().navigationTitle(item))
        
        default:
            return AnyView(EmptyView().navigationTitle("Unknown"))
        }
    }
}






struct MainIntermediate_Previews: PreviewProvider {
    @State static var showTabBar = true // Create a State variable for showTabBar
    
    static var previews: some View {
        MainIntermediate(showTabBar: $showTabBar) // Pass the binding to BasicHomeView
    }
}






