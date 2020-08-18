//
//  AthleteDetails.swift
//  AthleteApp
//
//  Created by Rohit Prajapati on 18/08/20.
//  Copyright © 2020 Rohit Prajapati. All rights reserved.
//

import UIKit
import Nuke

class AthleteDetailVC: UIViewController {
    
    
    //MARK: Properties
    var athlete: Athlete?
    
    //MARK: Outlets
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblPosition: UILabel!
    @IBOutlet weak var lblNotes: UILabel!
    @IBOutlet weak var imgProfile: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let url = URL(string: athlete?.image ?? "") else { return }
        
        let options = ImageLoadingOptions(
            placeholder: UIImage(named: "placeholder"),
            transition: .fadeIn(duration: 0.33)
        )
        Nuke.loadImage(with: url, options: options, into: imgProfile)
        
        
        lblName.text = "\(athlete?.firstName ?? "") \(athlete?.lastName ?? "")"
        lblPosition.text = "\(athlete?.position ?? "")"
        lblNotes.text = athlete?.notes ?? ""
       
    }
    

}
