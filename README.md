# City Bikes

IRB CL app which mimics city bike rental from a docking station.

## Usage

>Launch IRB

```bash
>$ irb
```

>require and specify

```bash
>$ 2.7.0 :001 > require './path_to_file'

>$ 2.7.0 :001 > docking_station = DockingStation.new
```

program is used through the `action` method and possible choices can be viewed with the menu

`docking_station.menu`

---

## User Stories

As a member of the public,  
So that I am not confused and charged unnecessarily,  
Docking stations **will** release a bike is one is _present_.

```ruby
docking_station.action("release")
# output if available -> "A bike has been released from position N"
# output if empty -> # output -> "Dock is empty!"
```

---

As a technician,  
So that I can control the distribution of bikes,  
Docking stations **will** dock a bike if  _space is available_.

```ruby
docking_station.action("dock")
# output if available -> "The bike was stored in position N"
# output if full -> "Dock is full!"
```

---

As a member of the public,  
So I can decide which station to use,  
I want to **check** that a bike is available.

```ruby
docking_station.full?
#output -> true if docking station is full
```
