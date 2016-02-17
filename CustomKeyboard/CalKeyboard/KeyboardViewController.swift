//
//  KeyboardViewController.swift
//  CalKeyboard
//
//  Created by Gene Yoo on 9/15/15.
//  Copyright © 2015 iOS Decal. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {

    @IBOutlet var nextKeyboardButton: UIButton!
    @IBOutlet var deleteButton: UIButton!
    @IBOutlet var returnButton: UIButton!
    @IBOutlet var ahhButton: UIButton!
    @IBOutlet var canYouNotButton: UIButton!
    @IBOutlet var dontHateThePlayaButton: UIButton!
    @IBOutlet var justNoButton: UIButton!
    @IBOutlet var ohBabyButton: UIButton!
    @IBOutlet var ohYeahButton: UIButton!
    @IBOutlet var omgButton: UIButton!
    @IBOutlet var surprisedButton: UIButton!
    @IBOutlet var wassupButton: UIButton!
    @IBOutlet var whatButton: UIButton!
    
    var keyboardView: UIView!

    override func updateViewConstraints() {
        super.updateViewConstraints()
    
        // Add custom view sizing constraints here
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loadInterface()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }

    override func textWillChange(textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }

    override func textDidChange(textInput: UITextInput?) {
        // The app has just changed the document's contents, the document context has been updated.
    }
    
    func returnButtonFunction() {
        var returnB = textDocumentProxy as UITextDocumentProxy
        returnB.insertText("\r\n")
    }
    
    func deleteButtonFunction() {
        var db = textDocumentProxy as UITextDocumentProxy
        db.deleteBackward()
    }
    
    func ahhButtonFunction() {
        var aaB = textDocumentProxy as UITextDocumentProxy
        aaB.insertText("Oh shit!")
    }
    
    func canYouNotButtonFunction() {
        var cybf = textDocumentProxy as UITextDocumentProxy
        cybf.insertText("Oh hell no!")
    }
    
    func dontHateThePlayaButtonFunction() {
        var dhtp = textDocumentProxy as UITextDocumentProxy
        dhtp.insertText("Don't hate the playa, hate the game!")
    }
    
    func justNoButtonFunction() {
        var jnb = textDocumentProxy as UITextDocumentProxy
        jnb.insertText("Just no.")
    }
    
    func ohBabyButtonFunction() {
        var obb = textDocumentProxy as UITextDocumentProxy
        obb.insertText("Oh myyyy.")
    }
    
    func ohYeahButtonFunction() {
        var oyb = textDocumentProxy as UITextDocumentProxy
        oyb.insertText("Oh yeah baby!")
    }
    
    func omgButtonFunction() {
        var ob = textDocumentProxy as UITextDocumentProxy
        ob.insertText("OMGOMGOMG!")
    }
    
    func surprisedButtonFunction() {
        var sb = textDocumentProxy as UITextDocumentProxy
        sb.insertText("WHATCHUSAY?")
    }
    
    func wassupButtonFunction() {
        var wb = textDocumentProxy as UITextDocumentProxy
        wb.insertText("Das wassup!")
    }
    
    func whatButtonFunction() {
        var wbt = textDocumentProxy as UITextDocumentProxy
        wbt.insertText("What did you say?")
    }


    func loadInterface() {
        let keyboardNib = UINib(nibName: "Keyboard", bundle: nil)
        keyboardView = keyboardNib.instantiateWithOwner(self, options: nil)[0] as! UIView
        keyboardView.frame = view.frame
        view.addSubview(keyboardView)
        view.backgroundColor = keyboardView.backgroundColor
        nextKeyboardButton.addTarget(self, action: "advanceToNextInputMode", forControlEvents: .TouchUpInside) // advanceToNextInputMode is already defined in template
        returnButton.addTarget(self, action: "returnButtonFunction", forControlEvents: .TouchUpInside)
        deleteButton.addTarget(self, action: "deleteButtonFunction", forControlEvents: .TouchUpInside)
        ahhButton.addTarget(self, action: "ahhFunction", forControlEvents: .TouchUpInside)
        canYouNotButton.addTarget(self, action: "canYouNotButtonFunction", forControlEvents: .TouchUpInside)
        dontHateThePlayaButton.addTarget(self, action: "dontHateThePlayaButtonFunction", forControlEvents: .TouchUpInside)
        justNoButton.addTarget(self, action: "justNoButtonFunction", forControlEvents: .TouchUpInside)
        ohBabyButton.addTarget(self, action: "ohBabyButtonFunction", forControlEvents: .TouchUpInside)
        ohYeahButton.addTarget(self, action: "ohYeahButtonFunction", forControlEvents: .TouchUpInside)
        omgButton.addTarget(self, action: "omgButtonFunction", forControlEvents: .TouchUpInside)
        surprisedButton.addTarget(self, action: "surprisedButtonFunction", forControlEvents: .TouchUpInside)
        wassupButton.addTarget(self, action: "wassupButtonFunction", forControlEvents: .TouchUpInside)
        whatButton.addTarget(self, action: "whatButtonFunction", forControlEvents: .TouchUpInside)
        
    }


}
