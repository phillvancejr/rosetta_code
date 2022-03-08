(def sc2-workers @{
  :terran  "SCV"
  :zerg    "Drone"
  :protoss "Probe" })

# eachp iterates over each pair
(eachp [ race worker ] sc2-workers
  (print race " : " worker))

# eachk iterates over each key
(eachk race sc2-workers
  (print race))

