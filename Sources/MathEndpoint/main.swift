import Calc
import Foundation

// SCRUM-113: Simple endpoint to calculate 2 * 4
// Usage: swift run MathEndpoint

let calc = Calculator()
let a = 2
let b = 4
let result = calc.multiply(a, b)

// Return JSON-formatted response similar to an API endpoint
let response: [String: Any] = [
    "operation": "\(a) * \(b)",
    "result": result
]

if let jsonData = try? JSONSerialization.data(withJSONObject: response, options: []),
   let jsonString = String(data: jsonData, encoding: .utf8) {
    print(jsonString)
} else {
    print("{\"operation\": \"\(a) * \(b)\", \"result\": \(result)}")
}
