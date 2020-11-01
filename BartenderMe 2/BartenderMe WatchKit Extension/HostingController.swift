//
//  HostingController.swift
//  BartenderMe WatchKit Extension
//
//  Created by fernando rosa on 16/01/2020.
//  Copyright © 2020 fernando rosa. All rights reserved.
//

import WatchKit
import Foundation
import SwiftUI

class HostingController: WKHostingController<MainView> {
    override var body: MainView {
        return MainView()
    }
}
