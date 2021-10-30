# Selection sort

simple, in-place, comparison-based, unstable sorting algorithm which slowly builds an unsorted list into a sorted list by repeatedly searching for the smallest value  and placing it in it's correct position

## Unstable algorithm

an algorithm in which the order amongst duplicate elements is not preserved. For example in unstable algorithm a list of some numbers have three 5 numbers but different color. They are similar but not equal one is hearts one spades... so they can sort randomly

## In-place

an algorithm in which we sort the list without any extra memory

## How it works

1. initialize 3 new  variables: __Counter__, __Traversing Index__ and __Minimum Index__
2. set __Counter__ equal to 0, __Minimum Index__ equal to __Counter__ and __Traversing Index__ equal to 1 plus the __Counter__
3. search the list from the counter through the end of the data using our __Traversing Index__, and compare every element we pass over to the value stored at the __Minimum Index__
__a.__ if the value is less than the value stored at the __Minimum Index__,  re-set __Minimum Index__ to whatever our __Traversing Index__ is

4. after traversing the whole list , we swap the values counting at the __Counter__ and the __Minimum Index__
5. increase __Counter__ by 1, set __Minimum Index__ equal to the __Counter__, and ser __Traversing Index__ equal to 1 plus the __Counter__
6. repeat steps 3-5 until you have a sorted list
