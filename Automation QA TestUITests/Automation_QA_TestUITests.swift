import XCTest

class Automation_QA_TestUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        
        app.buttons["Login"].tap()
        
        let elementsQuery = app.scrollViews.otherElements
        elementsQuery.textFields["Email"].tap()
        
        elementsQuery.textFields["Email"].typeText("username@fiit.tv")
        elementsQuery.secureTextFields["Password (Optional)"].tap()
        
        elementsQuery.secureTextFields["Password (Optional)"].typeText("longpassword")
        app.buttons["Login"].staticTexts["Login"].tap()
        XCTAssertTrue(true)
        
        let loginButton = app.buttons["Login"]
        
        app.tables.staticTexts["day"].swipeUp()
        app.staticTexts["Logout"].tap()
        loginButton.staticTexts["Login"].tap()
        elementsQuery.textFields["This email address is invalid"].tap()
        XCTAssertTrue(elementsQuery.textFields["This email address is invalid"].isHittable)
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                XCUIApplication().launch()
            }
        }
    }
}
