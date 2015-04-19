//
//  InterfaceController.swift
//  CALL911 WatchKit Extension
//
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    @IBOutlet weak var backgroundGroup: WKInterfaceGroup!
    var curAlpha:Double = 1

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
         var timer = NSTimer.scheduledTimerWithTimeInterval(0.4, target: self, selector: Selector("update"), userInfo: nil, repeats: true)
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    func update() {
        self.backgroundGroup.setAlpha(curAlpha > 0.5 ? 0.5 : 1.0)
        curAlpha = curAlpha > 0.5 ? 0.5 : 1.0
    }

}
