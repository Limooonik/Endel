import SwiftUI
import WidgetKit
import AppIntents
import Limooonik

struct EndelWidget: Widget {
    let kind: String = "EndelWidget"
    let config = ChangeSettings.current
    
    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Limooonik.Provider(config: config)) { e in
            Button(intent: ReloadEndelIntent()) {
                Limooonik.EndelView(e: e)
            }
            .buttonStyle(.plain)
        }
        .configurationDisplayName("Endel Animation 1")
        .description("First animated widget")
        .supportedFamilies([.systemSmall, .systemMedium, .systemLarge])
    }
}

struct EndelWidgetTwo: Widget {
    let kind: String = "EndelWidgetTwo"
    let config = ChangeSettingsTwo.current
    
    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Limooonik.ProviderTwo(config: config)) { e in
            Button(intent: ReloadEndelIntentTwo()) {
                Limooonik.EndelViewTwo(e: e)
            }
            .buttonStyle(.plain)
        }
        .configurationDisplayName("Endel Animation 2")
        .description("Second animated widget")
        .supportedFamilies([.systemSmall, .systemMedium, .systemLarge])
    }
}

struct ReloadEndelIntent: AppIntent {
    static var title: LocalizedStringResource = "Reload Animation 1"
    static var openAppWhenRun: Bool = false
    
    init() {}
    
    func perform() async throws -> some IntentResult {
        WidgetCenter.shared.reloadAllTimelines()
        return .result()
    }
}

struct ReloadEndelIntentTwo: AppIntent {
    static var title: LocalizedStringResource = "Reload Animation 2"
    static var openAppWhenRun: Bool = false
    
    init() {}
    
    func perform() async throws -> some IntentResult {
        WidgetCenter.shared.reloadAllTimelines()
        return .result()
    }
}
