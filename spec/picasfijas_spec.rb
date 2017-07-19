require './lib/picasyfijas.rb'
describe Picasyfijas do
	it "should say:'false'" do
		#Arrange
		miPica = Picasyfijas.new 
		#Act
		result= miPica.validar_igual 
		#Assert
		expect(result).to eq false
      end

     it "should say:'true'" do
		#Arrange
		miPica = Picasyfijas.new 
		#Act
		result= miPica.validar_igual "1234"
		#Assert
		expect(result).to eq true
      end

     it "should say:'false'" do
		#Arrange
		miPica = Picasyfijas.new 
		#Act
		result= miPica.validar_igual "1235"
		#Assert
		expect(result).to eq false
      end
end