import Foundation

class Solution475 {
    func findHeater(house: Int, heaters: [Int]) -> Int {
        var left = 0
        var right = heaters.count - 1
        while (left <= right) {
            let mid = (left + right) / 2
            if heaters[mid] == house {
                return mid
            } else if heaters[mid] < house {
                left = mid + 1
            } else {
                right = mid - 1
            }
        }
        return left
    }

    func findRadius(_ houses: [Int], _ heaters: [Int]) -> Int {
        let housesSorted = houses.sorted()
        let heatersSorted = heaters.sorted()

        var radius = 0
        for house in housesSorted {
            let heaterIndex = findHeater(house: house, heaters: heatersSorted)
            let leftDistFn = {
                house - heatersSorted[heaterIndex - 1]
            }
            let rightDistFn = {
                heatersSorted[heaterIndex] - house
            }

            var heaterDist: Int
            if heaterIndex == 0 {
                heaterDist = rightDistFn()
            } else if heaterIndex == heatersSorted.count {
                heaterDist = leftDistFn()
            } else {
                heaterDist = min(leftDistFn(), rightDistFn())
            }

            radius = max(radius, heaterDist)
        }

        return radius
    }
}