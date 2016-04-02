
import JavaScriptCore


public enum InequalityOperator: String {
    case LessOrEqual = "LEQ"
    case GreaterOrEqual = "GEQ"
}


// TODO: strength, weight

public struct Inequality: Constraint {
    public let cassowary: Cassowary
    internal let inequality: JSValue

    init(cassowary: Cassowary, left: Expression, op: InequalityOperator, right: Expression,
         strength: Strength?)
    {
        self.cassowary = cassowary
        let opValue = cassowary.cassowary.valueForProperty(op.rawValue)
        var arguments = [left.expression, opValue, right.expression]
        if let strength = strength {
            arguments.append(strength.fromCassowary(cassowary))
        }
        self.inequality = cassowary.cassowary.objectForKeyedSubscript("Inequality")
            .constructWithArguments(arguments)
    }

    public var constraintValue: JSValue {
        return self.inequality
    }
}
