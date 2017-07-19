class Anfitrion
 
    def initialize idioma ="ES"
        @idioma = idioma
    end
 
    def saludar nombre ="mundo",hora = Time.now.hour
       
        case hora
        when (0..11) then
            if @idioma == "ES"
                "Buenos dias #{nombre}"
            elsif @idioma == "EN"
                "Good morning #{nombre}"
            else
                "no conozco ese idioma"
            end
        when (12..18) then
            if @idioma == "ES"
                "Buenas tardes #{nombre}"
            elsif @idioma == "EN"
                "Good afternoon #{nombre}"
            else
                "no conozco ese idioma"
            end
        when (19..23) then
            if @idioma == "ES"
                "Buenas noches #{nombre}"
            elsif @idioma == "EN"
                "Good evening #{nombre}"
            else
                "no conozco ese idioma"
            end
        end
 
    end
end
 
anfitrion = Anfitrion.new "EN"
puts anfitrion.saludar "Jose",10