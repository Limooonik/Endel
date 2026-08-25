import SwiftUI
import Limooonik

struct ChangeSettings {
    static var current: Limooonik.EndelConfig {
        var config = Limooonik.EndelConfig()
        
        // Background color
        config.bgColor = .black
        
        // Line thickness
        config.strokeWidth = 20
        
        // Line color
        config.strokeColor = Color(red: 255 / 255, green: 240 / 255, blue: 240 / 255)
        
        return config
    }
}

struct ChangeSettingsTwo {
    static var current: Limooonik.EndelConfigTwo {
        var config = Limooonik.EndelConfigTwo()
        
        // Background color
        config.bgColor = .black
        
        // Head color
        config.colorHead = .white
        
        // Ball color
        config.colorBall = Color(red: 255 / 255, green: 240 / 255, blue: 240 / 255)
        
        // Ball scale
        config.scaleBall = 0.3
        
        return config
    }
}
