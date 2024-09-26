//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

//MARK: USAGE
//func configureLabelTxt() {
//    view.addSubview(labelTxt!)
//    labelTxt!.translatesAutoresizingMaskIntoConstraints = false
//    labelTxt!.text = "Custom Label Text"
//
//    NSLayoutConstraint.activate([
//        labelTxt!.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//        labelTxt!.centerYAnchor.constraint(equalTo: view.centerYAnchor),
//        labelTxt!.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
//        labelTxt!.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
//        labelTxt!.heightAnchor.constraint(equalToConstant: 40)
//    ])
//}


import UIKit

class CSTitleLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    required init?(textAlignment: NSTextAlignment, fontSize: CGFloat) {
        super.init(frame: .zero)
        self.textAlignment = textAlignment
        self.font = UIFont.systemFont(ofSize: fontSize, weight: .bold)
        configure()
    }
    
    private func configure(){
        textColor                                 = .label
        adjustsFontSizeToFitWidth                 = true
        minimumScaleFactor                        = 0.9
        lineBreakMode                             = .byTruncatingTail
        translatesAutoresizingMaskIntoConstraints = false
    }
}
