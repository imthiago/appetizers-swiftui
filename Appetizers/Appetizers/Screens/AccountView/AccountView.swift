//
//  AccountView.swift
//  Appetizers
//
//  Created by Thiago Oliveira on 03/10/22.
//

import SwiftUI

struct AccountView: View {
    @StateObject var viewModel = AccountViewModel()

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Personal Info")) {
                    TextField("First Name", text: $viewModel.firstName)
                    TextField("Last Name", text: $viewModel.lastName)
                    TextField("Email", text: $viewModel.email)
                        .keyboardType(.emailAddress)
                        .textInputAutocapitalization(.never)
                        .autocorrectionDisabled(true)
                    DatePicker("BIrthday", selection: $viewModel.birthday, displayedComponents: .date)
                    Button {
                        viewModel.saveChanges()
                    } label: {
                        Text("Save Changes")
                    }
                }
                Section(header: Text("Requests")) {
                    Toggle("Extra Napkins", isOn: $viewModel.extraNapkins)
                    Toggle("Frequent Refills", isOn: $viewModel.frequentRefills)
                }

            }
            .tint(.brandPrimary)
            .navigationTitle("😅 Account")
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
