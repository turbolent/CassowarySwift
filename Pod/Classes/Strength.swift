
import JavaScriptCore


public enum Strength: String {
    case Weak = "weak"
    case Medium = "medium"
    case Strong = "strong"
    case Required = "required"

    internal static func fromCassowary(cassowary: Cassowary, value: JSValue) -> Strength {
        // TODO:
        return .Weak
    }

    internal func fromCassowary(cassowary: Cassowary) -> JSValue {
        return cassowary.cassowary.valueForProperty("Strength")
            .valueForProperty(self.rawValue)
    }
}