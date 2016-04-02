
import JavaScriptCore


// TODO: strength, weight

public struct Equation: Constraint {
    public let cassowary: Cassowary
    internal let equation: JSValue

    public init(cassowary: Cassowary, left: Expression, right: Expression, strength: Strength?) {
        self.cassowary = cassowary
        var arguments: [AnyObject] = [left.expression, right.expression]
        if let strength = strength {
            arguments.append(strength.fromCassowary(cassowary))
        }
        self.equation = cassowary.cassowary.objectForKeyedSubscript("Equation")
            .constructWithArguments(arguments)
    }

    public var constraintValue: JSValue {
        return self.equation
    }
}
