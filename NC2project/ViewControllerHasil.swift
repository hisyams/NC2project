//
//  ViewControllerHasil.swift
//  NC2project
//
//  Created by Hisyam sanusi on 10/04/22.
//

import UIKit

class ViewControllerHasil: UIViewController {
    
    // TODO: Explore Nil-coalescing
    var nama: String?
    var hasil: String?
    
    @IBOutlet weak var namaLabel: UILabel!
    @IBOutlet weak var hasilKarakter: UILabel!
    @IBOutlet weak var deskripsiKarakter: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // kasih value nama yang nil
        hasilKarakter.text = hasil
    }
}
