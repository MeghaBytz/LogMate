import Foundation
import UIKit
import XCTest

class AppDelegateTests: XCTestCase {

    var subject: AppDelegate = AppDelegate()
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
    }
    
    func test_whenAppDelegateFinishes_setsRootViewControllerOnWindow() {
        let dummyApplication = UIApplication.sharedApplication()
        subject.application(dummyApplication, didFinishLaunchingWithOptions: nil)
        
        XCTAssertNotNil(subject.window)
        XCTAssertNotNil(subject.window!.rootViewController);
    }
    
    func test_whenAppDelegateFinishes_rootViewControllerIsPink() {
        let dummyApplication = UIApplication.sharedApplication()
        subject.application(dummyApplication, didFinishLaunchingWithOptions: nil)
        
        XCTAssertTrue(UIColor.greenColor().isEqual(subject.window?.rootViewController!.view.backgroundColor!))
    }
}
