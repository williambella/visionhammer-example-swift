/// A tiny arithmetic library used to exercise the VisionHammer Swift pipeline.
public struct Calculator {
    public init() {}

    public func add(_ a: Int, _ b: Int) -> Int { a + b }

    public func subtract(_ a: Int, _ b: Int) -> Int { a - b }

    /// Multiplies two integers.
    public func multiply(_ a: Int, _ b: Int) -> Int { a * b }

    /// Integer division. Returns nil on divide-by-zero instead of trapping.
    public func divide(_ a: Int, _ b: Int) -> Int? {
        guard b != 0 else { return nil }
        return a / b
    }
}
