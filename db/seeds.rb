# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#cities = City.create([
#	{ no_ciudad: 'Lima/Callao' },
#	{ no_ciudad: 'Huacho' },
#	{ no_ciudad: 'Huaral' },
#	{ no_ciudad: 'Cañete' },
#	{ no_ciudad: 'Barranca' },
#	{ no_ciudad: 'Chancay' },
#	{ no_ciudad: 'Paramonga' },
#	])
districts = District.create([
	{ no_distrito: 'Breña'},
	{ no_distrito: 'La Victoria'},
	{ no_distrito: 'Lima'},
	{ no_distrito: 'Lince'},
	{ no_distrito: 'Rimac'},
	{ no_distrito: 'Barranco'},
	{ no_distrito: 'Jesus Maria'},
	{ no_distrito: 'La Molina'},
	{ no_distrito: 'Magdalena del Mar'},
	{ no_distrito: 'Miraflores'},
	{ no_distrito: 'Pueblo Libre'},
	{ no_distrito: 'San Borja'},
	{ no_distrito: 'San Isidro'},
	{ no_distrito: 'San Luis'},
	{ no_distrito: 'San Miguel'},
	{ no_distrito: 'Santiago de Surco'},
	{ no_distrito: 'Surquillo'},
	{ no_distrito: 'Ate'},
	{ no_distrito: 'Chaclacayo'},
	{ no_distrito: 'Cieneguilla'},
	{ no_distrito: 'El Agustino'},
	{ no_distrito: 'Lurigancho-Chosica'},
	{ no_distrito: 'San Juan de Lurigancho'},
	{ no_distrito: 'Santa Anita'},
	{ no_distrito: 'Ancón'},
	{ no_distrito: 'Carabayllo'},
	{ no_distrito: 'Comas'},
	{ no_distrito: 'Independencia'},
	{ no_distrito: 'Los Olivos'},
	{ no_distrito: 'Puente Piedra'},
	{ no_distrito: 'San Martin de Porres'},
	{ no_distrito: 'Santa Rosa'},
	{ no_distrito: 'Chorrillos'},
	{ no_distrito: 'Lurin'},
	{ no_distrito: 'Pachacamac'},
	{ no_distrito: 'Pucusana'},
	{ no_distrito: 'Punta Hermosa'},
	{ no_distrito: 'Punta Negra'},
	{ no_distrito: 'San Bartolo'},
	{ no_distrito: 'San Juan de Miraflores'},
	{ no_distrito: 'Santa Maria del Mar'},
	{ no_distrito: 'Villa el Salvador'},
	{ no_distrito: 'Villa Maria del Triunfo'},
	{ no_distrito: 'Bellavista'},
	{ no_distrito: 'Callao'},
	{ no_distrito: 'Carmen de la Legua'},
	{ no_distrito: 'La Perla'},
	{ no_distrito: 'La Punta'},
	{ no_distrito: 'Mi Perú'},
	{ no_distrito: 'Ventanilla'}
	])
tipo_streets = TipoStreet.create([
	{ no_tipo_via: 'Calle'},
	{ no_tipo_via: 'Avenida'},
	{ no_tipo_via: 'Plaza'},
	{ no_tipo_via: 'Jiron'},
	{ no_tipo_via: 'Mz'},
	{ no_tipo_via: 'Pasaje'}
	])
tipo_vehicles = TipoVehicle.create([
	{no_tipo: 'Sedan',nu_pasajeros: 4},
	{no_tipo: 'Camioneta/Van',nu_pasajeros: 8}
	])
statuses = Status.create([
	{no_status: "Pendiente"},
	{no_status: "Asignado"},
	{no_status: "En curso"},
	{no_status: "Finalizado"},
	{no_status: "Anulado"}
	])
payment_methods = PaymentMethod.create([
	{tx_descripcion: "Efectivo"},
	{tx_descripcion: "Tarjeta debito" },
	{tx_descripcion: "Tarjeta credito"}
	])AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')