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

      it "should say:'1' fija" do
		#Arrange
		miPica = Picasyfijas.new "1235","1897"
		#Act
		result= miPica.validar_fijas
		#Assert
		expect(result).to eq 1
      end

      it "should say:'3' fija" do
		#Arrange
		miPica = Picasyfijas.new "1235","1275"
		#Act
		result= miPica.validar_fijas
		#Assert
		expect(result).to eq 3
      end

       it "should say:'4' fija" do
		#Arrange
		miPica = Picasyfijas.new "1235","1235"
		#Act
		result= miPica.validar_fijas
		#Assert
		expect(result).to eq 4
      end
end