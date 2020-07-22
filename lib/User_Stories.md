




<!-- 
As a member of the public
So I can **return bikes** I've hired
I want to **dock** my **bike** at the **docking station**

```ruby
docking_sation = DockingStation.new
docking_station.dock_bike

#This will search the Dock hash and replace the first "Empty" value with occupied, it should return a STRING "Your BIKE was stored in POSITION[x]" 
```
#in the case of my test, POSITION 3 on the hash is EMPTY and should then become occupied when dock_bike is called. 






As a member of the public
So I can **decide** whether **to use** the docking station
I want to **see** a **bike** that has been **docked**

```ruby
docking_station = DockingStation.new
docking_station.view

# will return an INTEGER of the TOTAL BIKES 
```
#So -  -->


As a member of the public,
So that I am not confused and charged unnecessarily,
I'd like **docking stations** **not to** **release** bikes when there are **none available**.

```ruby

docking_station = DockingStation.new
docking_station.release_bike
# NO NO NO NO NO

```

**if there are no bikes in the dock, return the fail message to user**



As a maintainer of the system,
So that I can control the distribution of bikes,
I'd like **docking stations** _not to_ accept more **bikes than their capacity**.

```ruby
docking_station = DockingStation.new
docking.dock_bike
# IF the docking is full, return rejection
```

#------------------------------------------------------------------------#

as a user
Context
Actions in nouns and adjectives (highlight)
|
|
|
As a member of the public
So I can **decide** whether **to use** the docking station
I want to **see** a **bike** that has been **docked**

```ruby
docking_station = DockingStation.new
docking_station.view

# will return TRUE if dock is EMPTY; return FALSE if dock contains more than ONE BIKE.
# this can be implemented though HASH.KEYS.LENGTH
```
#So -  --> 











