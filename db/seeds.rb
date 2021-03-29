Dir[File.join(Rails.root, 'db', 'seeds', '*.rb')].sort.each { |seed| load seed}
#la clase se llama dir. Fail.join= nos permite unir las carpetas de db y seets y nos une la ruta. Nos entrega un array. *rb cualquier archivo que sea .rb
# la ruta 'db', 'seeds', '*.rb' dentro de la carpeta seeds estan los archivos rb, esto sera el array que nos entregue, con todos los rb. 
#.sort nos ayuda a ordenar alfabeticamente. 
#.each carga este archivo