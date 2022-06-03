//
//  CalculatorViewController2.swift
//  MySkills
//
//  Created by Artur Bilalov on 02.06.2022.
//

import UIKit

class CalculatorViewController: UIViewController {
    
   
    
    
    private lazy var infoText = Information()
    
    private lazy var infoFromCalculatorViewController1 = CalculatorViewController1()
    
    private lazy var name = infoFromCalculatorViewController1.nameInfo
    private lazy var date = "04/07/1989"
//    private lazy var date = infoFromCalculatorViewController1.dateTextField.text
    @IBOutlet weak var myView: UIView!
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var q1Label: UILabel!
    @IBOutlet weak var q2Label: UILabel!
    @IBOutlet weak var q3Label: UILabel!
    @IBOutlet weak var q4Label: UILabel!
    @IBOutlet weak var q5Label: UILabel!
    @IBOutlet weak var q6Label: UILabel!
    @IBOutlet weak var q7Label: UILabel!
    @IBOutlet weak var q8Label: UILabel!
    @IBOutlet weak var q9Label: UILabel!
    @IBOutlet weak var q10Label: UILabel!
    @IBOutlet weak var q11Label: UILabel!
    @IBOutlet weak var q12Label: UILabel!
    @IBOutlet weak var q13Label: UILabel!
    @IBOutlet weak var q14Label: UILabel!
    @IBOutlet weak var q15Label: UILabel!
    @IBOutlet weak var q16Label: UILabel!
    @IBOutlet weak var q17Label: UILabel!
    @IBOutlet weak var q18Label: UILabel!
    @IBOutlet weak var q19Label: UILabel!
    @IBOutlet weak var q20Label: UILabel!
    @IBOutlet weak var q21Label: UILabel!
    @IBOutlet weak var q22Label: UILabel!
    @IBOutlet weak var q23Label: UILabel!
    @IBOutlet weak var q24Label: UILabel!
    @IBOutlet weak var q25Label: UILabel!
    @IBOutlet weak var q26Label: UILabel!
    @IBOutlet weak var q27Label: UILabel!
    @IBOutlet weak var q28Label: UILabel!
    @IBOutlet weak var q29Label: UILabel!
    @IBOutlet weak var q30Label: UILabel!
    
    var x1: Int = 0; var x2: Int = 0; var x3: Int = 0; var x4: Int = 0; var x5: Int = 0; var x6: Int = 0; var x7: Int = 0; var x8: Int = 0; var x9: Int = 0; var x10: Int = 0; var x11: Int = 0; var x12: Int = 0; var x13: Int = 0; var x14: Int = 0; var x15: Int = 0; var x16: Int = 0; var x17: Int = 0; var x18: Int = 0; var x19: Int = 0; var x20: Int = 0; var x21: Int = 0; var x22: Int = 0; var x23: Int = 0; var x24: Int = 0; var x25: Int = 0; var x26: Int = 0; var x27: Int = 0; var x28: Int = 0; var x29: Int = 0; var x30: Int = 0
    
