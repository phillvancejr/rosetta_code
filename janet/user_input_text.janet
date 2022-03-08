
(def str (getline "Enter a string: "))
(print "you entered: " str)

# -> can be used to create pipelines for values
# the result of each argument gets piped into the next
(def num (->  (getline "Enter the number 75000: ")
              (string/trimr)
              (scan-number)))

(print "you entered: " num "\n75000 * 2: " (* 2 num))

