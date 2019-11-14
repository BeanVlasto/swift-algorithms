print("Bubble sort:")
print("Moves the highest value in a list to the end of the array, then leaves it, until the array is sorted.")
print("No preconditions.")
print("""
Best:
  Time:  O(n)
  Space: O(1)
Average:
  Time:  O(n^2)
  Space: O(1)
Worst:
  Time:  O(n^2)
  Space: O(1)
""")

print("Merge sort:")
print("Recursively splits a list into 2 lists until the lists are of length of 1, then merges them together into ordered lists until 1 sorted list is left.")
print("No preconditions.")
print("""
Best:
  Time:  O(n*log(n))
  Space: O(n)
Average:
  Time:  O(n*log(n))
  Space: O(n)
Worst:
  Time:  O(n*log(n))
  Space: O(n)
""")

print("Linear search:")
print("Sequentially searches through each element in a list until either the list is exhauseted or a match for the target value is found.")
print("No preconditions.")
print("""
Best:
  Time:  O(1)
  Space: O(1)
Average:
  Time:  O(n)
  Space: O(1)
Worst:
  Time:  O(n)
  Space: O(1)
""")

print("Binary search:")
print("First compares the target value to the median value in a list. If the median value is a match, the search ends. If the target value is bigger than the median, the bottom half of the list is discarded. If the target value is smaller than the median, the top hald of the list is discarded. This happens repeatedly until either a match is found or the list is exhausted.")
print("The list must be sorted.")
print("""
Best:
  Time:  O(1)
  Space: O(1)
Average:
  Time:  O(log(n))
  Space: O(1)
Worst:
  Time:  O(log(n))
  Space: O(1)
""")

print("Quick sort:")
print("A pivot point is chosen (generally the first value in the list) and the remaining elements in the list are divided into two lists depending on whether they are larger or smaller than the pivot. This happens repeatedly until the lists are of length 1, at which point they are recombined into 1 sorted list.")
print("No preconditions.")
print("""
Best:
  Time:  O(n*log(n))
  Space: O(n)
Average:
  Time:  O(n*log(n))
  Space: O(n)
Worst:
  Time:  O(n^2)
  Space: O(n)
""")

print("Insertion sort:")
print("Moves the first item in a list into a sorted sub-array, then sequentially compares the next item in the list to each item in the sorted sub-array and inserts it in front of the first item it is larger than.")
print("No preconditions.")
print("""
Best:
  Time:  O(n)
  Space: O(n)
Average:
  Time:  O(n^2)
  Space: O(n)
Worst:
  Time:  O(n^2)
  Space: O(n)
""")
