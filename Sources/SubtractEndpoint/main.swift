import Calc
import Foundation

// SCRUM-115: Simple endpoint to calculate 10 - 2
// Usage: swift run SubtractEndpoint

let calc = Calculator()
let a = 10
let b = 2
let result = calc.subtract(a, b)

// Return JSON-formatted response similar to an API endpoint
let response: [String: Any] = [
    "operation": "\(a) - \(b)",
    "result": result
]

if let jsonData = try? JSONSerialization.data(withJSONObject: response, options: []),
   let jsonString = String(data: jsonData, encoding: .utf8) {
    print(jsonString)
} else {
    print("{\"operation\": \"\(a) - \(b)\", \"result\": \(result)}")
}
