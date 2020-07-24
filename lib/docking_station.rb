require_relative "bike"

class DockingStation

	def initialize
		@@dock = {
			:pos1 => "Empty",
			:pos2 => "Empty",
			:pos3 => "Empty",
			:pos4 => "Empty",
			:pos5 => "Empty",
			:pos6 => "Empty",
			:pos7 => "Empty",
			:pos8 => "Empty",
			:pos9 => "Empty",
			:pos0 => "Empty"
		}
		@release = lambda { |p| @@dock[p] = "Empty"; puts "A bike has been released from position #{p.to_s.chars[-1].to_i}"}
		@dock_to = lambda { |p| @@dock[p] = "Occupied"; puts "The bike was stored in position #{p.to_s.chars[-1].to_i}"}
	end

	def menu
		choices = {
			:"1" => "dock",
			:"2" => "release" 
		}

		puts "M E N U"
		choices.each { |key, value|
			sleep(1.2)
			puts "#{key} - #{value}"
		}	
	end

	def full?
		@@dock.values.count("Occupied") == 10 ? true : false
	end

	def action(switch)
		case switch
		when "dock"
			@@dock.each { |position,value|
				if value == "Empty"
					@dock_to.call(position)
					break
				elsif full?() == true
					puts "Dock is full!"
					break
				end
			}
		when "release"				
			@@dock.each { |position,value|
				if value == "Occupied"
					@release.call(position)
					break
				end
			}	

		end 
	end
end