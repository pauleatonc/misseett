# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
City.destroy_all

cities = City.create([{ name: 'Concepción'}, { name: 'Valparaíso'}, { name: 'La Serena'},
{ name: 'Antofagasta'}, { name: 'Temuco'}, { name: 'Rancagua'}, { name: 'Iquique'},
{ name: 'Talca'}, { name: 'Arica'}, { name: 'Puerto Montt'}, { name: 'Chillán'},
{ name: 'Los Ángeles'}, { name: 'Calama'}, { name: 'Copiapó'}, { name: 'Osorno'},
{ name: 'Quillota'}, { name: 'Valdivia'}, { name: 'Punta Arenas'}, { name: 'San Antonio'},
{ name: 'Curicó'}, { name: 'Ovalle'}, { name: 'Linares'}, { name: 'Los Andes'},
{ name: 'Melipilla'}, { name: 'San Felipe'}])
