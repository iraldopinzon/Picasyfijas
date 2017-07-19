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

    def validar_picas 
    	picas= 0  
    	for i in(0..3)
    		if @numero[i] != @prueba[i]    			    		 
	    		for j in(0..3)
	    			if @numero[i] == @prueba[j]
	    			 	picas=picas+1
	    			end
	    		end
    		end

    	end 	
    	return picas
    end

    def resultado
    	picas=validar_picas
    	fijas=validar_fijas    	
    	if fijas==4
    		"Ganaste El numero #{@numero}"
    	else
    	   	"Tienes #{picas} picas y #{fijas} fijas"
    	end   	
    end	
end