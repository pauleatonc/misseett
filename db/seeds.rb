# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Gender.destroy_all
Product.destroy_all
Company.destroy_all
Continent.destroy_all
Country.destroy_all
State.destroy_all
City.destroy_all

ProjectTraffic.destroy_all
ProjectType.destroy_all
ProductType.destroy_all


america = Continent.create(name: 'America del Sur')
continen_nil = Continent.create(name: 'nil')

  chile = Country.create( name: 'Chile', continent: america)


  arica = State.create(name: 'Arica y Parinacota', country: chile )
  tarapaca = State.create(name: 'Tarapacá', country: chile )
  antofagasta = State.create(name: 'Antofagasta', country: chile )
  atacama = State.create(name: 'Atacama', country: chile )
  coquimbo = State.create(name: 'Coquimbo', country: chile )
  valparaiso = State.create(name: 'Valparaíso', country: chile )
  santiago = State.create(name: 'Metropolitana de Santiago', country: chile )
  ohiggins = State.create(name: "Libertador General Bernardo O'Higgins", country: chile )
  maule = State.create(name: 'Maule', country: chile )
  nuble = State.create(name: 'Ñuble', country: chile )
  biobio = State.create(name: 'Biobío', country: chile )
  araucania = State.create(name: 'La Araucanía', country: chile )
  los_rios = State.create(name: 'Los Ríos', country: chile )
  los_lagos = State.create(name: 'Los Lagos', country: chile )
  aysen = State.create(name: 'Aysén del General Carlos Ibáñez del Campo', country: chile )
  magallanes = State.create(name: 'Magallanes y de la Antártica Chilena', country: chile )


  cities = City.create!([{ name: 'Concepción', state: biobio }, { name: 'Valparaíso', state: valparaiso },
  { name: 'La Serena', state: coquimbo}, { name: 'Antofagasta', state: antofagasta},
  { name: 'Temuco', state: araucania}, { name: 'Rancagua', state: ohiggins}, { name: 'Iquique', state: tarapaca},
  { name: 'Talca', state: maule}, { name: 'Arica', state: arica}, { name: 'Puerto Montt', state: los_lagos}, { name: 'Chillán', state: nuble},
  { name: 'Los Ángeles', state: biobio}, { name: 'Calama', state: antofagasta}, { name: 'Copiapó', state: atacama}, { name: 'Osorno', state: los_lagos},
  { name: 'Quillota', state: valparaiso}, { name: 'Valdivia', state: los_rios}, { name: 'Punta Arenas', state: magallanes}, { name: 'San Antonio', state: valparaiso},
  { name: 'Curicó', state: maule}, { name: 'Ovalle', state: coquimbo}, { name: 'Linares', state: maule}, { name: 'Los Andes', state: valparaiso},
  { name: 'Melipilla', state: santiago}, { name: 'San Felipe', state: valparaiso}, { name: 'Coyaique', state: aysen},
  { name: 'Cerrillos', state: santiago}, { name: 'la reina', state: santiago}, { name: 'pudahuel', state: santiago},
  { name: 'Cerro Navia', state: santiago}, { name: 'Las Condes', state: santiago}, { name: 'Quilicura', state: santiago},
  { name: 'Conchalí', state: santiago}, { name: 'Lo Barnechea', state: santiago}, { name: 'Quinta Normal', state: santiago},
  { name: 'El Bosque', state: santiago}, { name: 'Lo Espejo', state: santiago}, { name: 'Recoleta', state: santiago},
  { name: 'Estacion Central', state: santiago}, { name: 'Lo Prado', state: santiago}, { name: 'Renca', state: santiago},
  { name: 'Huechuraba', state: santiago}, { name: 'Macul', state: santiago}, { name: 'San Miguel', state: santiago},
  { name: 'Independencia', state: santiago}, { name: 'Maipú', state: santiago}, { name: 'San Joaquin', state: santiago},
  { name: 'La Cisterna', state: santiago}, { name: 'Ñuñoa', state: santiago}, { name: 'San Ramón', state: santiago},
  { name: 'La Florida', state: santiago}, { name: 'Pedro Aguirre Cerda', state: santiago}, { name: 'Santiago', state: santiago},
  { name: 'La Pintana', state: santiago}, { name: 'Peñalolen', state: santiago}, { name: 'Vitacura', state: santiago},
  { name: 'La Granja', state: santiago}, { name: 'Providencia', state: santiago}, { name: 'Padre Hurtado', state: santiago},
  { name: 'San Bernardo', state: santiago}, { name: 'Puente Alto', state: santiago}, { name: 'Pirque', state: santiago},
  { name: 'San José de Maipo', state: santiago}, { name: 'Colina', state: santiago}, { name: 'Lampa', state: santiago},
  { name: 'Peñaflor', state: santiago}, { name: 'Talagante', state: santiago}, { name: 'Isla de Maipo', state: santiago},
  { name: 'El Monte', state: santiago},{ name: 'Paine', state: santiago},{ name: 'Calera de Tango', state: santiago},
  ])

  noncities = City.create!( name: 'indefinido', state: santiago )

traffic = ProjectTraffic.create(category: "Alto Trafico")
type= ProjectType.create(category: "Institucional")
company = Company.create!([{name: "Simonswerk", city: noncities}, {name: "", city: noncities}])
product_type = ProductType.create!([{name: 'Puertas de Madera'}, {name: 'Quincalleria'}, {name: 'Puertas Metálicas'}])

  15.times do
  Product.create(
  title: "Producto X",
  description: "Sirve para X",
  eett: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  project_traffic: traffic,
  project_type: type,
  product_type: product_type.first,
  company: company.first

    )
  end
