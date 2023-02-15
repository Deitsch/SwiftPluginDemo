//
//  ViewController.swift
//  TEstDemo
//
//  Created by Simon Deutsch on 09.02.23.
//

import UIKit
import MyLibrary
import SwiftUI

class ViewController: UIViewController {

    @IBOutlet private weak var containerView: UIView!

    let testView = TEstViewController()
    let testViewSwiftUI = TEstView()

    override func viewDidLoad() {
        super.viewDidLoad()
//        containerView.isHidden = true
//        view.addSubview(testView.view)

        let childView = UIHostingController(rootView: testViewSwiftUI)
        addChild(childView)
        childView.view.frame = containerView.bounds
        containerView.addSubview(childView.view)
        childView.didMove(toParent: self)
    }
}
