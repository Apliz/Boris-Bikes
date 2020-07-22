require 'docking_station.rb'

describe DockingStation do

	context "action" do
		it "will dock a given bike if there is space" do
			# expect(subject.dock.count("Occupied")).to eq(1)
			expect(subject.action("dock")).to eq("A bike has been released from position 1")
		end
		it "will reject me if there is no space" do
			expect{subject.dock_bike}.not_to change{:@@dock}
		end
	end

	context ".view" do
		it "will return true if dock is full" do
			docking_station = DockingStation.new

			#expect(subject.release_bike).to eq("NO NO NO NO NO")
			expect(subject.view).to eq true
		end
		it "will return false if dock has availability" do
			expect(subject.view).to eq false
		end
	end

	context ".release_bike" do
		it "no bikes" do
			expect{ subject.release_bike }.to raise_error("NO NO NO NO NO")		
		end
 	end

end

