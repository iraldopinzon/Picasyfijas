
require './anfitrion.rb'
describe Anfitrion do
	it "should say:'Buenos dias Jose'" do
		#Arrange
		miAnfitrion = Anfitrion.new "ES"
		#Act
		result= miAnfitrion.saludar "Jose", 10
		#Assert
		expect(result).to eq "Buenos dias Jose"
      end
	it "should say:'Good morning Jose" do
		#Arrange
		miAnfitrion = Anfitrion.new "EN"
		#Act
		result= miAnfitrion.saludar "Jose", 10
		#Assert
		expect(result).to eq "Good morning Jose"
      end
      	it "should say:'Buenas tarde Juan" do
		#Arrange
		miAnfitrion = Anfitrion.new "ES"
		#Act
		result= miAnfitrion.saludar "Juan", 13
		#Assert
		expect(result).to eq "Buenas tardes Juan"
      end

            	it "should say:'Buenas tarde Juan" do
		#Arrange
		miAnfitrion = Anfitrion.new "ES"
		#Act
		result= miAnfitrion.saludar "Juan", 13
		#Assert
		expect(result).to eq "Buenas tardes Juan"
      end
end