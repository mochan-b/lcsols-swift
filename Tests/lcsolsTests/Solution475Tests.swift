import Foundation
import XCTest

@testable import lcsols

final class Solution475Tests: XCTestCase {
    func test1() {
        let houses = [1, 2, 3]
        let heaters = [2]

        let solution = Solution475()
        let result = solution.findRadius(houses, heaters)

        XCTAssertEqual(1, result)
    }

    func test2() {
        let houses = [1, 3, 2]
        let heaters = [2]

        let solution = Solution475()
        let result = solution.findRadius(houses, heaters)

        XCTAssertEqual(1, result)
    }

    func test3() {
        let houses = [1, 2, 3, 4]
        let heaters = [1, 4]

        let solution = Solution475()
        let result = solution.findRadius(houses, heaters)

        XCTAssertEqual(1, result)
    }

    func test4() {
        let houses = [1, 5]
        let heaters = [2]

        let solution = Solution475()
        let result = solution.findRadius(houses, heaters)

        XCTAssertEqual(3, result)
    }

    func test5() {
        let houses = [1, 5]
        let heaters = [10]

        let solution = Solution475()
        let result = solution.findRadius(houses, heaters)

        XCTAssertEqual(9, result)
    }

    func test6() {
        let houses = [282475249, 622650073, 984943658, 144108930, 470211272, 101027544, 457850878, 458777923]
        let heaters = [823564440, 115438165, 784484492, 74243042, 114807987, 137522503, 441282327, 16531729, 823378840, 143542612]

        let solution = Solution475()
        let result = solution.findRadius(houses, heaters)

        XCTAssertEqual(161834419, result)
    }

    func test7() {
        let houses = [474833169, 264817709, 998097157, 817129560]
        let heaters = [197493099, 404280278, 893351816, 505795335]

        let solution = Solution475()
        let result = solution.findRadius(houses, heaters)

        XCTAssertEqual(104745341, result)
    }

    static var allTests = [
        ("[1,2,3],[2]=1", test1),
        ("[1,3,2],[2]=1", test2),
        ("[1,2,3,4],[1,4]=1", test3),
        ("[1,5],[2]=3", test4),
        ("[1,5],[10]=9", test5),
        ("unsorted", test6),
        ("unsorted2", test7),
    ]
}