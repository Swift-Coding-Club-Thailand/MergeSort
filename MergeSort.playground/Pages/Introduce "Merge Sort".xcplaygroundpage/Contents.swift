/*:
# What is Merge Sort??
 ![MergeSort](Merge-Sort-Algorithm.png)
 Merge Sort is a divide and conquer algorithm that sorts an array by dividing it into two halves, sorting each half, and then merging the sorted halves back together. It is a stable sorting algorithm with a time complexity of O(n log n) in the worst and average cases, and O(n) in the best case. The basic idea behind the merge sort algorithm is that it divides the input array into two halves, recursively sorts each half, and then merges the two sorted halves back together. This sorting technique is very efficient for large data sets, and is often used in situations where performance is critical.
- - -
*/
/*:
# How it work?? (Simple Explanation)
1.  Divide the input array into two equal halves.
2. Recursively sort each half using merge sort.
3. Merge the two sorted halves back together. This is done by comparing the first elements of each half and taking the smaller element, adding it to a new array. This process is repeated until one of the halves is exhausted, at which point the remaining elements in the other half are added to the new array.
- - -
 */
/*:
# Example
Here is some example of Merge Sort
 - - -
*/
/*:
 Ps. You can learn more about Merge Sort here [Kodeco Merge Sort](https://www.kodeco.com/741-swift-algorithm-club-swift-merge-sort) They explain very well.
 */
func mergeSort(_ array: [Int]) -> [Int] {
    guard array.count > 1 else { return array }
    let middleIndex = array.count / 2
    let leftArray = mergeSort(Array(array[0..<middleIndex]))
    let rightArray = mergeSort(Array(array[middleIndex..<array.count]))
    return merge(leftPile: leftArray, rightPile: rightArray)
}

func merge(leftPile: [Int], rightPile: [Int]) -> [Int] {
    var leftIndex = 0
    var rightIndex = 0
    var orderedPile = [Int]()
    while leftIndex < leftPile.count && rightIndex < rightPile.count {
        if leftPile[leftIndex] < rightPile[rightIndex] {
            orderedPile.append(leftPile[leftIndex])
            leftIndex += 1
        } else if leftPile[leftIndex] > rightPile[rightIndex] {
            orderedPile.append(rightPile[rightIndex])
            rightIndex += 1
        } else {
            orderedPile.append(leftPile[leftIndex])
            leftIndex += 1
            orderedPile.append(rightPile[rightIndex])
            rightIndex += 1
        }
    }
    while leftIndex < leftPile.count {
        orderedPile.append(leftPile[leftIndex])
        leftIndex += 1
    }
    while rightIndex < rightPile.count {
        orderedPile.append(rightPile[rightIndex])
        rightIndex += 1
    }
    return orderedPile
}

let array = [5, 2, 4, 7, 1, 3, 2, 6]
let sortedArray = mergeSort(array)
print(sortedArray)

