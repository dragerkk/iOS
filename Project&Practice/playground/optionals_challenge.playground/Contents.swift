//Don't change this
var studentsAndScores = ["Amy": Int(readLine()!)!, "James": Int(readLine()!)!, "Helen": Int(readLine()!)!]

func highestScore(scores: [String: Int]) {
    
    //Write your code here.
    var highScore = 0
    
    let score1 = studentsAndScores["Amy"]!
    let score2 = studentsAndScores["James"]!
    let score3 = studentsAndScores["Helen"]!
    
    if score1 > highScore {
        highScore = score1
    }
    if score2 > highScore {
        highScore = score2
    }
    if score3 > highScore {
        highScore = score3
    }
    
    print(highScore)
    
}

