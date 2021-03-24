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
        
        // MARK: - Classes
        self._timeUnitExamples()
        
        // MARK: - Enums
        self._appVersionExamples()
        self._enviromentExamples()
        self._getScreenOffsetsExamples()
    }
    
    // MARK: - Classes
    private func _timeUnitExamples() {
        let timeUnit1 = TimeUnit(hours: 2.5)
        let timeUnit2 = TimeUnit(hours: 3)
        let sum = timeUnit1 + timeUnit2
        
        print("TimeUnit")
        print("TimeUnit(hours: 2.5):", timeUnit1)
        print("+ TimeUnit(hours: 3):", sum)
        print("-:", -sum)
        
        print("\n")
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

