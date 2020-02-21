require 'docking_station.rb'

describe DockingStation do
	# it {is_expected.to respond_to(:release_bike)}
	# it { expect(subject.release_bike).to be_working }

	context ".dock_bike" do
	
		it "will dock a given bike if there is space" do
			expect(subject.dock_bike).to eq "Thank you, your bike has been stored in position [1]"
		end
	
		it "will reject me if there is no space" do
			expect{subject.dock_bike}.not_to change{:@@dock}#.from("Empty").to("Occupied")
		end

	end
	context ".view" do
		it "will show if bike exists" do
			expect(subject.view).to eq false
		end
	end

	context ".release_bike, bike availability" do
		it "no bikes" do
			expect{ subject.release_bike }.to raise_error("NO NO NO NO NO")		
		end
		# it 'dock is full' do
		# end
		# it 'dock multiple bikes' do
		# end
 	end
end



# class_variable_get
# assigns()
