//
//  GFButton.swift
//  GHFollowers
//
//  Created by Yekta Okdan on 4.06.2024.
//

//MARK: USAGE
//func configureCallToActionButton() {
//    view.addSubview(callToActionButton)
//    callToActionButton.addTarget(self, action: #selector(configureCallToActionButtonTapped), for: .touchUpInside)
//    NSLayoutConstraint.activate([
//        callToActionButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -40),
//        callToActionButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
//        callToActionButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
//        callToActionButton.heightAnchor.constraint(equalToConstant: 50)
//    ])
//}
//@objc func configureCallToActionButtonTapped(){
//    //some code here
//}


import UIKit

class CSButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    init(backgroundColor:UIColor, title:String){
        super.init(frame: .zero)
        self.backgroundColor = backgroundColor
        self.setTitle(title, for: .normal)
        configure()
    }
    private func configure(){
        layer.cornerRadius                        = 10
        setTitleColor(.white, for: .normal)
        titleLabel?.font                          = UIFont.preferredFont(forTextStyle: .headline)
        translatesAutoresizingMaskIntoConstraints = false
    }
}
