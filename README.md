# visionhammer-example-swift

A minimal SwiftPM **library** package used to validate the VisionHammer
autonomous DevOps pipeline against Swift (clone → build → fix → patch → PR).

Library targets get a **real `swift build` + `swift test` gate** on the Linux
agent (`local-agent-full:v3`), unlike iOS app targets which degrade to
`swiftc -parse` (no Xcode on Linux).

The `multiply` function ships with an intentional logic bug to exercise the
fix pipeline. See PRs for the autonomous fix.
