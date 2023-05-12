//
//  HomeView.swift
//  ProSport
//
//  Created by Rio Sudarsono on 12/05/23.
//

import SwiftUI

struct HomeView: View {
    
    @State var selectMenu = 0
    
    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                HStack {
                    Image("ic_header")
                    Image("ic_prosport")
                        .resizable()
                        .frame(width: 128, height: 16)
                    Spacer()
                    Image("ic_bell")
                        .resizable()
                        .frame(width: 20, height: 24)
                        .padding(.trailing, 8)
                    Image("ic_search")
                        .resizable()
                        .frame(width: 22, height: 22)
                }
                .padding()
                
                menu
                liveScore
                headline
                newsList
                newsList2
                newsOther
            }
        }
        .background(Color.bgColor)
    }
    
    var newsOther: some View {
        VStack(alignment: .leading) {
            Text("Artikel Lainnya")
                .bold()
                .padding(.bottom, 8)
            cellNewsOther()
            Divider().padding(.vertical)
            cellNewsOther()
            Divider().padding(.vertical)
            cellNewsOther()
            Divider().padding(.vertical)
            cellNewsOther()
            Divider().padding(.vertical)
            cellNewsOther()
        }
        .padding()
        .padding(.top, 24)
    }
    
    func cellNewsOther() -> some View {
        HStack {
            Image("img_rory")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 145)
                .padding(.trailing, 8)
            VStack(alignment: .leading) {
                Text("Golf")
                    .bold()
                    .font(.system(size: 8))
                    .foregroundColor(Color.primary_)
                    .padding(.vertical, 4)
                    .padding(.horizontal, 12)
                    .overlay(
                        RoundedRectangle(cornerRadius: 4, style: .continuous)
                               .strokeBorder(Color.primary_, lineWidth: 1)
                    )
                Text("Rory McIlroy mengatakan RBCH untuk 'mentalnya'")
                    .bold()
                    .font(.system(size: 12))
                HStack {
                    Text("John Doe")
                        .font(.system(size: 8))
                        .foregroundColor(.primaryGrey)
                    Image("ic_dot_grey")
                        .padding(.horizontal, 4)
                    Text("06 Februari 2023, 21:21 WIB")
                        .font(.system(size: 8))
                        .foregroundColor(.primaryGrey)
                }
            }
            Spacer()
        }
    }
    
    var newsList2: some View {
        ZStack(alignment: .topLeading) {
            Image("bg_primary")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: UIScreen.main.bounds.width)
            VStack(alignment: .leading, spacing: 0) {
                Text("Highlight")
                    .bold()
                    .font(.system(size: 16))
                    .foregroundColor(.white)
                    .padding()
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        cellNews2()
                        cellNews2()
                        cellNews2()
                    }
                }
            }
            .padding(.top, 24)
        }
    }
    
    func cellNews2() -> some View {
        VStack(alignment: .trailing, spacing: 0) {
            ZStack {
                Image("img_man_city")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 265)
                Image("ic_play_white")
                    .resizable()
                    .frame(width: 62, height: 62)
            }
            Text("Liga Inggris: Man City bantai Man United dengan skor 6-3")
                .frame(width: 265, alignment: .leading)
                .bold()
                .font(.system(size: 14))
                .foregroundColor(.white)
                .padding(.top, 8)
                .multilineTextAlignment(.leading)
        }
        .padding(.leading)

    }
    
    var newsList: some View {
        VStack (spacing: 0) {
            cellNews()
            Divider().padding(.vertical)
            cellNews()
            Divider().padding(.vertical)
            cellNews()
            Divider().padding(.vertical)
            cellNews()
            Divider().padding(.vertical)
            cellNews()
            Divider().padding(.vertical)
        }
        .padding()
    }
    
    func cellNews() -> some View {
        HStack {
            Image("img_stephen")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 145)
                .padding(.trailing, 8)
            VStack(alignment: .leading) {
                Text("Basketball")
                    .bold()
                    .font(.system(size: 8))
                    .foregroundColor(Color.primary_)
                    .padding(.vertical, 4)
                    .padding(.horizontal, 12)
                    .overlay(
                        RoundedRectangle(cornerRadius: 4, style: .continuous)
                               .strokeBorder(Color.primary_, lineWidth: 1)
                    )
                Text("Stephen Curry cetak 50 poin saat Golden State Warriors menyingkirkan Sacramento")
                    .bold()
                    .font(.system(size: 12))
                HStack {
                    Text("John Doe")
                        .font(.system(size: 8))
                        .foregroundColor(.primaryGrey)
                    Image("ic_dot_grey")
                        .padding(.horizontal, 4)
                    Text("06 Februari 2023, 21:21 WIB")
                        .font(.system(size: 8))
                        .foregroundColor(.primaryGrey)
                }
            }
            Spacer()
        }
    }
    
    var headline: some View {
        VStack(alignment: .leading, spacing: 0) {
            Image("img_zlatan")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: UIScreen.main.bounds.width - 32)
            HStack {
                Text("Football")
                    .bold()
                    .font(.system(size: 8))
                    .foregroundColor(Color.primary_)
                    .padding(.vertical, 4)
                    .padding(.horizontal, 12)
                    .overlay(
                        RoundedRectangle(cornerRadius: 4, style: .continuous)
                               .strokeBorder(Color.primary_, lineWidth: 1)
                    )
                Text("John Doe")
                    .font(.system(size: 8))
                    .foregroundColor(.primaryGrey)
                    .padding(.leading)
                Image("ic_dot_grey")
                    .padding(.horizontal, 4)
                Text("06 Februari 2023, 21:21 WIB")
                    .font(.system(size: 8))
                    .foregroundColor(.primaryGrey)
            }
            .padding(.horizontal)
            .padding(.top, 12)
            Text("Akhir Pengabdian Zlatan Ibrahimovic? AC Milan Takkan Perpanjang Kontraknya")
                .padding()
                .bold()
                .font(.system(size: 16))
        }
        .background(.white)
        .cornerRadius(8)
        .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.2), radius: 5, x: 2, y: 2)
        .padding()
        .padding(.top)
    }
    
    var liveScore: some View {
        VStack(alignment: .leading) {
            Text("Live Score")
                .bold()
                .font(.system(size: 15))
                .padding(.leading)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 0) {
                    cellScore()
                    cellScore()
                    cellScore()
                }
            }
        }
        .padding(.top, 24)
    }
    
    func cellScore() -> some View {
        VStack {
            HStack {
                Text("LIVE")
                    .font(.system(size: 10))
                    .padding(.vertical, 4)
                    .padding(.horizontal, 12)
                    .background(Color.primary_)
                    .foregroundColor(.white)
                    .cornerRadius(24)
                
                Text("66 Mins")
                    .font(.system(size: 10))
                    .foregroundColor(Color.primaryGrey)
            }
            HStack {
                Image("ic_ac_milan")
                    .resizable()
                    .frame(width: 20, height: 28)
                Text("ACM")
                    .font(.system(size: 12))
                    .padding(.trailing, 10)
                
                Text("0")
                    .bold()
                    .font(.system(size: 24))
                Text("-")
                    .font(.system(size: 16))
                Text("0")
                    .bold()
                    .font(.system(size: 24))
                
                Text("INT")
                    .font(.system(size: 12))
                    .padding(.leading, 10)
                Image("ic_inter_milan")
                    .resizable()
                    .frame(width: 20, height: 28)
            }
            
            Text("SERIE A")
                .bold()
                .font(.system(size: 12))
                .foregroundColor(.primaryGrey)
                    
        }
        .padding()
        .background(.white)
        .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.2), radius: 5, x: 2, y: 2)
        .cornerRadius(8)
        .padding(.leading)
    }
    
    var menu: some View {
        HStack {
            HStack {
                Image("ic_foryou")
                Text("For You")
                    .foregroundColor(selectMenu == 0 ? .white : Color.primaryGrey)
                    .bold()
                    .font(.system(size: 12))
            }
            .padding()
            .background(selectMenu == 0 ? Color.primary_ : Color.clear)
            .cornerRadius(8)
            .onTapGesture {
                selectMenu = 0
            }
            Spacer()
            HStack {
                Image("ic_football")
                Text("Football")
                    .foregroundColor(selectMenu == 1 ? .white : Color.primaryGrey)
                    .bold()
                    .font(.system(size: 12))
            }
            .padding()
            .background(selectMenu == 1 ? Color.primary_ : Color.clear)
            .cornerRadius(8)
            .onTapGesture {
                selectMenu = 1
            }
            Spacer()
            HStack {
                Image("ic_basketball")
                Text("Basketball")
                    .foregroundColor(selectMenu == 2 ? .white : Color.primaryGrey)
                    .bold()
                    .font(.system(size: 12))
            }
            .padding()
            .background(selectMenu == 2 ? Color.primary_ : Color.clear)
            .cornerRadius(8)
            .onTapGesture {
                selectMenu = 2
            }
            
        }
        .background(.white)
        .cornerRadius(8)
        .padding(.horizontal)
        .padding(.top)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
