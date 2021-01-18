import Foundation

public class TopVotedCandidate {
    var timeVals: [Int]
    var winners: [Int]

    public init(_ persons: [Int], _ times: [Int]) {
        timeVals = times
        winners = []

        var first: Int = 0
        var firstname: Int = 0

        var votes: [Int: Int] = [:]
        for i in 0...persons.count - 1 {
            let person = persons[i]

            if (votes[person] == nil) {
                votes[person] = 0
            }

            let personVote = votes[person]! + 1
            votes[person] = personVote

            if (personVote >= first) {
                first = personVote
                firstname = person
            }

            winners.append(firstname)
        }
    }

    public func q(_ t: Int) -> Int {
        var left = 0, right = timeVals.count - 1, mid = 0
        var found = false

        while (left <= right) {
            mid = (left + right) / 2

            if (timeVals[mid] == t) {
                found = true
                break
            } else if (timeVals[mid] < t) {
                left = mid + 1
            } else {
                right = mid - 1;
            }
        }

        return found ? winners[mid] : winners[right]
    }
}
