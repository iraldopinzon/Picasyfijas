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

      it "should say:'4' picas" do
		#Arrange
		miPica = Picasyfijas.new "5321","1235"
		#Act
		result= miPica.validar_picas
		#Assert
		expect(result).to eq 4
      end

      it "should say:'2' picas" do
		#Arrange
		miPica = Picasyfijas.new "5321","7835"
		#Act
		result= miPica.validar_picas
		#Assert
		expect(result).to eq 2
      end
     it "should say:'2' picas '2' fijas"  do
		#Arrange
		miPica = Picasyfijas.new "5321","5231"
		#Act		
		result= miPica.resultado		
		#Assert
		expect(result).to eq "Tienes 2 picas y 2 fijas"
      end
           it "should say:'1' picas '1' fijas"  do
		#Arrange
		miPica = Picasyfijas.new "5398","5231"
		#Act		
		result= miPica.resultado		
		#Assert
		expect(result).to eq "Tienes 1 picas y 1 fijas"
      end

        it "should say:Ganaste El numero '5398'"  do
		#Arrange
		miPica = Picasyfijas.new "5398","5398"
		#Act		
		result= miPica.resultado		
		#Assert
		expect(result).to eq "Ganaste El numero 5398"
      end

end