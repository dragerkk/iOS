import UIKit

func loveCalculator() {
    let loveScore = Int.random (in : 1...100)
    
    switch loveScore {
    case 80... :
        print("You love each other like Kanye loves Kanye")
    case 40...80 :
        print ("You go together like Coke and Mentos")
    default:
        print ("You'll be forever alone")
    }
}

loveCalculator()
