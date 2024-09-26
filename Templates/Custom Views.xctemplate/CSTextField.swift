//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

//MARK: USAGE
//func configureTxtField() {
//    view.addSubview(txtField)
//    txtField.delegate = self
//    txtField.translatesAutoresizingMaskIntoConstraints = false
//    NSLayoutConstraint.activate([
//        txtField.topAnchor.constraint(equalTo: view.centerYAnchor, constant: 48),
//        txtField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
//        txtField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
//        txtField.heightAnchor.constraint(equalToConstant: 50)
//    ])
//}


import UIKit

class CSTextField: UITextField {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(with placeholder:String){
        super.init(frame: .zero)
        self.placeholder = placeholder
        configure()
    }
    
    private func configure() {
        translatesAutoresizingMaskIntoConstraints = false
        
        layer.cornerRadius                        = 10
        layer.borderWidth                         = 1
        layer.borderColor                         = UIColor.systemGray4.cgColor
        
        textColor                                 = .label // black- light mode  white- dark mode
        textAlignment                             = .center
        tintColor                                 = .label
        adjustsFontSizeToFitWidth                 = true
        minimumFontSize                           = 12
        font                                      = UIFont.preferredFont(forTextStyle: .title2) // title2 font
        
        backgroundColor                           = .tertiarySystemBackground
        autocorrectionType                        = .no
        
        
        /// you can use this line if  you want.
//        placeholder                               = "Enter a username"
        returnKeyType                             = .go
    }
}
