(def nums @[ 1 2 3])

(pp nums) #  [ 1 2 3 ]

(put nums 0 5)

(pp nums) #  [ 5 2 3 ]

(def hundred-acre @[])
(array/push hundred-acre "winnie the pooh")
(array/push hundred-acre "piglet")
(array/push hundred-acre "rabbit")

(pp hundred-acre) # [ "winnie the pooh" "piglet" "rabbit" ]

# you can also allocate memory for an array up front to prevent multiple allocations
(def fruits (array/new 3))
(put fruits 0 "apple")
(put fruits 1 "orange")
(put fruits 2 "mango")

(pp fruits) # [ "apple" "orange" "mango" ]

# tuples are immutable arrays which cannot be changed
# create a literal tuple by using square brackets without the @
(def fixed-size [ 1 2 3 ])

(print (fixed-size 0)) # 1


