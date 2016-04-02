
import JavaScriptCore


public struct Expression {
    internal let cassowary: Cassowary
    internal let expression: JSValue

    private init(cassowary: Cassowary, expression: JSValue) {
        self.cassowary = cassowary
        self.expression = expression
    }

    public init(cassowary: Cassowary, constant: Double) {
        self.init(cassowary: cassowary,
                  expression: cassowary.cassowary.objectForKeyedSubscript("Expression")
                    .objectForKeyedSubscript("fromConstant")
                    .callWithArguments([constant]))
    }

    public init(cassowary: Cassowary, variable: Variable) {
        self.init(cassowary: cassowary,
                  expression: cassowary.cassowary.objectForKeyedSubscript("Expression")
                    .objectForKeyedSubscript("fromVariable")
                    .callWithArguments([variable.variable]))
    }

    private func invokeOperation(methodName: String, expression other: Expression) -> Expression {
        return Expression(cassowary: cassowary,
                          expression: expression
                            .invokeMethod(methodName, withArguments: [other.expression]))
    }

    public func plus(other: Expression) -> Expression {
        return invokeOperation("plus", expression: other)
    }

    public func minus(other: Expression) -> Expression {
        return invokeOperation("minus", expression: other)
    }

    public func times(other: Expression) -> Expression {
        return invokeOperation("times", expression: other)
    }

    public func divide(other: Expression) -> Expression {
        return invokeOperation("divide", expression: other)
    }
}
