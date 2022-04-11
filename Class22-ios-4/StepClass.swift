import Foundation



protocol CallBack_Steps {
    func stepDetect(c: Int)
}

class StepDetector {
    
    var counter: Int = 0;
    var delegate: CallBack_Steps?
    
    init(delegate: CallBack_Steps) {
        self.delegate = delegate
    }
    
    func start() {
        print("STARTED")
        
        repeat {
            counter += 1
            print("inner SD: \(counter)")
            delegate?.stepDetect(c: counter)
            sleep(2)
        } while (counter < 10)
    }

}
