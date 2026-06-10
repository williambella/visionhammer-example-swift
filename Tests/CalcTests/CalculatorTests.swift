import XCTest
@testable import Calc

final class CalculatorTests: XCTestCase {
    let calc = Calculator()

    func testAdd()      { XCTAssertEqual(calc.add(2, 3), 5) }
    func testSubtract() { XCTAssertEqual(calc.subtract(5, 2), 3) }
    func testMultiply() { XCTAssertEqual(calc.multiply(2, 3), 6) }   // fails until bug fixed
    func testDivide()   { XCTAssertEqual(calc.divide(10, 2), 5) }
    func testDivideByZero() { XCTAssertNil(calc.divide(1, 0)) }
}
