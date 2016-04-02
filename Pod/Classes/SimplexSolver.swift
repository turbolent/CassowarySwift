
import JavaScriptCore


public struct SimplexSolver {
    internal let cassowary: Cassowary
    internal let solver: JSValue

    public init(cassowary: Cassowary) {
        self.cassowary = cassowary
        self.solver = cassowary.cassowary.valueForProperty("SimplexSolver")
            .constructWithArguments([])
    }

    private func addConstraint(value: JSValue) {
        solver.invokeMethod("addConstraint", withArguments: [value])
    }

    public func addConstraint(constraint: Constraint) {
        addConstraint(constraint.constraintValue)
    }
}
