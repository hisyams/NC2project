//
//  ViewController.swift
//  NC2project
//
//  Created by Hisyam sanusi on 10/04/22.
//

import UIKit

class ViewController: UIViewController {
    
    var kepribadian: String?
    
    @IBOutlet var q1Label: UILabel!

    @IBOutlet var q2Label: UILabel!

    @IBOutlet var q3Label: UILabel!

    @IBOutlet var q4Label: UILabel!

    @IBOutlet var q5Label: UILabel!

    @IBOutlet var buttonSubmit: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        q1Label.lineBreakMode = .byWordWrapping
        q1Label.numberOfLines = 0
        q2Label.lineBreakMode = .byWordWrapping
        q2Label.numberOfLines = 0
        q3Label.lineBreakMode = .byWordWrapping
        q3Label.numberOfLines = 0
        q4Label.lineBreakMode = .byWordWrapping
        q4Label.numberOfLines = 0
        q5Label.lineBreakMode = .byWordWrapping
        q5Label.numberOfLines = 0
    }

    @IBAction func buttonSubmited(_ sender: Any) {
        var point = 0
        

        if let q1 = q1Label.text {
            point += Int(q1) ?? 0
        }

        if let q2 = q2Label.text {
            point += Int(q2) ?? 0
        }

        if let q3 = q3Label.text {
            point += Int(q3) ?? 0
        }

        if let q4 = q4Label.text {
            point += Int(q4) ?? 0
        }

        if let q5 = q5Label.text {
            point += Int(q5) ?? 0
        }
        
        if point < 12 {
            kepribadian = "Extrovert"
        } else {
            kepribadian = "Introvert"
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // TODO: explore tentang Optional Chaining
        let hasilKepribadian = kepribadian ?? "Default value"
        
        let tujuanViewController = segue.destination as! ViewControllerHasil
        tujuanViewController.hasil = hasilKepribadian
    }
}
