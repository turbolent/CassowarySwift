
import Nimble
import CassowarySwift
import XCTest

class Tests : XCTestCase {

    func makeCassowary() -> Cassowary {
        guard let cassowary = Cassowary() else { fatalError() }
        cassowary.exceptionHandler = { exception in
            fatalError("Failure: \(exception)")
        }
        cassowary.debug = true
        return cassowary
    }

    func testSimple() {
        let cassowary = makeCassowary()
        let solver = cassowary.newSimplexSolver()
        
        let x = cassowary.newVariable(value: 42)
        expect(x.value).to(beCloseTo(42.0, within: 1e-16))
        solver.addConstraint(x == 100)

        expect(x.value).notTo(beCloseTo(42.0, within: 1e-16))
        expect(x.value).to(beCloseTo(100.0, within: 1e-16))
    }

    func testAdvanced() {
        let cassowary = makeCassowary()
        let solver = cassowary.newSimplexSolver()

        let left = cassowary.newVariable()
        let middle = cassowary.newVariable()
        let right = cassowary.newVariable()

        solver.addConstraint(middle == (left + right) / 2)
        solver.addConstraint(right == left + 10.0)
        solver.addConstraint(right <= 100)
        solver.addConstraint(left >= 0)

        expect(left.value).to(beCloseTo(90.0, within: 1e-16))
        expect(middle.value).to(beCloseTo(95.0, within: 1e-16))
        expect(right.value).to(beCloseTo(100.0, within: 1e-16))
    }
}