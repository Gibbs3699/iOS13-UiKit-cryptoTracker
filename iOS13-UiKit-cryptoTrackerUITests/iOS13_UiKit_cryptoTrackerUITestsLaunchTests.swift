//
//  iOS13_UiKit_cryptoTrackerUITestsLaunchTests.swift
//  iOS13-UiKit-cryptoTrackerUITests
//
//  Created by TheGIZzz on 10/4/2565 BE.
//

import XCTest

class iOS13_UiKit_cryptoTrackerUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
