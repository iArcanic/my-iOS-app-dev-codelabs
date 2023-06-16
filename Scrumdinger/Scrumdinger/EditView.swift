//
//  EditView.swift
//  Scrumdinger
//
//  Created by Preetham Ananthkumar on 16/06/2023.
//

import SwiftUI

struct EditView: View {
    @State private var scrum = DailyScrum.emptyScrum
    @State private var newAttendeeName = ""
    
    var body: some View {
        Form {
            Section(header: Text("Meeting Info")) {
                TextField("Title", text: $scrum.title)
                HStack {
                    Slider(value: $scrum.lengthInMinutesAsDouble, in: 5...30, step: 1) {
                        Text("Length")
                    }
                    Spacer()
                    Text("\(scrum.lengthInMinutes) minutes")
                }
            }
            Section (header: Text("Attendees")) {
                ForEach(scrum.attendees) { attendee in
                    Text(attendee.name)
                }
                .onDelete {indices in
                    scrum.attendees.remove(atOffsets: indices)
                }
                HStack {
                    TextField("New Attendee", text: $newAttendeeName)
                    Button(action: {}) {
                        Image(systemName: "plus.circle.fill")
                    }
                }
            }
        }
    }
}

struct EditView_Previews: PreviewProvider {
    static var previews: some View {
        EditView()
    }
}
