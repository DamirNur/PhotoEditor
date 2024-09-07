//
//  UIView+Extension.swift
//  PhotoEditor
//
//  Created by Damir Nuriev on 7.09.2024.
//

import UIKit

extension UIView {
    static var identifier: String {
        String(describing: Self.self)
    }

    func toAutoLayout() {
        translatesAutoresizingMaskIntoConstraints = false
    }

    func addSubviews(_ subviews: UIView...) {
        subviews.forEach { addSubview($0) }
    }
}
