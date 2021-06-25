import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
      testCase(GamesRemoteDataSourceImplTest.allTests),
      testCase(GamesRepositoryImplTest.allTests),
      testCase(GameInteractorTest.allTests)
    ]
}
#endif
