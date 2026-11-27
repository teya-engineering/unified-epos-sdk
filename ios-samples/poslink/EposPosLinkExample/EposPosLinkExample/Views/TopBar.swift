import SwiftUI
import Lemonade

struct TopBar: ToolbarContent {
    let onClearUserAuth: () -> Void
    let onClearDeviceLink: () -> Void
    let onLinkTerminal: () -> Void

    var body: some ToolbarContent {
        ToolbarItem(placement: .topBarTrailing) {
            Menu {
                Button("Clear User Auth") {
                    onClearUserAuth()
                }
                Button("Clear Device Link") {
                    onClearDeviceLink()
                }
                Button("Link Terminal") {
                    onLinkTerminal()
                }
            } label: {
                LemonadeUi.Icon(icon: .ellipsisVertical, contentDescription: "More options")
            }
        }
    }
}
