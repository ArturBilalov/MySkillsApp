//
//  CalculatorViewController2.swift
//  MySkills
//
//  Created by Artur Bilalov on 03.06.2022.
//

import UIKit


//     private lazy var infoText = Information()
//     
//     let infoFromCalculatorViewController1 = CalculatorViewController1()
//     
//     private lazy var name = ""
//    private lazy var date = ""
// //    private lazy var date = infoFromCalculatorViewController1.dateTextField.text
//    
//    
//    @IBOutlet weak var titleLabel: UILabel!
//    @IBOutlet weak var nameLabel: UILabel!
//    @IBOutlet weak var dateLabel: UILabel!
//    
//     
//     @IBOutlet weak var q1Label: UILabel!
//     @IBOutlet weak var q2Label: UILabel!
//     @IBOutlet weak var q3Label: UILabel!
//     @IBOutlet weak var q4Label: UILabel!
//     @IBOutlet weak var q5Label: UILabel!
//     @IBOutlet weak var q6Label: UILabel!
//     @IBOutlet weak var q7Label: UILabel!
//     @IBOutlet weak var q8Label: UILabel!
//     @IBOutlet weak var q9Label: UILabel!
//     @IBOutlet weak var q10Label: UILabel!
//     @IBOutlet weak var q11Label: UILabel!
//     @IBOutlet weak var q12Label: UILabel!
//     @IBOutlet weak var q13Label: UILabel!
//     @IBOutlet weak var q14Label: UILabel!
//     @IBOutlet weak var q15Label: UILabel!
//     @IBOutlet weak var q16Label: UILabel!
//     @IBOutlet weak var q17Label: UILabel!
//     @IBOutlet weak var q18Label: UILabel!
//     @IBOutlet weak var q19Label: UILabel!
//     @IBOutlet weak var q20Label: UILabel!
//     @IBOutlet weak var q21Label: UILabel!
//     @IBOutlet weak var q22Label: UILabel!
//     @IBOutlet weak var q23Label: UILabel!
//     @IBOutlet weak var q24Label: UILabel!
//     @IBOutlet weak var q25Label: UILabel!
//     @IBOutlet weak var q26Label: UILabel!
//     @IBOutlet weak var q27Label: UILabel!
//     @IBOutlet weak var q28Label: UILabel!
//     @IBOutlet weak var q29Label: UILabel!
//     @IBOutlet weak var q30Label: UILabel!
//     
//     var x1: Int = 0; var x2: Int = 0; var x3: Int = 0; var x4: Int = 0; var x5: Int = 0; var x6: Int = 0; var x7: Int = 0; var x8: Int = 0; var x9: Int = 0; var x10: Int = 0; var x11: Int = 0; var x12: Int = 0; var x13: Int = 0; var x14: Int = 0; var x15: Int = 0; var x16: Int = 0; var x17: Int = 0; var x18: Int = 0; var x19: Int = 0; var x20: Int = 0; var x21: Int = 0; var x22: Int = 0; var x23: Int = 0; var x24: Int = 0; var x25: Int = 0; var x26: Int = 0; var x27: Int = 0; var x28: Int = 0; var x29: Int = 0; var x30: Int = 0
//     
//     var yearOfBirth1: Int = 0
//     var yearOfBirth2: Int = 0
//     
//     
//     override func viewDidLoad() {
//         super.viewDidLoad()
//         self.view.backgroundColor = .lightGray
//         setupView()
//         calculating()
//         
//     }
//     
//     func check(theNumberBeingCompared: Int) -> Int {
//         var z = theNumberBeingCompared
//         if z > 22 {
//             z = String(theNumberBeingCompared).compactMap{$0.wholeNumberValue}.reduce(0, +)
//         }
//         return z
//     }
//     
//     private func setupView() {
//         titleLabel.text = infoText.titleCalculatorViewConroller2
//         nameLabel.text = infoFromCalculatorViewController1.nameInfo
//         dateLabel.text = infoFromCalculatorViewController1.dateInfo
//
//         q1Label?.text = String(x1)
//         q2Label?.text = String(x2)
//         q3Label?.text = String(x3)
//         q4Label?.text = String(x4)
//         q5Label?.text = String(x5)
//         q6Label?.text = String(x6)
//         q7Label?.text = String(x7)
//         q8Label?.text = String(x8)
//         q9Label?.text = String(x9)
//         q10Label?.text = String(x10)
//         q11Label?.text = String(x11)
//         q12Label?.text = String(x12)
//         q13Label?.text = String(x13)
//         q14Label?.text = String(x14)
//         q15Label?.text = String(x15)
//         q16Label?.text = String(x16)
//         q17Label?.text = String(x17)
//         q18Label?.text = String(x18)
//         q19Label?.text = String(x19)
//         q20Label?.text = String(x20)
//         q21Label?.text = String(x21)
//         q22Label?.text = String(x22)
//         q23Label?.text = String(x23)
//         q24Label?.text = String(x24)
//         q25Label?.text = String(x25)
//         q26Label?.text = String(x26)
//         q27Label?.text = String(x27)
//         q28Label?.text = String(x28)
//         q29Label?.text = String(x29)
//         q30Label?.text = String(x30)
//         
//     }
//     
//     func calculating() {
//   name = infoFromCalculatorViewController1.nameInfo
//  date = infoFromCalculatorViewController1.dateInfo
//         
//         let dateComponents = date.components(separatedBy: ["/"])
//         let y1 = Int(dateComponents[2]) ?? 0
//         let y2 = Int(dateComponents[0]) ?? 0
//         let y3 = Int(dateComponents[1]) ?? 0
//         yearOfBirth2 = y1
//         yearOfBirth1 = check(theNumberBeingCompared: yearOfBirth2)
//         x1 = y2
//         x2 = y3
//         x3 = check(theNumberBeingCompared: yearOfBirth1)
//         x4 = check(theNumberBeingCompared: x1+x2+x3)
//         x5 = check(theNumberBeingCompared: x1+x2+x3+x4)
//         x6 = check(theNumberBeingCompared: x1+x5)
//         x7 = check(theNumberBeingCompared: x1+x6)
//         x8 = check(theNumberBeingCompared: x5+x6)
//         x9 = check(theNumberBeingCompared: x1+x2)
//         x10 = check(theNumberBeingCompared: x5+x9)
//         x11 = check(theNumberBeingCompared: x2+x10)
//         x12 = check(theNumberBeingCompared: x2+x5)
//         x13 = check(theNumberBeingCompared: x2+x12)
//         x14 = check(theNumberBeingCompared: x5+x12)
//         x15 = check(theNumberBeingCompared: x2+x3)
//         x16 = check(theNumberBeingCompared: x5+x15)
//         x17 = check(theNumberBeingCompared: x15+x16)
//         x18 = check(theNumberBeingCompared: x3+x5)
//         x19 = check(theNumberBeingCompared: x3+x18)
//         x20 = check(theNumberBeingCompared: x3+x4)
//         x21 = check(theNumberBeingCompared: x5+x20)
//         x22 = check(theNumberBeingCompared: x20+x21)
//         x23 = check(theNumberBeingCompared: x4+x5)
//         x24 = check(theNumberBeingCompared: x4+x23)
//         x25 = check(theNumberBeingCompared: x1+x4)
//         x26 = check(theNumberBeingCompared: x5+x25)
//         x27 = check(theNumberBeingCompared: x25+x26)
//         x28 = check(theNumberBeingCompared: x18+x23)
//         x29 = check(theNumberBeingCompared: x23+x28)
//         x30 = check(theNumberBeingCompared: x18+x28)
//     }
//     
//     
//     

     
