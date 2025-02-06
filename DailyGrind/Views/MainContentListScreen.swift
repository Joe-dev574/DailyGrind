//
//  MainContentListScreen.swift
//  DailyGrind
//
//  Created by Joseph DeWeese on 2/5/25.
//

import SwiftUI
import SwiftData

struct MainContentListScreen: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]
    @State private var showAddItemSheet: Bool = false
    
    
    var body: some View {
      
        NavigationStack{
            VStack{
                ItemListView()
            }
            //MARK:  TOOLBAR
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        EditButton()
                    }
                    ToolbarItem(placement: .principal) {
                        LogoView()
                    }
                    ToolbarItem(placement: .topBarTrailing){
                        Button{
                            showAddItemSheet = true
                             HapticManager.notification(type: .success)
                        } label: {
                            Image(systemName: "plus")
                                .font(.title3)
                                .fontWeight(.semibold)
                                .foregroundStyle(.white)
                                .frame(width: 40, height: 40)
                                .background(.blue.gradient, in: .circle)
                                .contentShape(.circle)
                        }
                    }
                }
                    .sheet(isPresented: $showAddItemSheet) {
                        AddItemView()
                            .presentationDetents([.medium])
                    }
                }
                    .blur(radius: showAddItemSheet ? 8 : 0)///background blurs when add item
            }
        }


#Preview {
    MainContentListScreen()
        .modelContainer(for: Item.self, inMemory: true)
}
