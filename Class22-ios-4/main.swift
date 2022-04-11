import Foundation

//HealthApp().open()
App().start()



class HealthApp {

    func open() {
        var stepDetector = StepDetector(delegate: self)
        stepDetector.start()

    }

}

extension HealthApp : CallBack_Steps {
    
    
    func stepDetect(c: Int) {
        print("Text View Changet to: \(c)")
    }
    
}
