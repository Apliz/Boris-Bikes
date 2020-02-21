require_relative "bike"

class DockingStation

	attr_reader = :dock


	def initialize
		@@dock = {
			:pos1 => "Empty"
		}
	end


	def dock_bike

		@@dock.each { |position, value| 

			if value == "Empty" 
				@@dock[position] = "Occupied"
				return "Thank you, your bike has been stored in position [#{position.to_s.chars[-1].to_i}]" 
			else
				return "Dock is full!"
			end
		}


	end


	def view 
		false
	end


	def release_bike
		Bike.new
		raise "NO NO NO NO NO" unless view == true
	end

end