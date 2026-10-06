import Foundation
public class AdManager {
    public static let shared = AdManager()
    public var isAdRemoved: Bool {
        get { UserDefaults.standard.bool(forKey: "isAdRemoved") }
        set { UserDefaults.standard.set(newValue, forKey: "isAdRemoved") }
    }
    public func shouldShowAds() -> Bool { return !isAdRemoved }
    public func removeAds() { isAdRemoved = true }
    public func restoreAds() { isAdRemoved = false }
}
