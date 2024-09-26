//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

//MARK: USAGE
//func configureAvatarImageView() {
//    view.addSubview(avatarImageView)
//    avatarImageView.translatesAutoresizingMaskIntoConstraints = false
//    avatarImageView.image = UIImage(systemName: "person.circle.fill")
//    avatarImageView.tintColor = .systemMint
//
//    NSLayoutConstraint.activate([
//        avatarImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 120),
//        avatarImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//        avatarImageView.widthAnchor.constraint(equalToConstant: 100),
//        avatarImageView.heightAnchor.constraint(equalToConstant: 100)
//    ])
//}


import UIKit

class CSAvatarImageView: UIImageView {
    
    let placeholderImage = UIImage(systemName:"person.crop.circle")
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        layer.cornerRadius  = 10
        clipsToBounds       = true
        image               = placeholderImage
        translatesAutoresizingMaskIntoConstraints = false
    }
}
