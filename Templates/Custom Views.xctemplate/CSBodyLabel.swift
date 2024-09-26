//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

//MARK: USAGE
//func configureBodyLabelTxt() {
//    view.addSubview(bodyLabelTxt!)
//    bodyLabelTxt!.translatesAutoresizingMaskIntoConstraints = false
//    bodyLabelTxt!.text = "Custom Label Text"
//
//    NSLayoutConstraint.activate([
//        bodyLabelTxt!.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//        bodyLabelTxt!.centerYAnchor.constraint(equalTo: labelTxt?.bottomAnchor ?? view.centerYAnchor),
//        bodyLabelTxt!.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
//        bodyLabelTxt!.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
//        bodyLabelTxt!.heightAnchor.constraint(equalToConstant: 40)
//    ])
//}


import UIKit

class CSBodyLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    required init?(textAlignment: NSTextAlignment) {
        super.init(frame: .zero)
        self.textAlignment = textAlignment
        configure()
    }
    
    private func configure(){
        textColor                                 = .secondaryLabel
        font                                      = UIFont.preferredFont(forTextStyle: .body)
        adjustsFontSizeToFitWidth                 = true
        minimumScaleFactor                        = 0.75
        lineBreakMode                             = .byWordWrapping
        translatesAutoresizingMaskIntoConstraints = false
    }
}
