# loop through the args directly 
(each arg (dyn :args) 
  (print arg))

# can also use main which gets run automatically if included
(defn main[& args]
  (each arg args
    (print arg)))
