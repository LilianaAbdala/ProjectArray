//
//  ViewController.swift
//  ProjectArray
// //  Created by Liliana Porto Abdala on 26/12/22.
//

import UIKit

class ViewController: UIViewController {
    
let names = ["Liliana", "Mateus", "Adalberto", "Theodora"]
    
  /*  names.randomElement()
    let index = Int.random(in: 0..<names.count)
    names[index]*/
    
    @IBOutlet var lblLabel :UILabel!
    var currentIndexCount = 0

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        lblLabel = UILabel()
        lblLabel.frame = CGRect.init(x: 100, y: 200, width: 200, height: 50)
        lblLabel.text = "My Family"
        lblLabel.textAlignment  = .center
        lblLabel.textColor = .darkGray
        lblLabel.backgroundColor = .systemGray
        view.addSubview(lblLabel)
        
        
   /*     @IBAction func Button(_ sender: UIButton) */
        
        let button = UIButton()
        button.setTitle("Next", for: .normal)
        button.backgroundColor = .systemGray
        button.frame = CGRect(x: 100, y: 600, width: 200, height: 50)
        button.layer.cornerRadius = 25
        button.addTarget(self, action: #selector(buttonAction(sender:)), for: .touchUpInside)
        view.addSubview(button)
        
        }
        
       @objc func buttonAction(sender: UIButton) {
           sender.isSelected = !sender.isSelected
           print("Button", sender.isSelected)
           
           if (currentIndexCount == names.count) {
               currentIndexCount = 0;
           }
           lblLabel.text = names[currentIndexCount];
           currentIndexCount+=1;
           
       }
    
    }
    


