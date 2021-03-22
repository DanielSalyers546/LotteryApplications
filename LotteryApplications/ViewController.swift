//
//  ViewController.swift
//  LotteryApplications
//
//  Created by Daniel Salyers on 3/15/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var lotteryNumberArray = [[Int]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        numberGenerator()
        print(lotteryNumberArray)
    }
    
    func numberGenerator() {
        for _ in 0...52 {
            let firstNum = Int.random(in: 0...70)
            let secondNum = Int.random(in: 0...70)
            let thirdNum = Int.random(in: 0...70)
            let fourthNum = Int.random(in: 0...70)
            let fifthNum = Int.random(in: 0...70)
            let sixthNum = Int.random(in: 0...25)
            let numbers = [firstNum, secondNum, thirdNum, fourthNum, fifthNum, sixthNum]
            lotteryNumberArray.append(numbers)
        }
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lotteryNumberArray.count
    }
    
    //Made a change to the output text
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId")!
        let text = lotteryNumberArray[indexPath.row]
        let detailText = "Week \(indexPath.row + 1)"
        cell.textLabel?.text = "Your MEGA SUPER numbers are: \(text)"
        cell.detailTextLabel?.text = String(detailText)
        return cell
        
    }
    
}

