
import JavaScriptCore


public protocol Constraint {
    var cassowary: Cassowary { get }
    var constraintValue: JSValue { get }
    var strength: Strength { get set }
}


extension Constraint {
    public var strength: Strength {
        get {
            let value = constraintValue.valueForProperty("strength")
            return Strength.fromCassowary(cassowary, value: value)
        }
        set {
            let value = newValue.fromCassowary(cassowary)
            constraintValue.setValue(value, forProperty: "strength")
        }
    }
}
