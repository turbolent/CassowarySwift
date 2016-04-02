
import JavaScriptCore


public class Cassowary {

    private let context = JSContext()
    internal let cassowary: JSValue

    public var debug = false {
        didSet {
            for setting in ["debug", "trace", "verbose", "traceAdded", "GC"] {
                cassowary.setValue(debug, forProperty: setting)
            }
        }
    }

    public var exceptionHandler: (JSValue! -> Void)?

    public init?() {
        let bundle = NSBundle(forClass: Cassowary.self)
        guard let scriptPath = bundle.pathForResource("cassowary", ofType: "js"),
            script = try? String(contentsOfFile: scriptPath, encoding: NSUTF8StringEncoding)
            else { return nil }

        context.evaluateScript(script)
        guard let c = context.objectForKeyedSubscript("c") else { return nil }
        self.cassowary = c

        context.exceptionHandler = { [weak self] context, exception in
            self?.exceptionHandler?(exception)
        }
    }

    public func newSimplexSolver() -> SimplexSolver {
        return SimplexSolver(cassowary: self)
    }

    public func newVariable(name: String? = nil, value: Double? = nil) -> Variable {
        return Variable(cassowary: self, name: name, value: value)
    }

    public func newExpression(constant constant: Double) -> Expression {
        return Expression(cassowary: self, constant: constant)
    }

    public func newExpression(variable variable: Variable) -> Expression {
        return Expression(cassowary: self, variable: variable)
    }

    public func newEquation(left: Expression, _ right: Expression,
                     strength: Strength? = nil) -> Equation
    {
        return Equation(cassowary: self, left: left, right: right,
                        strength: strength)
    }

    public func newInequality(left: Expression, _ op: InequalityOperator, _ right: Expression,
                       strength: Strength? = nil) -> Inequality
    {
        return Inequality(cassowary: self, left: left, op: op, right: right,
                          strength: strength)
    }
}
