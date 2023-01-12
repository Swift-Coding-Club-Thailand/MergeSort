# MergeSort
 Merge Sort Algorithm for Swift Coding Club Advance

# What is Merge Sort??
![Merge-Sort-Algorithm](https://user-images.githubusercontent.com/48949523/212000949-aa5933b9-8554-44a6-9dd0-f27160092621.png)
Merge Sort is a divide and conquer algorithm that sorts an array by dividing it into two halves, sorting each half, and then merging the sorted halves back together. It is a stable sorting algorithm with a time complexity of O(n log n) in the worst and average cases, and O(n) in the best case. The basic idea behind the merge sort algorithm is that it divides the input array into two halves, recursively sorts each half, and then merges the two sorted halves back together. This sorting technique is very efficient for large data sets, and is often used in situations where performance is critical.

# How it work?? (Simple Explanation)
1.  Divide the input array into two equal halves.
2. Recursively sort each half using merge sort.
3. Merge the two sorted halves back together. This is done by comparing the first elements of each half and taking the smaller element, adding it to a new array. This process is repeated until one of the halves is exhausted, at which point the remaining elements in the other half are added to the new array.
