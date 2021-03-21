//
//  ViewController.swift
//  DPLibrary
//
//  Created by Dmitriy Polyakov on 10/08/2020.
//  Copyright (c) 2020 Dmitriy Polyakov. All rights reserved.
//

import UIKit
import DPLibrary

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: - Enums
        self._appVersionExamples()
        self._enviromentExamples()
        self._getScreenOffsetsExamples()
    }
    
    // MARK: - Enums
    private func _appVersionExamples() {
        print("AppVersion")
        print("full:", AppVersion.full ?? "nil")
        print("short:", AppVersion.short ?? "nil")
        print("buildNumber:", AppVersion.buildNumber ?? "nil")
        print("\n")
    }
    
    private func _enviromentExamples() {
        print("Enviroment")
        print("current:", Environment.current)
        print("\n")
    }
    
    private func _getScreenOffsetsExamples() {
        print("GetScreenOffsets")
        print("HeightNavigationBar:", self.getScreenOffsets(.heightNavigationBar))
        print("HeightStatusBar:", self.getScreenOffsets(.heightStatusBar))
        print("HeightTabBar:", self.getScreenOffsets(.heightTabBar))
        print("SafeAreaInsetsBottom:", self.getScreenOffsets(.safeAreaInsetsBottom))
        print("SafeAreaInsetsTop:", self.getScreenOffsets(.safeAreaInsetsTop))
        print("SumTopOffsets:", self.getScreenOffsets(.sumTopOffsets))
        print("\n")
    }

}

