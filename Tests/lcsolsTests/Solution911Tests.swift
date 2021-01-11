import Foundation
import XCTest

@testable import lcsols

final class Solution911Tests: XCTestCase {
    func test1() {
        let persons = [0, 1, 1, 0, 0, 1, 0]
        let times = [0, 5, 10, 15, 20, 25, 30]
        let topVotedCandidate = TopVotedCandidate(persons, times);

        let ts = [[3], [12], [25], [15], [24], [8]];
        let ans = [0, 1, 1, 0, 0, 1];
        for i in 0...ts.count - 1 {
            let winner = topVotedCandidate.q(ts[i][0]);
            XCTAssertEqual(ans[i], winner);
        }
    }

    func test2() {
        let persons = [0, 1, 2, 2, 1];
        let times = [20, 28, 29, 54, 56];
        let topVotedCandidate = TopVotedCandidate(persons, times);

        let ts = [[28], [53], [57], [29], [29], [28], [30], [20], [56], [55]];
        let ans = [1, 2, 1, 2, 2, 1, 2, 0, 1, 2];
        for i in 0...ts.count - 1 {
            let winner = topVotedCandidate.q(ts[i][0]);
            XCTAssertEqual(ans[i], winner);
        }
    }

    func test3() {
        let persons = [0, 0, 0, 0, 1];
        let times = [0, 6, 39, 52, 75];
        let topVotedCandidate = TopVotedCandidate(persons, times);

        let ts = [[45], [49], [59], [68], [42], [37], [99], [26], [78], [43]];
        let ans = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
        for i in 0...ts.count - 1 {
            let winner = topVotedCandidate.q(ts[i][0]);
            XCTAssertEqual(ans[i], winner);
        }
    }

    func test4() {
        let persons = [0, 0, 1, 1, 2];
        let times = [0, 67, 69, 74, 87];
        let topVotedCandidate = TopVotedCandidate(persons, times);

        let ts = [[4], [62], [100], [88], [70], [73], [22], [75], [29], [10]];
        let ans = [0, 0, 1, 1, 0, 0, 0, 1, 0, 0];
        for i in 0...ts.count - 1 {
            let winner = topVotedCandidate.q(ts[i][0]);
            XCTAssertEqual(ans[i], winner);
        }
    }

    func test5() {
        let persons = [0, 1, 2, 3, 0, 3, 4, 1, 4, 2];
        let times = [0, 13, 24, 44, 57, 59, 60, 66, 97, 98];
        let topVotedCandidate = TopVotedCandidate(persons, times);

        let ts = [[60], [98], [66], [96], [12], [14], [58], [97], [1], [65], [98], [67], [60], [58], [57], [24], [99], [13], [59], [23]];
        let ans = [3, 2, 1, 1, 0, 1, 0, 4, 0, 3, 2, 1, 3, 0, 0, 2, 2, 1, 3, 1];
        for i in 0...ts.count - 1 {
            let winner = topVotedCandidate.q(ts[i][0]);
            XCTAssertEqual(ans[i], winner);
        }
    }

    static var allTests = [
        ("test1", test1),
        ("test2", test2),
        ("test3", test3),
        ("test4", test4),
        ("test5", test5),
    ]
}