    var yearOfBirth1: Int = 0
    var yearOfBirth2: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .lightGray
        setupView()
        calculating()
//        CalculatorViewController2.storyboardInstance()
    }
    
    func check(theNumberBeingCompared: Int) -> Int {
        var z = theNumberBeingCompared
        if z > 22 {
            z = String(theNumberBeingCompared).compactMap{$0.wholeNumberValue}.reduce(0, +)
        }
        return z
    }
    
    private func setupView() {
        titleLabel?.text = infoText.titleCalculatorStoryboard
        nameLabel?.text = name
        dateLabel?.text = date

        q1Label?.text = String(x1)
        q2Label?.text = String(x2)
        q3Label?.text = String(x3)
        q4Label?.text = String(x4)
        q5Label?.text = String(x5)
        q6Label?.text = String(x6)
        q7Label?.text = String(x7)
        q8Label?.text = String(x8)
        q9Label?.text = String(x9)
        q10Label?.text = String(x10)
        q11Label?.text = String(x11)
        q12Label?.text = String(x12)
        q13Label?.text = String(x13)
        q14Label?.text = String(x14)
        q15Label?.text = String(x15)
        q16Label?.text = String(x16)
        q17Label?.text = String(x17)
        q18Label?.text = String(x18)
        q19Label?.text = String(x19)
        q20Label?.text = String(x20)
        q21Label?.text = String(x21)
        q22Label?.text = String(x22)
        q23Label?.text = String(x23)
        q24Label?.text = String(x24)
        q25Label?.text = String(x25)
        q26Label?.text = String(x26)
        q27Label?.text = String(x27)
        q28Label?.text = String(x28)
        q29Label?.text = String(x29)
        q30Label?.text = String(x30)
        
    }
    
    func calculating() {
        let dateComponents = date.components(separatedBy: ["/"])
        let y1 = Int(dateComponents[2]) ?? 0
        let y2 = Int(dateComponents[0]) ?? 0
        let y3 = Int(dateComponents[1]) ?? 0
        yearOfBirth2 = y1
        yearOfBirth1 = check(theNumberBeingCompared: yearOfBirth2)
        x1 = y2
        x2 = y3
        x3 = check(theNumberBeingCompared: yearOfBirth1)
        x4 = check(theNumberBeingCompared: x1+x2+x3)
        x5 = check(theNumberBeingCompared: x1+x2+x3+x4)
        x6 = check(theNumberBeingCompared: x1+x5)
        x7 = check(theNumberBeingCompared: x1+x6)
        x8 = check(theNumberBeingCompared: x5+x6)
        x9 = check(theNumberBeingCompared: x1+x2)
        x10 = check(theNumberBeingCompared: x5+x9)
        x11 = check(theNumberBeingCompared: x2+x10)
        x12 = check(theNumberBeingCompared: x2+x5)
        x13 = check(theNumberBeingCompared: x2+x12)
        x14 = check(theNumberBeingCompared: x5+x12)
        x15 = check(theNumberBeingCompared: x2+x3)
        x16 = check(theNumberBeingCompared: x5+x15)
        x17 = check(theNumberBeingCompared: x15+x16)
        x18 = check(theNumberBeingCompared: x3+x5)
        x19 = check(theNumberBeingCompared: x3+x18)
        x20 = check(theNumberBeingCompared: x3+x4)
        x21 = check(theNumberBeingCompared: x5+x20)
        x22 = check(theNumberBeingCompared: x20+x21)
        x23 = check(theNumberBeingCompared: x4+x5)
        x24 = check(theNumberBeingCompared: x4+x23)
        x25 = check(theNumberBeingCompared: x1+x4)
        x26 = check(theNumberBeingCompared: x5+x25)
        x27 = check(theNumberBeingCompared: x25+x26)
        x28 = check(theNumberBeingCompared: x18+x23)
        x29 = check(theNumberBeingCompared: x23+x28)
        x30 = check(theNumberBeingCompared: x18+x28)
    }
    
    
    
}
    
    
    
    
//    private lazy var q1Label = infoText.n1Label; private lazy var q16Label = infoText.n1Label
//    private lazy var q2Label = infoText.n1Label; private lazy var q17Label = infoText.n1Label
//    private lazy var q3Label = infoText.n1Label; private lazy var q18Label = infoText.n1Label
//    private lazy var q4Label = infoText.n1Label; private lazy var q19Label = infoText.n1Label
//    private lazy var q5Label = infoText.n1Label; private lazy var q20Label = infoText.n1Label
//    private lazy var q6Label = infoText.n1Label; private lazy var q21Label = infoText.n1Label
//    private lazy var q7Label = infoText.n1Label; private lazy var q22Label = infoText.n1Label
//    private lazy var q8Label = infoText.n1Label; private lazy var q23Label = infoText.n1Label
//    private lazy var q9Label = infoText.n1Label; private lazy var q24Label = infoText.n1Label
//    private lazy var q10Label = infoText.n1Label; private lazy var q25Label = infoText.n1Label
//    private lazy var q11Label = infoText.n1Label; private lazy var q26Label = infoText.n1Label
//    private lazy var q12Label = infoText.n1Label; private lazy var q27Label = infoText.n1Label
//    private lazy var q13Label = infoText.n1Label; private lazy var q28Label = infoText.n1Label
//    private lazy var q14Label = infoText.n1Label; private lazy var q29Label = infoText.n1Label
//    private lazy var q15Label = infoText.n1Label; private lazy var q30Label = infoText.n1Label
//
//    private lazy var m1Label = infoText.n1Label; private lazy var m16Label = infoText.n1Label
//    private lazy var m2Label = infoText.n1Label; private lazy var m17Label = infoText.n1Label
//    private lazy var m3Label = infoText.n1Label; private lazy var m18Label = infoText.n1Label
//    private lazy var m4Label = infoText.n1Label; private lazy var m19Label = infoText.n1Label
//    private lazy var m5Label = infoText.n1Label; private lazy var m20Label = infoText.n1Label
//    private lazy var m6Label = infoText.n1Label; private lazy var m21Label = infoText.n1Label
//    private lazy var m7Label = infoText.n1Label; private lazy var m22Label = infoText.n1Label
//    private lazy var m8Label = infoText.n1Label; private lazy var m23Label = infoText.n1Label
//    private lazy var m9Label = infoText.n1Label; private lazy var m24Label = infoText.n1Label
//    private lazy var m10Label = infoText.n1Label; private lazy var m25Label = infoText.n1Label
//    private lazy var m11Label = infoText.n1Label; private lazy var m26Label = infoText.n1Label
//    private lazy var m12Label = infoText.n1Label; private lazy var m27Label = infoText.n1Label
//    private lazy var m13Label = infoText.n1Label; private lazy var m28Label = infoText.n1Label
//    private lazy var m14Label = infoText.n1Label; private lazy var m29Label = infoText.n1Label
//    private lazy var m15Label = infoText.n1Label; private lazy var m30Label = infoText.n1Label
//
//    private lazy var labelStackView1 = infoText.labelStackView; private lazy var labelStackView16 = infoText.labelStackView
//    private lazy var labelStackView2 = infoText.labelStackView; private lazy var labelStackView17 = infoText.labelStackView
//    private lazy var labelStackView3 = infoText.labelStackView; private lazy var labelStackView18 = infoText.labelStackView
//    private lazy var labelStackView4 = infoText.labelStackView; private lazy var labelStackView19 = infoText.labelStackView
//    private lazy var labelStackView5 = infoText.labelStackView; private lazy var labelStackView20 = infoText.labelStackView
//    private lazy var labelStackView6 = infoText.labelStackView; private lazy var labelStackView21 = infoText.labelStackView
//    private lazy var labelStackView7 = infoText.labelStackView; private lazy var labelStackView22 = infoText.labelStackView
//    private lazy var labelStackView8 = infoText.labelStackView; private lazy var labelStackView23 = infoText.labelStackView
//    private lazy var labelStackView9 = infoText.labelStackView; private lazy var labelStackView24 = infoText.labelStackView
//    private lazy var labelStackView10 = infoText.labelStackView; private lazy var labelStackView25 = infoText.labelStackView
//    private lazy var labelStackView11 = infoText.labelStackView; private lazy var labelStackView26 = infoText.labelStackView
//    private lazy var labelStackView12 = infoText.labelStackView; private lazy var labelStackView27 = infoText.labelStackView
//    private lazy var labelStackView13 = infoText.labelStackView; private lazy var labelStackView28 = infoText.labelStackView
//    private lazy var labelStackView14 = infoText.labelStackView; private lazy var labelStackView29 = infoText.labelStackView
//    private lazy var labelStackView15 = infoText.labelStackView; private lazy var labelStackView30 = infoText.labelStackView
//
//
//    private lazy var labelStackViewFirst = infoText.labelStackView
//    private lazy var labelStackViewSecond = infoText.labelStackView
//    private lazy var labelStackViewThird = infoText.labelStackView
//    private lazy var labelStackViewForth = infoText.labelStackView
//    private lazy var labelStackViewFifth = infoText.labelStackView
//
//    private lazy var mainlabelStackView = infoText.mainlabelStackView1
//
//
//
//    var yearOfBirth1: Int = 0
//    var yearOfBirth2: Int = 0
//    var x1: Int = 4
//    var x2: Int = 7
//    var x3: Int = 9
//    var x4: Int = 0
//    var x5: Int = 0
//    var x6: Int = 0
//    var x7: Int = 0
//    var x8: Int = 0
//    var x9: Int = 0
//    var x10: Int = 0
//    var x11: Int = 0
//    var x12: Int = 0
//    var x13: Int = 0
//    var x14: Int = 0
//    var x15: Int = 0
//    var x16: Int = 0
//    var x17: Int = 0
//    var x18: Int = 0
//    var x19: Int = 0
//    var x20: Int = 0
//    var x21: Int = 0
//    var x22: Int = 0
//    var x23: Int = 0
//    var x24: Int = 0
//    var x25: Int = 0
//    var x26: Int = 0
//    var x27: Int = 0
//    var x28: Int = 0
//    var x29: Int = 0
//    var x30: Int = 0
//
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        q1Label.text = String(x1)
//        q2Label.text = String(x2)
//        q3Label.text = String(x3)
//        q4Label.text = String(x4)
//        q5Label.text = String(x5)
//        q6Label.text = String(x6)
//        q7Label.text = String(x7)
//        q8Label.text = String(x8)
//        q9Label.text = String(x9)
//        q10Label.text = String(x10)
//        q11Label.text = String(x11)
//        q12Label.text = String(x12)
//        q13Label.text = String(x13)
//        q14Label.text = String(x14)
//        q15Label.text = String(x15)
//        q16Label.text = String(x16)
//        q17Label.text = String(x17)
//        q18Label.text = String(x18)
//        q19Label.text = String(x19)
//        q20Label.text = String(x20)
//        q21Label.text = String(x21)
//        q22Label.text = String(x22)
//        q23Label.text = String(x23)
//        q24Label.text = String(x24)
//        q25Label.text = String(x25)
//        q26Label.text = String(x26)
//        q27Label.text = String(x27)
//        q28Label.text = String(x28)
//        q29Label.text = String(x29)
//        q30Label.text = String(x30)
//
//        calculating()
//        setUpView()
//    }
//
//    private func setUpView() {
//        self.view.addSubview(mainlabelStackView)
//        self.mainlabelStackView.addArrangedSubview(labelStackViewFirst)
//        self.mainlabelStackView.addArrangedSubview(labelStackViewSecond)
//        self.mainlabelStackView.addArrangedSubview(labelStackViewThird)
//        self.mainlabelStackView.addArrangedSubview(labelStackViewForth)
//        self.mainlabelStackView.addArrangedSubview(labelStackViewFifth)
//
//        self.labelStackViewFirst.addArrangedSubview(labelStackView1)
//        self.labelStackViewFirst.addArrangedSubview(labelStackView2)
//        self.labelStackViewFirst.addArrangedSubview(labelStackView3)
//        self.labelStackViewFirst.addArrangedSubview(labelStackView4)
//        self.labelStackViewFirst.addArrangedSubview(labelStackView5)
//        self.labelStackViewFirst.addArrangedSubview(labelStackView6)
////
//        self.labelStackViewSecond.addArrangedSubview(labelStackView7)
//        self.labelStackViewSecond.addArrangedSubview(labelStackView8)
//        self.labelStackViewSecond.addArrangedSubview(labelStackView9)
//        self.labelStackViewSecond.addArrangedSubview(labelStackView10)
//        self.labelStackViewSecond.addArrangedSubview(labelStackView11)
//        self.labelStackViewSecond.addArrangedSubview(labelStackView12)
////
////        self.labelStackViewThird.addArrangedSubview(labelStackView13)
////        self.labelStackViewThird.addArrangedSubview(labelStackView14)
////        self.labelStackViewThird.addArrangedSubview(labelStackView15)
////        self.labelStackViewThird.addArrangedSubview(labelStackView16)
////        self.labelStackViewThird.addArrangedSubview(labelStackView17)
////        self.labelStackViewThird.addArrangedSubview(labelStackView18)
////
////        self.labelStackViewForth.addArrangedSubview(labelStackView19)
////        self.labelStackViewForth.addArrangedSubview(labelStackView20)
////        self.labelStackViewForth.addArrangedSubview(labelStackView21)
////        self.labelStackViewForth.addArrangedSubview(labelStackView22)
////        self.labelStackViewForth.addArrangedSubview(labelStackView23)
////        self.labelStackViewForth.addArrangedSubview(labelStackView24)
////
////        self.labelStackViewFifth.addArrangedSubview(labelStackView25)
////        self.labelStackViewFifth.addArrangedSubview(labelStackView26)
////        self.labelStackViewFifth.addArrangedSubview(labelStackView27)
////        self.labelStackViewFifth.addArrangedSubview(labelStackView28)
////        self.labelStackViewFifth.addArrangedSubview(labelStackView29)
////        self.labelStackViewFifth.addArrangedSubview(labelStackView30)
////
//        self.labelStackView1.addArrangedSubview(q1Label)
//        self.labelStackView1.addArrangedSubview(m1Label)
//
//        self.labelStackView2.addArrangedSubview(q2Label)
//        self.labelStackView2.addArrangedSubview(m2Label)
//
//        self.labelStackView3.addArrangedSubview(q3Label)
//        self.labelStackView3.addArrangedSubview(m3Label)
//
//        self.labelStackView4.addArrangedSubview(q4Label)
//        self.labelStackView4.addArrangedSubview(m4Label)
//
//        self.labelStackView5.addArrangedSubview(q5Label)
//        self.labelStackView5.addArrangedSubview(m5Label)
//
//        self.labelStackView6.addArrangedSubview(q6Label)
//        self.labelStackView6.addArrangedSubview(m6Label)
//
//        self.labelStackView7.addArrangedSubview(q7Label)
//        self.labelStackView7.addArrangedSubview(m7Label)
//
//        self.labelStackView8.addArrangedSubview(q8Label)
//        self.labelStackView8.addArrangedSubview(m8Label)
//
//        self.labelStackView9.addArrangedSubview(q9Label)
//        self.labelStackView9.addArrangedSubview(m9Label)
//
//        self.labelStackView10.addArrangedSubview(q10Label)
//        self.labelStackView10.addArrangedSubview(m10Label)
//
//        self.labelStackView11.addArrangedSubview(q11Label)
//        self.labelStackView11.addArrangedSubview(m11Label)
//
//        self.labelStackView12.addArrangedSubview(q12Label)
//        self.labelStackView12.addArrangedSubview(m12Label)
////
////        self.labelStackView13.addArrangedSubview(q13Label)
////        self.labelStackView13.addArrangedSubview(m13Label)
////
////        self.labelStackView14.addArrangedSubview(q14Label)
////        self.labelStackView14.addArrangedSubview(m14Label)
////
////        self.labelStackView15.addArrangedSubview(q15Label)
////        self.labelStackView15.addArrangedSubview(m15Label)
////
////        self.labelStackView16.addArrangedSubview(q16Label)
////        self.labelStackView16.addArrangedSubview(m16Label)
////
////        self.labelStackView17.addArrangedSubview(q17Label)
////        self.labelStackView17.addArrangedSubview(m17Label)
////
////        self.labelStackView18.addArrangedSubview(q18Label)
////        self.labelStackView18.addArrangedSubview(m18Label)
////
////        self.labelStackView19.addArrangedSubview(q19Label)
////        self.labelStackView19.addArrangedSubview(m19Label)
////
////        self.labelStackView20.addArrangedSubview(q20Label)
////        self.labelStackView20.addArrangedSubview(m20Label)
////
////        self.labelStackView21.addArrangedSubview(q21Label)
////        self.labelStackView21.addArrangedSubview(m21Label)
////
////        self.labelStackView22.addArrangedSubview(q22Label)
////        self.labelStackView22.addArrangedSubview(m22Label)
////
////        self.labelStackView23.addArrangedSubview(q23Label)
////        self.labelStackView23.addArrangedSubview(m23Label)
////
////        self.labelStackView24.addArrangedSubview(q24Label)
////        self.labelStackView24.addArrangedSubview(m24Label)
////
////        self.labelStackView25.addArrangedSubview(q25Label)
////        self.labelStackView25.addArrangedSubview(m25Label)
////
////        self.labelStackView26.addArrangedSubview(q26Label)
////        self.labelStackView26.addArrangedSubview(m26Label)
////
////        self.labelStackView27.addArrangedSubview(q27Label)
////        self.labelStackView27.addArrangedSubview(m27Label)
////
////        self.labelStackView28.addArrangedSubview(q28Label)
////        self.labelStackView28.addArrangedSubview(m28Label)
////
////        self.labelStackView29.addArrangedSubview(q29Label)
////        self.labelStackView29.addArrangedSubview(m29Label)
////
////        self.labelStackView30.addArrangedSubview(q30Label)
////        self.labelStackView30.addArrangedSubview(m30Label)
//
//        let topStackViewConstraint = self.mainlabelStackView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 90)
//        let trailingStackViewConstraint = self.mainlabelStackView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -16)
//        let leadingStackViewConstraint = self.mainlabelStackView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 16)
//        let heightStackViewConstraint = self.mainlabelStackView.heightAnchor.constraint(equalToConstant: 300)
//
//        let label1HeightAnchor = self.q1Label.heightAnchor.constraint(equalToConstant: 15)
//        let label2HeightAnchor = self.m1Label.heightAnchor.constraint(equalToConstant: 15)
//
//
//        NSLayoutConstraint.activate([topStackViewConstraint, trailingStackViewConstraint, leadingStackViewConstraint, heightStackViewConstraint, label1HeightAnchor, label2HeightAnchor ].compactMap({$0}))
//
//
//
//    }
//
//    func check(theNumberBeingCompared: Int) -> Int {
//        var z = theNumberBeingCompared
//        if z > 22 {
//            z = String(theNumberBeingCompared).compactMap{$0.wholeNumberValue}.reduce(0, +)
//        }
//        return z
//    }
//
//    private func calculating() {
////        let dateComponents = date.components(separatedBy: ["/"])
//        yearOfBirth2 = 1989
////        yearOfBirth2 = Int(dateComponents[2]) ?? 0
//        yearOfBirth1 = check(theNumberBeingCompared: yearOfBirth2)
//        x1 = 4
//        x2 = 7
////        x1 = Int(dateComponents[0]) ?? 0
////        x2 = Int(dateComponents[1]) ?? 0
//        x3 = check(theNumberBeingCompared: yearOfBirth1)
//        x4 = check(theNumberBeingCompared: x1+x2+x3)
//        x5 = check(theNumberBeingCompared: x1+x2+x3+x4)
//        x6 = check(theNumberBeingCompared: x1+x5)
//        x7 = check(theNumberBeingCompared: x1+x6)
//        x8 = check(theNumberBeingCompared: x5+x6)
//        x9 = check(theNumberBeingCompared: x1+x2)
//        x10 = check(theNumberBeingCompared: x5+x9)
//        x11 = check(theNumberBeingCompared: x2+x10)
//        x12 = check(theNumberBeingCompared: x2+x5)
//        x13 = check(theNumberBeingCompared: x2+x12)
//        x14 = check(theNumberBeingCompared: x5+x12)
//        x15 = check(theNumberBeingCompared: x2+x3)
//        x16 = check(theNumberBeingCompared: x5+x15)
//        x17 = check(theNumberBeingCompared: x15+x16)
//        x18 = check(theNumberBeingCompared: x3+x5)
//        x19 = check(theNumberBeingCompared: x3+x18)
//        x20 = check(theNumberBeingCompared: x3+x4)
//        x21 = check(theNumberBeingCompared: x5+x20)
//        x22 = check(theNumberBeingCompared: x20+x21)
//        x23 = check(theNumberBeingCompared: x4+x5)
//        x24 = check(theNumberBeingCompared: x4+x23)
//        x25 = check(theNumberBeingCompared: x1+x4)
//        x26 = check(theNumberBeingCompared: x5+x25)
//        x27 = check(theNumberBeingCompared: x25+x26)
//        x28 = check(theNumberBeingCompared: x18+x23)
//        x29 = check(theNumberBeingCompared: x23+x28)
//        x30 = check(theNumberBeingCompared: x18+x28)
//    }
//
//
//
//}
