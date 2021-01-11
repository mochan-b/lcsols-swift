import Foundation

public class TopVotedCandidate {
    var timevals: [Int];
    var winners: [Int];

    public init(_ persons: [Int], _ times: [Int]) {
        timevals = times;
        winners = [];

        var first: Int = 0;
        var firstname: Int = 0;

        var votes: [Int: Int] = [:];
        for i in 0...persons.count - 1 {
            var person = persons[i];

            if (votes[person] == nil) {
                votes[person] = 0;
            }

            var personvote = votes[person]! + 1;
            votes[person] = personvote;

            if (personvote >= first) {
                first = personvote;
                firstname = person;
            }

            winners.append(firstname);
        }
    }

    public func q(_ t: Int) -> Int {
        var left = 0, right = timevals.count - 1, mid = 0;
        var found = false;

        while (left <= right) {
            mid = (left + right) / 2;

            if (timevals[mid] == t) {
                found = true;
                break;
            } else if (timevals[mid] < t) {
                left = mid + 1;
            } else {
                right = mid - 1;
            }
        }

        if (found) {
            return winners[mid];
        } else {
            return winners[right];
        }
    }
}
