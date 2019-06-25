Project.destroy_all
User.destroy_all
Gender.destroy_all
Specification.destroy_all
Product.destroy_all
Brand.destroy_all
Continent.destroy_all
Country.destroy_all
State.destroy_all
City.destroy_all

ProjectTraffic.destroy_all
ProjectType.destroy_all
ProductType.destroy_all
Event.destroy_all
# Brand_plan.destroy_all

User.create!(email: 'paul.ermat@gmail.com', password: '123456', firstname: 'Paul', lastname: 'Eaton')
Gender.create!([{ name: 'Male' }, { name: 'Female' }, { name: 'Other' }])

# Brand_plan.create!([{ name: 'Inicial', description: '3 meses de prueba como Brand Manager', price: 0 },
#                     { name: 'Semestral', description: '6 meses como Brand Manager', price: 500 },
#                     { name: 'Anual', description: '1 año como Brand Manager', price: 1000 }])

america = Continent.create(name: 'America del Sur')

chile = Country.create(name: 'Chile', continent: america)

arica = State.create(name: 'Arica y Parinacota', country: chile)
tarapaca = State.create(name: 'Tarapacá', country: chile)
antofagasta = State.create(name: 'Antofagasta', country: chile)
atacama = State.create(name: 'Atacama', country: chile)
coquimbo = State.create(name: 'Coquimbo', country: chile)
valparaiso = State.create(name: 'Valparaíso', country: chile)
santiago = State.create(name: 'Metropolitana de Santiago', country: chile)
ohiggins = State.create(name: "Libertador General Bernardo O'Higgins", country: chile)
maule = State.create(name: 'Maule', country: chile)
nuble = State.create(name: 'Ñuble', country: chile)
biobio = State.create(name: 'Biobío', country: chile)
araucania = State.create(name: 'La Araucanía', country: chile)
los_rios = State.create(name: 'Los Ríos', country: chile)
los_lagos = State.create(name: 'Los Lagos', country: chile)
aysen = State.create(name: 'Aysén del General Carlos Ibáñez del Campo', country: chile)
magallanes = State.create(name: 'Magallanes y de la Antártica Chilena', country: chile)

City.create!([{ name: 'Concepción', state: biobio }, { name: 'Valparaíso', state: valparaiso },
              { name: 'La Serena', state: coquimbo }, { name: 'Antofagasta', state: antofagasta },
              { name: 'Temuco', state: araucania }, { name: 'Rancagua', state: ohiggins }, { name: 'Iquique', state: tarapaca },
              { name: 'Talca', state: maule }, { name: 'Arica', state: arica }, { name: 'Puerto Montt', state: los_lagos }, { name: 'Chillán', state: nuble },
              { name: 'Los Ángeles', state: biobio }, { name: 'Calama', state: antofagasta }, { name: 'Copiapó', state: atacama }, { name: 'Osorno', state: los_lagos },
              { name: 'Quillota', state: valparaiso }, { name: 'Valdivia', state: los_rios }, { name: 'Punta Arenas', state: magallanes }, { name: 'San Antonio', state: valparaiso },
              { name: 'Curicó', state: maule }, { name: 'Ovalle', state: coquimbo }, { name: 'Linares', state: maule }, { name: 'Los Andes', state: valparaiso },
              { name: 'Melipilla', state: santiago }, { name: 'San Felipe', state: valparaiso }, { name: 'Coyaique', state: aysen },
              { name: 'Cerrillos', state: santiago }, { name: 'la reina', state: santiago }, { name: 'pudahuel', state: santiago },
              { name: 'Cerro Navia', state: santiago }, { name: 'Las Condes', state: santiago }, { name: 'Quilicura', state: santiago },
              { name: 'Conchalí', state: santiago }, { name: 'Lo Barnechea', state: santiago }, { name: 'Quinta Normal', state: santiago },
              { name: 'El Bosque', state: santiago }, { name: 'Lo Espejo', state: santiago }, { name: 'Recoleta', state: santiago },
              { name: 'Estacion Central', state: santiago }, { name: 'Lo Prado', state: santiago }, { name: 'Renca', state: santiago },
              { name: 'Huechuraba', state: santiago }, { name: 'Macul', state: santiago }, { name: 'San Miguel', state: santiago },
              { name: 'Independencia', state: santiago }, { name: 'Maipú', state: santiago }, { name: 'San Joaquin', state: santiago },
              { name: 'La Cisterna', state: santiago }, { name: 'Ñuñoa', state: santiago }, { name: 'San Ramón', state: santiago },
              { name: 'La Florida', state: santiago }, { name: 'Pedro Aguirre Cerda', state: santiago }, { name: 'Santiago', state: santiago },
              { name: 'La Pintana', state: santiago }, { name: 'Peñalolen', state: santiago }, { name: 'Vitacura', state: santiago },
              { name: 'La Granja', state: santiago }, { name: 'Providencia', state: santiago }, { name: 'Padre Hurtado', state: santiago },
              { name: 'San Bernardo', state: santiago }, { name: 'Puente Alto', state: santiago }, { name: 'Pirque', state: santiago },
              { name: 'San José de Maipo', state: santiago }, { name: 'Colina', state: santiago }, { name: 'Lampa', state: santiago },
              { name: 'Peñaflor', state: santiago }, { name: 'Talagante', state: santiago }, { name: 'Isla de Maipo', state: santiago },
              { name: 'El Monte', state: santiago }, { name: 'Paine', state: santiago }, { name: 'Calera de Tango', state: santiago }])

ProjectTraffic.create([{ category: 'Alto Trafico' }, { category: 'Tráfico medio' }, { category: 'Bajo tráfico' }])

ProjectType.create([{ category: 'Institucional' }, { category: 'Educacional' }, { category: 'Hospitalario' },
                    { category: 'Hotelero' }, { category: 'Inmobiliario' }, { category: 'residencial' }, { category: 'Comercial' },
                    { category: 'Oficina' }])

ProductType.create!([{ name: 'Puertas de Madera' }, { name: 'Quincalleria' }, { name: 'Puertas Metálicas' }])

# 6.times do
#   Brand.create!(
#     name: Faker::Company.name,
#     description: Faker::Company.catch_phrase,
#     contact: Faker::Movies::Lebowski.character,
#     email: Faker::Internet.email,
#     phone: Faker::PhoneNumber.phone_number,
#     address: Faker::Address.street_address,
#     city: City.all.sample,
#     user: User.first
#   )
# end
#
# 30.times do
#   Product.create!(
#     title: Faker::Commerce.product_name,
#     description: Faker::TvShows::MichaelScott.quote,
#     eett: Faker::Lorem.paragraph,
#     project_traffic: ProjectTraffic.all.sample,
#     project_type: ProjectType.all.sample,
#     product_type: ProductType.all.sample,
#     brand: Brand.all.sample
#   )
# end
