//
//  File.swift
//  
//
//  Created by Simon Deutsch on 09.02.23.
//

import Foundation
import UIKit
import SwiftUI

public class TEstViewController: UIViewController {

    @IBOutlet private weak var lbl: UILabel!

    public override func viewDidLoad() {
        lbl.text = "TEst it!"
//        lbl.textColor = UIColor(named: "TEstMain", in: .module, compatibleWith: nil)
        lbl.textColor = UIColor(named: "TEstMain")
        lbl.text = "TEst it!"
    }

    public override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nil, bundle: Bundle.module)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

public struct TEstView: View {

    public init() { }

    public var body: some View {
        Text("TEst this!")
            .foregroundColor(Color.testMainFail)
    }
}

extension Color {
    static let testMain = Color("TEstMain", bundle: .module)

    static let testMainFail = Color("TEstMain")
}
