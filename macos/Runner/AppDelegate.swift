import Cocoa
import FlutterMacOS

@NSApplicationMain
class AppDelegate: FlutterAppDelegate {
  override func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
    return true
  }
    func showAlert(){
        let alert = NSAlert()
        alert.informativeText = "choose one"
        alert.runModal()
    }
}
