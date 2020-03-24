//
//  ViewController.swift
//  Silly Song
//
//  Created by Olufemi Adefila on 3/21/20.
//  Copyright © 2020 Olufemi Adefila. All rights reserved.
//

import UIKit

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
}
class ViewController: UIViewController {

    
    @IBOutlet weak var nameField: UITextField!
    
    
    @IBOutlet weak var lyricsView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameField.delegate = self         // Do any additional setup after loading the view.
    }
    
    func shortName(_ name: String) -> String {
        var str = name
        str = str.lowercased()
        str.remove(at: str.startIndex)
        return str
    }

    func customizeTemplate(_ name: String) -> String {
        let short = shortName(name)
        let song = """
                    \(name), \(name), Bo B\(short)
                    Banana Fana Fo F\(short)
                    Me My Mo M\(short)
                    \(name)
                """
        return song
    }
    
    @IBAction func reset(_ sender: Any) {
        nameField.insertText("")
        lyricsView.insertText("")
    }
    
    @IBAction func displayLyrics(_ sender: Any) {
        let text: String = nameField.text!
        if (nameField.hasText) {
            lyricsView.text = customizeTemplate(text)
        }
    }
    
    
}

