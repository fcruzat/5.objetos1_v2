# 1. Crear una clase carta, con pinta y número.
# 2. Pedir un input al usuario, si el usuario escribe “jugar” generar 5 cartas al azar.

# 3. Si el usuario escribe:
# 1. “mostrar”: Mostrar las 5 cartas en pantalla
# 2. “salir”: Terminar el programa.
# 3. "jugar": (otra vez) Se generan nuevas 5 cartas aleatorias.



class Carta
    def initialize
        @pintas = ["Corazones","Picas","Tréboles","Diamantes"]
        @numeros = ["As",2,3,4,5,6,7,8,9,10,"J","Q","K"]
        @mano = []    
    end
    
    def jugar
        5.times do
            @cartas = ["#{@numeros.sample} de #{@pintas.sample}"]
            @mano << @cartas
        end
        puts @mano
    end
    
    def mostrar
        puts @mano
    end
end


menu = ''
until menu == "Salir"
    puts "Menú:
    Mostrar
    Salir
    Jugar
    
    Escribe mostrar, jugar o salir"
    menu = (gets.chomp).capitalize
    if menu == "Jugar"
        c = Carta.new
        c.jugar
    elsif menu == "Mostrar"
        c.mostrar
    elsif menu == "Salir"
        puts "Adiós"
    else
        puts "Opción incorrecta, intente nuevamente"
    end
end
