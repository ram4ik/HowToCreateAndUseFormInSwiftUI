//
//  ContentView.swift
//  HowToCreateAndUseFormInSwiftUI
//
//  Created by ramil on 03.08.2020.
//

import SwiftUI

struct ContentView: View {
    @State private var name: String = ""
    @State private var phoneNumber: String = ""
    @State private var isActive: Bool = true
    @State private var notificationEnable: Bool = false
    @State private var indexPicker = 0
    var optionPicker = ["Always", "While Using", "When Unlocked", "Never"]
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("User Information")) {
                    TextField("Name", text: $name)
                    TextField("Phone Number", text: $phoneNumber)
                    Toggle(isOn: $isActive, label: {
                        Text("Account is active")
                    })
                }
                Section(header: Text("Notification")) {
                    Toggle(isOn: $notificationEnable) {
                        Text("Enabled")
                    }
                    Picker(selection: $indexPicker, label: Text("Picker")) {
                        ForEach(0 ..< optionPicker.count) {
                            Text(self.optionPicker[$0])
                        }
                    }
                }
                Section(header: Text("About")) {
                    HStack {
                        Text("Version")
                        Spacer()
                        Text("1.0.1")
                    }
                }
                Section(header: Text("Reset Date")) {
                    Button(action: {
                        print("Action execute")
                    }, label: {
                        Text("Reset All Cache")
                    })
                }
            }.navigationBarTitle("Settings")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
