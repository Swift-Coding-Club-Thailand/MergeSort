/*:
# What is different about this solution and using "Comparable protocol" solution?

 The main difference between the Int type for the input array version, and Comparable protocol version of the merge sort function is the type of input that the function can accept. The Int type for the input array version of the function is specific to sorting arrays of integers, while the Comparable protocol version of the function is more general and can be used to sort arrays of any type that conforms to the Comparable protocol. Both solutions are correct and will produce the same result, but depending on the specific requirements of your project, you may choose one over the other.
 - - -
 */
/*:
 # Example
 Here is some example of "omparable protocol" Merege Sort solution
 - - -
 */

func mergeSort<T: Comparable>(_ array: [T]) -> [T] {
    guard array.count > 1 else { return array }
    
    let middleIndex = array.count / 2
    
    let leftArray = mergeSort(Array(array[0..<middleIndex]))
    let rightArray = mergeSort(Array(array[middleIndex..<array.count]))
    
    return merge(leftArray, rightArray)
}

func merge<T: Comparable>(_ left: [T], _ right: [T]) -> [T] {
    var leftIndex = 0
    var rightIndex = 0
    var orderedArray: [T] = []
    
    while leftIndex < left.count && rightIndex < right.count {
        let leftElement = left[leftIndex]
        let rightElement = right[rightIndex]
        
        if leftElement < rightElement {
            orderedArray.append(leftElement)
            leftIndex += 1
        } else if leftElement > rightElement {
            orderedArray.append(rightElement)
            rightIndex += 1
        } else {
            orderedArray.append(leftElement)
            leftIndex += 1
            orderedArray.append(rightElement)
            rightIndex += 1
        }
    }
    
    while leftIndex < left.count {
        orderedArray.append(left[leftIndex])
        leftIndex += 1
    }
    
    while rightIndex < right.count {
        orderedArray.append(right[rightIndex])
        rightIndex += 1
    }
    
    return orderedArray
}

let array = [5, 2, 4, 7, 1, 3, 2, 6]
let sortedArray = mergeSort(array)
print(sortedArray)
            
