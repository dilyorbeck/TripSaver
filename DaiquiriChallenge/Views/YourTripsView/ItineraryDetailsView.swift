import SwiftUI

struct ItineraryDetailsView: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @ObservedObject var myData = sharedData
    var itinerary: Itinerary
    @State var showingTips: Bool = false
    @State var isArchived = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.gray
                    .opacity(0.1)
                    .ignoresSafeArea()
                
                VStack {
                    VStack {
                        
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    
                    Button(action: {
                        myData.archivedItineraries.append(Itinerary(name: itinerary.name, duration: itinerary.duration))
                        myData.yourItineraries.removeAll(where: { $0.id == itinerary.id })
                        isArchived = true
                    }) {
                        Text(isArchived ? "Archived" : "Archive trip")
                    }
                    .buttonStyle(.bordered)
                    .controlSize(.large)
                    .buttonBorderShape(.capsule)
                    .tint(isArchived ? .gray : .red)
                    .padding(.bottom, 20)
                    .disabled(isArchived)
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Tips") {
                        showingTips.toggle()
                    }
                    .sheet(isPresented: $showingTips) {
                        GeneralTipsView()
                    }
                }
            }
            .navigationTitle(itinerary.name)
        }
    }
}

#Preview {
    ItineraryDetailsView(itinerary: Itinerary(name: "Naples", duration: 7))
}
