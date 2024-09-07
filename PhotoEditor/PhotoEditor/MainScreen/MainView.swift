//
//  MainView.swift
//  PhotoEditor
//
//  Created by Damir Nuriev on 3.09.2024.
//

import UIKit
import SnapKit

final class MainView: UIViewController {
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Welcome to Photo Editor!"
        label.font = PEFonts.titleBold2
        label.textAlignment = .center
        label.textColor = PEColors.gray900
        label.numberOfLines = .zero
        return label
    }()
    
    private let subtitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Edit your photos simply and quickly."
        label.font = PEFonts.titleRegular
        label.textAlignment = .center
        label.textColor = PEColors.gray900
        label.numberOfLines = .zero
        return label
    }()
    
    private let createButton: PEButton = {
        let button = PEButton(title: "Start editing")
        button.buttonState = .active
        
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        viewInitialSettings()
    }
    
    private func viewInitialSettings() {
        view.backgroundColor = PEColors.primaryWhite
        setupSubviews()
    }
    
    private func setupSubviews() {
        view.addSubviews(titleLabel,
                         subtitleLabel,
                         createButton)
        
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(UIConstants.titleLabelTopOffset)
            make.leading.trailing.equalTo(view.layoutMarginsGuide)
        }
        
        subtitleLabel.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(UIConstants.subtitleLabelTopOffset)
            make.leading.trailing.equalTo(view.layoutMarginsGuide)
        }
        
        createButton.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.bottom.equalTo(view.safeAreaLayoutGuide).inset(UIConstants.createButtonBottomOffset)
            make.height.equalTo(UIConstants.createButtonHeight)
            make.width.equalTo(UIConstants.createButtonWidth)
        }
    }
}

//MARK: - Constants
fileprivate enum UIConstants {
    static let titleLabelTopOffset: CGFloat = 30.0
    
    static let subtitleLabelTopOffset: CGFloat = 20.0
    
    static let createButtonBottomOffset: CGFloat = 50.0
    static let createButtonHeight: CGFloat = 50.0
    static let createButtonWidth: CGFloat = 150
}
