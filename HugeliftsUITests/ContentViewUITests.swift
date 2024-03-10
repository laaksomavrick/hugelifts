//
//  HugeliftsUITests.swift
//  HugeliftsUITests
//
//  Created by Mavrick Laakso on 2024-03-04.
//

import XCTest

final class ContentViewUITests: XCTestCase {
    
    private var app: XCUIApplication!

    override func setUpWithError() throws {
        continueAfterFailure = false
        
        app = XCUIApplication()
        app.launch()
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
    
    func testItShowsTodayByDefault() throws {
        let todayText = app.staticTexts["TodayView"]
        XCTAssert(todayText.exists)
    }
    
    func testItShowsTodayViewWhenUserTapsTodayView() throws {
        app.tabBars.buttons["Today"].tap()
        let todayText = app.staticTexts["TodayView"]
        XCTAssert(todayText.exists)
    }
    
    func testItShowsWorkoutsViewViewWhenUserTapsWorkoutsView() throws {
        app.tabBars.buttons["Workouts"].tap()
        let workoutText = app.staticTexts["WorkoutsView"]
        XCTAssert(workoutText.exists)
    }
    
    func testItShowsExercisesViewViewWhenUserTapsExercisesView() throws {
        app.tabBars.buttons["Exercises"].tap()
        let exercisesText = app.staticTexts["ExercisesView"]
        XCTAssert(exercisesText.exists)
    }
}
