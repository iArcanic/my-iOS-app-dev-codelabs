//
//  HistoryView.swift
//  Scrumdinger
//
//  Created by Preetham Ananthkumar on 28/06/2023.
//

import SwiftUI

struct HistoryView: View {
    let history: History
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Divider()
                    .padding(.bottom)
                Text("Attendees")
                    .font(.headline)
                Text(history.attendeeString)
                if let transcript = history.transcript {
                    Text("Transcript")
                        .font(.headline)
                        .padding(.top)
                    Text(transcript)
                }
            }
        }
        .navigationTitle(Text(history.date, style: .date))
        .padding()
    }
}

extension History {
    var attendeeString: String {
        ListFormatter.localizedString(byJoining: attendees.map { $0.name })
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var history: History {
        History(attendees: [
            DailyScrum.Attendee(name: "Preetham"),
            DailyScrum.Attendee(name: "Preethika"),
            DailyScrum.Attendee(name: "Anitha"),
            DailyScrum.Attendee(name: "Ananthkumar")
        ],
                transcript: "Preetham, would you like to start today? Sure, yesterday, I reviewed Preethika's PR and met with Anitha in design team to finalise the UI...")
    }
    
    
    static var previews: some View {
        HistoryView(history: history)
    }
}
