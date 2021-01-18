import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(Solution911Tests.allTests),
        testCase(Solution475Tests.allTests)
    ]
}
#endif
