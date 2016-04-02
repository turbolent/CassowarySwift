
// TODO: ensure same contexts/cassowarys/solvers!


// ==

public func ==(left: Expression, right: Expression) -> Equation {
    let cassowary = left.cassowary
    return cassowary.newEquation(left, right)
}

public func ==(left: Variable, right: Double) -> Equation {
    let cassowary = left.cassowary
    let leftExpression = cassowary.newExpression(variable: left)
    let rightExpression = cassowary.newExpression(constant: right)
    return leftExpression == rightExpression
}

public func ==(left: Double, right: Variable) -> Equation {
    let cassowary = right.cassowary
    let leftExpression = cassowary.newExpression(constant: left)
    let rightExpression = cassowary.newExpression(variable: right)
    return leftExpression == rightExpression
}

public func ==(left: Variable, right: Variable) -> Equation {
    let cassowary = left.cassowary
    let leftExpression = cassowary.newExpression(variable: left)
    let rightExpression = cassowary.newExpression(variable: right)
    return leftExpression == rightExpression
}

public func ==(left: Variable, right: Expression) -> Equation {
    let leftExpression = left.cassowary.newExpression(variable: left)
    return leftExpression == right
}

public func ==(left: Expression, right: Variable) -> Equation {
    let rightExpression = right.cassowary.newExpression(variable: right)
    return left == rightExpression
}

public func ==(left: Double, right: Expression) -> Equation {
    let leftExpression = right.cassowary.newExpression(constant: left)
    return leftExpression == right
}

public func ==(left: Expression, right: Double) -> Equation {
    let rightExpression = left.cassowary.newExpression(constant: right)
    return left == rightExpression
}



// <=

public func <=(left: Expression, right: Expression) -> Inequality {
    let cassowary = left.cassowary
    return cassowary.newInequality(left, .LessOrEqual, right)
}

public func <=(left: Variable, right: Double) -> Inequality {
    let cassowary = left.cassowary
    let leftExpression = cassowary.newExpression(variable: left)
    let rightExpression = cassowary.newExpression(constant: right)
    return leftExpression <= rightExpression
}

public func <=(left: Double, right: Variable) -> Inequality {
    let cassowary = right.cassowary
    let leftExpression = cassowary.newExpression(constant: left)
    let rightExpression = cassowary.newExpression(variable: right)
    return leftExpression <= rightExpression
}

public func <=(left: Variable, right: Variable) -> Inequality {
    let cassowary = left.cassowary
    let leftExpression = cassowary.newExpression(variable: left)
    let rightExpression = cassowary.newExpression(variable: right)
    return leftExpression <= rightExpression
}

public func <=(left: Variable, right: Expression) -> Inequality {
    let leftExpression = left.cassowary.newExpression(variable: left)
    return leftExpression <= right
}

public func <=(left: Expression, right: Variable) -> Inequality {
    let rightExpression = right.cassowary.newExpression(variable: right)
    return left <= rightExpression
}

public func <=(left: Double, right: Expression) -> Inequality {
    let leftExpression = right.cassowary.newExpression(constant: left)
    return leftExpression <= right
}

public func <=(left: Expression, right: Double) -> Inequality {
    let rightExpression = left.cassowary.newExpression(constant: right)
    return left <= rightExpression
}


// >=

public func >=(left: Expression, right: Expression) -> Inequality {
    let cassowary = left.cassowary
    return cassowary.newInequality(left, .GreaterOrEqual, right)
}

public func >=(left: Variable, right: Double) -> Inequality {
    let cassowary = left.cassowary
    let leftExpression = cassowary.newExpression(variable: left)
    let rightExpression = cassowary.newExpression(constant: right)
    return leftExpression >= rightExpression
}

public func >=(left: Double, right: Variable) -> Inequality {
    let cassowary = right.cassowary
    let leftExpression = cassowary.newExpression(constant: left)
    let rightExpression = cassowary.newExpression(variable: right)
    return leftExpression >= rightExpression
}

public func >=(left: Variable, right: Variable) -> Inequality {
    let cassowary = left.cassowary
    let leftExpression = cassowary.newExpression(variable: left)
    let rightExpression = cassowary.newExpression(variable: right)
    return leftExpression >= rightExpression
}

public func >=(left: Variable, right: Expression) -> Inequality {
    let leftExpression = left.cassowary.newExpression(variable: left)
    return leftExpression >= right
}

public func >=(left: Expression, right: Variable) -> Inequality {
    let rightExpression = right.cassowary.newExpression(variable: right)
    return left >= rightExpression
}

public func >=(left: Double, right: Expression) -> Inequality {
    let leftExpression = right.cassowary.newExpression(constant: left)
    return leftExpression >= right
}

public func >=(left: Expression, right: Double) -> Inequality {
    let rightExpression = left.cassowary.newExpression(constant: right)
    return left >= rightExpression
}


// +

public func +(left: Variable, right: Double) -> Expression {
    let cassowary = left.cassowary
    let leftExpression = cassowary.newExpression(variable: left)
    let rightExpression = cassowary.newExpression(constant: right)
    return leftExpression + rightExpression
}

public func +(left: Double, right: Variable) -> Expression {
    let cassowary = right.cassowary
    let leftExpression = cassowary.newExpression(constant: left)
    let rightExpression = cassowary.newExpression(variable: right)
    return leftExpression + rightExpression
}

public func +(left: Variable, right: Variable) -> Expression {
    let cassowary = left.cassowary
    let leftExpression = cassowary.newExpression(variable: left)
    let rightExpression = cassowary.newExpression(variable: right)
    return leftExpression + rightExpression
}

