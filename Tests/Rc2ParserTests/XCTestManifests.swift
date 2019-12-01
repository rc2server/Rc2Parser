import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(Rc2ParserTests.allTests),
    ]
}
#endif
