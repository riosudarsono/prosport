//
//  ContentView.swift
//  ProSport
//
//  Created by Rio Sudarsono on 12/05/23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel: ContentVM
    
    var body: some View {
        VStack(spacing: 0) {
            if viewModel.selectedTab == 0 {
                HomeView()
            } else {
                OtherView()
            }
            menu
                .padding(.horizontal, 36)
                .padding(.bottom, 20)
                .padding(.top)
                .background(Color.white)
                .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.2), radius: 5, x: 2, y: 2)
        }
        .edgesIgnoringSafeArea(.bottom)
    }
    
    var menu: some View {
        HStack {
            VStack {
                if viewModel.selectedTab == 0 {
                    Image("ic_menu_0")
                        .resizable()
                        .foregroundColor(Color.primaryGrey)
                        .frame(width: 26, height: 26)
                    Image("ic_dot")
                } else {
                    Image("ic_menu_0")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundColor(Color.primaryGrey)
                        .padding(.bottom)
                    
                }
            }
            .onTapGesture {
                viewModel.selectedTab = 0
            }
            Spacer()
            VStack {
                if viewModel.selectedTab == 1 {
                    Image("ic_menu_1")
                        .resizable()
                        .foregroundColor(Color.primaryGrey)
                        .frame(width: 26, height: 26)
                    Image("ic_dot")
                } else {
                    Image("ic_menu_1")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundColor(Color.primaryGrey)
                        .padding(.bottom)
                }
            }
            .onTapGesture {
                viewModel.selectedTab = 1
            }
            Spacer()
            VStack {
                if viewModel.selectedTab == 2 {
                    Image("ic_menu_2")
                        .resizable()
                        .foregroundColor(Color.primaryGrey)
                        .frame(width: 26, height: 26)
                    Image("ic_dot")
                } else {
                    Image("ic_menu_2")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundColor(Color.primaryGrey)
                        .padding(.bottom)
                }
            }
            .onTapGesture {
                viewModel.selectedTab = 2
            }
            Spacer()
            VStack {
                if viewModel.selectedTab == 3 {
                    Image("ic_menu_3")
                        .resizable()
                        .foregroundColor(Color.primaryGrey)
                        .frame(width: 26, height: 26)
                    Image("ic_dot")
                } else {
                    Image("ic_menu_3")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundColor(Color.primaryGrey)
                        .padding(.bottom)
                }
            }
            .onTapGesture {
                viewModel.selectedTab = 3
            }
            Spacer()
            VStack {
                if viewModel.selectedTab == 4 {
                    Image("ic_menu_4")
                        .resizable()
                        .foregroundColor(Color.primaryGrey)
                        .frame(width: 26, height: 26)
                    Image("ic_dot")
                } else {
                    Image("ic_menu_4")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundColor(Color.primaryGrey)
                        .padding(.bottom)
                }
            }
            .onTapGesture {
                viewModel.selectedTab = 4
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: ContentVM())
    }
}
