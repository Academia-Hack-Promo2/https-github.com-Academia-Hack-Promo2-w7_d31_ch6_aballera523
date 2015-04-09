#!/usr/bin/ruby
# -*- coding: utf-8 -*-
# Alex Ballera;  alex@alexballera.com; +584120172898

=begin
AKINATOR
Crear un clon de Akinator pero solo para animales en ruby (akinator.rb) preguntando y validando la informacion suministrada por los usuarios hasta que finalmente se obtenga un animal final.

Para que este reto sea valido se debe tomar en cuenta:

1. No se deben usar bucles ni estructuras iterativas.
2. Debe estar validada toda la informacion cargada por el usuario con su respectivo feedback (si el juego termina repentinamente o no se explica al usuario el tipo de error se tomara como un fallo en la entrega)
3. No es necesario contemplar todos los animales existente, pero si es necesario que el juego sea al menos divertido (al menos 10 animales con caracteristicas distintas al final de cada set de preguntas).

Para mas referencia revisar http://es.akinator.com
=end
def welcome
  puts """
Hace algún tiempo, Arnaud y su amigo Jeff decidieron ir de viaje a las lejanas tierras del Este. Durante una expedición a lomos de un dromedario vieron en lo alto de una pequeña duna de arena un objeto que brillaba bajo los rayos del sol y les llamó su atención, por lo que descabalgaron al momento. ¡Se vieron muy sorprendidos al descubrir una vieja lámpara de aceite! Debía de haber estado enterrada allí durante muchos años hasta que los vientos del desierto la destaparon.
Jeff bromeó.
- ¡Ya sé! ¡Pide tres deseos y frótala, a lo mejor sale un genio!
Nada ocurrió tras el primer intento. Ni tras el segundo.
Tras el tercer intento, sin embargo, la lámpara comenzó a brillar y a calentarse rápidamente hasta que estaba tan caliente que Arnaud tuvo que dejarla caer sobre la arena.
Entonces, un humo denso salió de ella y formó una pequeña nube opaca. Poco a poco fue desvaneciéndose. Asombrados, vieron una criatura aparecer ante ellos. Tenía el aspecto de un hombre y parecía bastante simpático.
Se desperezaba, como si se acabara de despertar de un largo sueño. Entonces, una voz grave dijo: “Hola, soy el renovado Akinator. Hablo y entiendo todos los idiomas del mundo. Me habéis despertado de siglos de sueño. Pero este largo descanso no ha afectado a mis prodigiosas habilidades. Tengo la capacidad de adivinar en quién estáis pensando con sólo unas preguntas. Si no, si me ganáis entonces os dejaré en paz. ¡Pero cuidado! Responded bien a mis preguntas si no… ocuparéis mi lugar en la lámpara.”
Nuestros dos amigos tenían curiosidad, pero la advertencia del genio les hizo ser cautos. Respondieron de forma impecable a las preguntas y se dieron cuenta de que lo que el genio había dicho era cierto: adivinaba fácilmente quiénes eran los personajes que estaban pensando. Él estaba muy orgulloso de esta hazaña y comenzó a cantar y hablar, hablar, hablar… y no parecía parar nunca. Pedía más y más adivinanzas y siempre encontraba las respuestas. Parecía tener una energía inagotable y estar cada vez más encantado consigo mismo a medida que pasaba el tiempo.
Los dos viajeros intentaron escabullirse aprovechándose de su euforia, pero no lo consiguieron. El genio seguía flotando en el aire detrás de ellos, libre como el viento y pidiendo sin descanso que jugaran con él. Jeff cogió la lámpara. Volvieron hacia los dromedarios y Jeff, desconcertado, preguntó a su amigo:
“¿Qué vamos a hacer, Arnaud? Nos sigue a todas partes. ¡No nos desharemos de él nunca!”
“Lo vamos a llevar con nosotros a Francia. ¿Quiere descubrir personajes? Le daremos lo que él quiere”, dijo Arnaud.
Estas fueron las circunstancias que llevaron a Jeff y a Arnaud a crear la página web akinator.com. Akinator podría jugar día y noche con todo el mundo y así saciar su inagotable adicción.
Puedes intentar engañar a Akinaor. Verás que no es infalible. Pero ¡shh!... no le gusta oírlo. Y ten cuidado, debes responder de forma honesta. ¡Recuerda la aterradora advertencia de nuestro genio!

Presiona ENTER para comenzar
"""
pause = STDIN.gets
puts `clear`
puts """
Por favor escriba su nombre para comenzar a adivinar tus pensamientos \n"""
name = gets.chomp.capitalize.to_s
puts `clear`
puts "+"*64
puts """
Hola #{name} comencemos!!!
A continuación te mostrare 14 animales, de los cuales pensaras en solo UNO y te hare preguntas para adivinar tus pensamientos...
Solo debes responder 'SI' o 'NO' a cada pregunta\n
Estos son los animales:\n
\t Pato
\t Loro
\t Leon
\t Tiburón
\t Vaca
\t Perro
\t Ágila
\t Caballo
\t Gato
\t Buho
\t Delfin
\t Girafa
\t Canario
\t Gallina\n

Presiona ENTER para comenzar\n
"""
pause = STDIN.gets
#puts `clear`
return name
end

