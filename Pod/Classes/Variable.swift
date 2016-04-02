
import JavaScriptCore


public struct Variable {
    internal let cassowary: Cassowary
    public let name: String?
    internal let variable: JSValue

    public var value: Double {
        guard let number = variable.valueForProperty("value").toObject() as? NSNumber
            else { return Double.NaN }
        return number.doubleValue
    }

    public init(cassowary: Cassowary, name: String?, value: Double?) {
        self.cassowary = cassowary
        self.name = name

        var config: [String: AnyObject] = [:]
        if let name = name { config["name"] = name }
        if let value = value { config["value"] = value }
        self.variable = cassowary.cassowary.objectForKeyedSubscript("Variable")
            .constructWithArguments([config])
    }
}
