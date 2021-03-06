//
//  UIView.swift
//  Extended
//
//  Created by Amir Shayegh on 2018-09-19.
//

import Foundation
import UIKit

extension UIView {

    // Find parent vc
    var parentViewController: UIViewController? {
        var parentResponder: UIResponder? = self
        while parentResponder != nil {
            parentResponder = parentResponder!.next
            if parentResponder is UIViewController {
                return parentResponder as! UIViewController?
            }
        }
        return nil
    }

    // Load a nib
    class func fromNib<T: UIView>() -> T {
        return Bundle.main.loadNibNamed(String(describing: T.self), owner: nil, options: nil)![0] as! T
    }

}
