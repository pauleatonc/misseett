# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#City.destroy_all
Product.destroy_all
ProjectTraffic.destroy_all
ProjectType.destroy_all
Company.destroy_all

  # state = State.create
  #
  # cities = City.create!([{ name: 'Concepción'}, { name: 'Valparaíso'}, { name: 'La Serena'},
  # { name: 'Antofagasta'}, { name: 'Temuco'}, { name: 'Rancagua'}, { name: 'Iquique'},
  # { name: 'Talca'}, { name: 'Arica'}, { name: 'Puerto Montt'}, { name: 'Chillán'},
  # { name: 'Los Ángeles'}, { name: 'Calama'}, { name: 'Copiapó'}, { name: 'Osorno'},
  # { name: 'Quillota'}, { name: 'Valdivia'}, { name: 'Punta Arenas'}, { name: 'San Antonio'},
  # { name: 'Curicó'}, { name: 'Ovalle'}, { name: 'Linares'}, { name: 'Los Andes'},
  # { name: 'Melipilla'}, { name: 'San Felipe'}])


traffic = ProjectTraffic.create(category: "Alto Trafico")
type= ProjectType.create(category: "Institucional")
company = Company.create(name: "Simonswerk")


  15.times do
  Product.create(
  title: "Producto X",
  description: "Sirve para X",
  eett: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  project_traffic: traffic,
  project_type: type,
  company: company
    )
  end
