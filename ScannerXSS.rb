#!usr/bin/ruby
#-----------------------------------------------------------------------------------------------
#  Escaner XSS en Ruby. Sencillo y eficaz.
#  Watir necesita especificar con qué navegador abrir los enlaces. Se puede modificar más abajo.
#-----------------------------------------------------------------------------------------------
require "watir"

puts "\n\nESCANER XSS v0.1\n\nIntroduce URL o IP:\n"
STDOUT.flush
web=gets.chomp

puts "\n\nIntroduce el nombre de diccionario para atacar\nen formato '.txt': (debe estar en la misma ruta del script)\n"
STDOUT.flush
dic=gets.chomp

puts "\n+ Se atacará -> #{web}\n+ Usando el diccionario -> #{dic}\n+ Suerte...\n\n"
	
	File.open(dic,'r') do |file|
        	file.each do |line|
        	browser = Watir::Browser.new :firefox #Cambia ':firefox' por el nombre del navegador que uses
        	browser.goto("#{web}" + line)
	end
end