def game
  puts "¿El animal en quien piensas vuela?"
  answer = gets.chomp
  unless answer == 'si' || answer == 'Si'|| answer == 'SI' || answer == 'no' || answer == 'No' || answer == 'NO'
  puts """
Recuerda responder con un 'Si' o un 'No'...
...lo siento! vuelve a entrar al juego\n\n"""
  end
  if answer == 'si'
    puts "¿El animal en quien piensas es Rapaz o Cazador?"
    answer = gets.chomp
    unless answer == 'si' || answer == 'Si' || answer == 'SI' || answer == 'no' || answer == 'No' || answer == 'NO'
    puts """
Recuerda responder con un 'Si' o un 'No'...
...lo siento! vuelve a entrar al juego\n\n"""
    end
    if answer == 'si'
        puts '¿El animal en quien piensas es de Hábitos Nocturnos?'
        answer = gets.chomp
        unless answer == 'si' || answer == 'Si' || answer == 'SI' || answer == 'no' || answer == 'No' || answer == 'NO'
        puts """
    Recuerda responder con un 'Si' o un 'No'...
    ...lo siento! vuelve a entrar al juego\n\n"""
        end
        if answer == 'si'
        puts 'El Animal en quien piensas es "EL BÚHO"'
        puts "Mil gracias me encantó jugar contigo\n\n"
        else
        puts 'El Animal en quien piensas es "EL ÁGUILA"'
        puts "Mil gracias me encantó jugar contigo\n\n"
        end
    elsif answer == 'no'
      puts '¿El animal en quien piensas sirve de alimento al hombre?'
      answer = gets.chomp
      unless answer == 'si' || answer == 'Si' || answer == 'SI' || answer == 'no' || answer == 'No' || answer == 'NO'
      puts """
  Recuerda responder con un 'Si' o un 'No'...
  ...lo siento! vuelve a entrar al juego\n\n"""
      end
      if answer == 'si'
        puts '¿El animal en quien piensas le encanta nadar?'
        answer = gets.chomp
          unless answer == 'si' || answer == 'Si' || answer == 'SI' || answer == 'no' || answer == 'No' || answer == 'NO'
            puts """
            Recuerda responder con un 'Si' o un 'No'...
            ...lo siento! vuelve a entrar al juego\n\n"""
          end
        if answer == 'si'
          puts 'El Animal en quien piensas es "EL PATO"'
          puts "Mil gracias me encantó jugar contigo\n\n"
        else
          puts 'El Animal en quien piensas es "LA GALLINA"'
          puts "Mil gracias me encantó jugar contigo\n\n"
        end
      elsif answer == 'no'
        puts '¿El animal en quien piensas es de color verde?'
        answer = gets.chomp
          unless answer == 'si' || answer == 'Si' || answer == 'SI' || answer == 'no' || answer == 'No' || answer == 'NO'
          puts """
          Recuerda responder con un 'Si' o un 'No'...
          ...lo siento! vuelve a entrar al juego\n\n"""
        end
        if answer == 'si'
          puts 'El Animal en quien piensas es "EL LORO"'
          puts "Mil gracias me encantó jugar contigo\n\n"
        else
          puts 'El Animal en quien piensas es "EL CANARIO"'
          puts "Mil gracias me encantó jugar contigo\n\n"
        end
      end
    end
  elsif answer == 'no'
    puts '¿El animal en quien piensas está domesticado?'
    answer = gets.chomp
      unless answer == 'si' || answer == 'Si' || answer == 'SI' || answer == 'no' || answer == 'No' || answer == 'NO'
      puts """
      Recuerda responder con un 'Si' o un 'No'...
      ...lo siento! vuelve a entrar al juego\n\n"""
    end
    if answer == 'si'
      puts '¿El animal en quien piensas vive dentro de la casa?'
      answer = gets.chomp
        unless answer == 'si' || answer == 'Si' || answer == 'SI' || answer == 'no' || answer == 'No' || answer == 'NO'
        puts """
        Recuerda responder con un 'Si' o un 'No'...
        ...lo siento! vuelve a entrar al juego\n\n"""
      end
      if answer == 'si'
        puts "¿El animal en el llamado 'el mejor amigo del hombre'?"
        answer = gets.chomp
          unless answer == 'si' || answer == 'Si' || answer == 'SI' || answer == 'no' || answer == 'No' || answer == 'NO'
          puts """
          Recuerda responder con un 'Si' o un 'No'...
          ...lo siento! vuelve a entrar al juego\n\n"""
        end
        if answer == 'si'
          puts 'El Animal en quien piensas es "EL PERRO"'
          puts "Mil gracias me encantó jugar contigo\n\n"
        else
          puts 'El Animal en quien piensas es "EL GATO"'
          puts "Mil gracias me encantó jugar contigo\n\n"
        end
      elsif answer == 'no'
        puts "¿El animal produce leche para el consumo humano?"
        answer = gets.chomp
          unless answer == 'si' || answer == 'Si' || answer == 'SI' || answer == 'no' || answer == 'No' || answer == 'NO'
          puts """
          Recuerda responder con un 'Si' o un 'No'...
          ...lo siento! vuelve a entrar al juego\n\n"""
        end
        if answer == 'si'
          puts 'El Animal en quien piensas es "LA VACA"'
          puts "Mil gracias me encantó jugar contigo\n\n"
        else
          puts 'El Animal en quien piensas es "EL CABALLO"'
          puts "Mil gracias me encantó jugar contigo\n\n"
        end
      end
    elsif answer == 'no'
      puts "¿El animal en que piensas siempre está nadando?"
      answer = gets.chomp
        unless answer == 'si' || answer == 'Si' || answer == 'SI' || answer == 'no' || answer == 'No' || answer == 'NO'
        puts """
        Recuerda responder con un 'Si' o un 'No'...
        ...lo siento! vuelve a entrar al juego\n\n"""
      end
      if answer == 'si'
        puts "¿El animal es considerado uno de los más inteligentes del mundo?"
        answer = gets.chomp
          unless answer == 'si' || answer == 'Si' || answer == 'SI' || answer == 'no' || answer == 'No' || answer == 'NO'
          puts """
          Recuerda responder con un 'Si' o un 'No'...
          ...lo siento! vuelve a entrar al juego\n\n"""
        end
        if answer == 'si'
          puts 'El Animal en quien piensas es "EL DELFIN"'
          puts "Mil gracias me encantó jugar contigo\n\n"
        else
          puts 'El Animal en quien piensas es "EL TIBURÓN"'
          puts "Mil gracias me encantó jugar contigo\n\n"
        end
      elsif answer == 'no'
        puts "¿El animal tiene un cuello LAAAARGO?"
        answer = gets.chomp
          unless answer == 'si' || answer == 'Si' || answer == 'SI' || answer == 'no' || answer == 'No' || answer == 'NO'
          puts """
          Recuerda responder con un 'Si' o un 'No'...
          ...lo siento! vuelve a entrar al juego\n\n"""
        end
        if answer == 'si'
          puts 'El Animal en quien piensas es "LA JIRAFA"'
          puts "Mil gracias me encantó jugar contigo\n\n"
        else
          puts 'El Animal en quien piensas es "EL LEÓN"'
          puts "Mil gracias me encantó jugar contigo\n\n"
        end
      end
    end
  end
end

def main
  welcome
  game
end

main
