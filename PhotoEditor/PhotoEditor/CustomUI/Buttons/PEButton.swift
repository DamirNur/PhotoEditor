//
//  PEButton.swift
//  PhotoEditor
//
//  Created by Damir Nuriev on 5.09.2024.
//

import UIKit

enum CustomButtonState {
    case active
    case inActive
}

class PEButton: UIButton {
    
    private var activeBackground: UIColor = PEColors.primaryBlue!
    private var inActiveBackground: UIColor = PEColors.secondaryArctic!
    private var activeTitleColor: UIColor = PEColors.primaryWhite!
    private var inActiveTitleColor: UIColor = PEColors.gray700!
    private var fontForButton: UIFont = PEFonts.titleRegular!
    
    var buttonState: CustomButtonState = .active {
        didSet {
            updateAppearance(for: buttonState)
        }
    }
    
    init(title: String) {
        super.init(frame: .zero)
        setTitle(title, for: .normal)
        updateAppearance(for: .active)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func updateAppearance(for state: CustomButtonState) {
        isEnabled = state != .inActive
        backgroundColor = {
            switch state {
            case .active:
                return activeBackground
            case .inActive:
                return inActiveBackground
            }
        }()
        
        setTitleColor(state == .inActive ? inActiveTitleColor : activeTitleColor, for: .normal)
        titleLabel?.font = fontForButton
        layer.cornerRadius = 10
    }
}