public func +(left: Double, right: Expression) -> Expression {
    let cassowary = right.cassowary
    let leftExpression = cassowary.newExpression(constant: left)
    return leftExpression + right
}

public func +(left: Expression, right: Double) -> Expression {
    let cassowary = left.cassowary
    let rightExpression = cassowary.newExpression(constant: right)
    return left + rightExpression
}

public func +(left: Variable, right: Expression) -> Expression {
    let cassowary = left.cassowary
    let leftExpression = cassowary.newExpression(variable: left)
    return leftExpression + right
}

public func +(left: Expression, right: Variable) -> Expression {
    let cassowary = left.cassowary
    let rightExpression = cassowary.newExpression(variable: right)
    return left + rightExpression
}

public func +(left: Expression, right: Expression) -> Expression {
    return left.plus(right)
}


// -

public func -(left: Variable, right: Double) -> Expression {
    let cassowary = left.cassowary
    let leftExpression = cassowary.newExpression(variable: left)
    let rightExpression = cassowary.newExpression(constant: right)
    return leftExpression - rightExpression
}

public func -(left: Double, right: Variable) -> Expression {
    let cassowary = right.cassowary
    let leftExpression = cassowary.newExpression(constant: left)
    let rightExpression = cassowary.newExpression(variable: right)
    return leftExpression - rightExpression
}

public func -(left: Variable, right: Variable) -> Expression {
    let cassowary = left.cassowary
    let leftExpression = cassowary.newExpression(variable: left)
    let rightExpression = cassowary.newExpression(variable: right)
    return leftExpression - rightExpression
}

public func -(left: Double, right: Expression) -> Expression {
    let cassowary = right.cassowary
    let leftExpression = cassowary.newExpression(constant: left)
    return leftExpression - right
}

public func -(left: Expression, right: Double) -> Expression {
    let cassowary = left.cassowary
    let rightExpression = cassowary.newExpression(constant: right)
    return left - rightExpression
}

public func -(left: Variable, right: Expression) -> Expression {
    let cassowary = left.cassowary
    let leftExpression = cassowary.newExpression(variable: left)
    return leftExpression - right
}

public func -(left: Expression, right: Variable) -> Expression {
    let cassowary = left.cassowary
    let rightExpression = cassowary.newExpression(variable: right)
    return left - rightExpression
}

public func -(left: Expression, right: Expression) -> Expression {
    return left.minus(right)
}


// *

public func *(left: Variable, right: Double) -> Expression {
    let cassowary = left.cassowary
    let leftExpression = cassowary.newExpression(variable: left)
    let rightExpression = cassowary.newExpression(constant: right)
    return leftExpression * rightExpression
}

public func *(left: Double, right: Variable) -> Expression {
    let cassowary = right.cassowary
    let leftExpression = cassowary.newExpression(constant: left)
    let rightExpression = cassowary.newExpression(variable: right)
    return leftExpression * rightExpression
}

public func *(left: Variable, right: Variable) -> Expression {
    let cassowary = left.cassowary
    let leftExpression = cassowary.newExpression(variable: left)
    let rightExpression = cassowary.newExpression(variable: right)
    return leftExpression * rightExpression
}

public func *(left: Double, right: Expression) -> Expression {
    let cassowary = right.cassowary
    let leftExpression = cassowary.newExpression(constant: left)
    return leftExpression * right
}

public func *(left: Expression, right: Double) -> Expression {
    let cassowary = left.cassowary
    let rightExpression = cassowary.newExpression(constant: right)
    return left * rightExpression
}

public func *(left: Variable, right: Expression) -> Expression {
    let cassowary = left.cassowary
    let leftExpression = cassowary.newExpression(variable: left)
    return leftExpression * right
}

public func *(left: Expression, right: Variable) -> Expression {
    let cassowary = left.cassowary
    let rightExpression = cassowary.newExpression(variable: right)
    return left * rightExpression
}

public func *(left: Expression, right: Expression) -> Expression {
    return left.times(right)
}


// /

public func /(left: Variable, right: Double) -> Expression {
    let cassowary = left.cassowary
    let leftExpression = cassowary.newExpression(variable: left)
    let rightExpression = cassowary.newExpression(constant: right)
    return leftExpression / rightExpression
}

public func /(left: Double, right: Variable) -> Expression {
    let cassowary = right.cassowary
    let leftExpression = cassowary.newExpression(constant: left)
    let rightExpression = cassowary.newExpression(variable: right)
    return leftExpression / rightExpression
}

public func /(left: Variable, right: Variable) -> Expression {
    let cassowary = left.cassowary
    let leftExpression = cassowary.newExpression(variable: left)
    let rightExpression = cassowary.newExpression(variable: right)
    return leftExpression / rightExpression
}

public func /(left: Double, right: Expression) -> Expression {
    let cassowary = right.cassowary
    let leftExpression = cassowary.newExpression(constant: left)
    return leftExpression / right
}

public func /(left: Expression, right: Double) -> Expression {
    let cassowary = left.cassowary
    let rightExpression = cassowary.newExpression(constant: right)
    return left / rightExpression
}

public func /(left: Variable, right: Expression) -> Expression {
    let cassowary = left.cassowary
    let leftExpression = cassowary.newExpression(variable: left)
    return leftExpression / right
}

public func /(left: Expression, right: Variable) -> Expression {
    let cassowary = left.cassowary
    let rightExpression = cassowary.newExpression(variable: right)
    return left / rightExpression
}

public func /(left: Expression, right: Expression) -> Expression {
    return left.divide(right)
}


// TODO: strength
