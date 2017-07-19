class Picasyfijas
	def initialize prueba="5678", numero ="1234"
        @numero = numero
        @prueba = prueba
    end

    def validar_igual prueba ="5678"
    	return prueba==@numero
    end

    def validar_fijas
    	fijas=0;
    	for i in(0..3)
    		if @numero[i] == @prueba[i]
    			fijas=fijas+1
    		end
    	end
    	return fijas
    end
end