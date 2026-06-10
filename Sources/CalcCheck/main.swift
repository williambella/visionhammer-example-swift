import Calc
import Foundation

// Lightweight, dependency-free assertion runner so the suite runs on any
// Swift toolchain (incl. macOS CommandLineTools without XCTest). Mirrors
// the XCTest cases in Tests/CalcTests one-to-one.
var failures = 0
func check(_ name: String, _ got: Int?, _ want: Int?) {
    if got == want { print("  PASS \(name) (= \(String(describing: want)))") }
    else { failures += 1; print("  FAIL \(name): got \(String(describing: got)), want \(String(describing: want))") }
}

let calc = Calculator()
print("CalcCheck — VisionHammer Swift pipeline smoke suite")
check("add(2,3)",       calc.add(2, 3),       5)
check("subtract(5,2)",  calc.subtract(5, 2),  3)
check("multiply(2,3)",  calc.multiply(2, 3),  6)
check("divide(10,2)",   calc.divide(10, 2),   5)
check("divideByZero",   calc.divide(1, 0),    nil)

if failures == 0 { print("ALL TESTS PASSED"); }
else { print("\(failures) TEST(S) FAILED"); exit(1) }
