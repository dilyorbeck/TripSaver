import SwiftUI

struct ItineraryAddView: View {
    @ObservedObject var myData = sharedData
    var destination: Destination
    var data = Data()
    @State var duration: Int = 0
    @State var showingTips: Bool = false
    @State var isAdded = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.gray
                    .opacity(0.1)
                    .ignoresSafeArea()
                
                VStack {
                    Picker("Select period", selection: $duration) {
                        Text("1 day").tag(0)
                        Text("3 days").tag(1)
                        Text("5 days").tag(2)
                        Text("7 days").tag(3)
                    }
                    .pickerStyle(.segmented)
                    .padding(.top)
                    .padding(.horizontal)
                    .task(id: duration) {
                        isAdded = false
                    }
                    VStack {
                        switch duration {
                        case 0: OneDayView()
                        case 1: ThreeDaysView()
                        case 2: FiveDaysView()
                        case 3: SevenDaysView()
                        default: Text("There's no itinerary for this period")
                        }
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    Button(isAdded ? "Added" : "Add to \"Your trips\"") {
                        if duration < destination.itinerariesAvailable.count {
                            myData.yourItineraries.append(Itinerary(name: destination.itinerariesAvailable[duration].name, duration: destination.itinerariesAvailable[duration].duration))
                            isAdded = true
                        }
                    }
                    .buttonStyle(.bordered)
                    .controlSize(.large)
                    .buttonBorderShape(.capsule)
                    .tint(isAdded ? .gray : .green)
                    .padding(.bottom, 20)
                    .disabled(isAdded)
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
            .navigationTitle(destination.name)
            .onAppear {
                isAdded = false
            }
        }
    }
}

struct OneDayView: View {
    var body: some View {
        Text("Day 1")
    }
}

struct ThreeDaysView: View {
    var body: some View {
        Text("Day 3")
    }
}

struct FiveDaysView: View {
    var body: some View {
        Text("Day 5")
    }
}

struct SevenDaysView: View {
    var body: some View {
        Text("Day 7")
    }
}

#Preview {
    ItineraryAddView(destination: Destination(name: "Naples", itinerariesAvailable: []))
}
