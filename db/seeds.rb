# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Product.destroy_all
#Provider.destroy_all
#Client.destroy_all
#StockByLocation.destroy_all
#
#
#Product.create(
#sku: 1223,
#name: 'tornillo 3/4',
#ean: '1234567890123',
#proveder: 'ferreteria don pepito',
#category: 'construccion',
#subcategory: 'tornillos',
#active: true
#)
#
#Provider.create(
#name: 'Proveedor 0001',
#direction: 'av uno 0001',
#payment_condition: '30 dias',
#phone: 0303456,
#email: 'a@aaaaa.cl',
#contact: 'Pepito Pepe'
#)
#
#Provider.create(
#name: 'Proveedor 0002',
#direction: 'av dos 0002',
#payment_condition: 'Contado',
#phone: 0303456,
#email: 'a@aaaaa.cl',
#contact: 'Pepito Pepito'
#)
#
#Client.create(
#name: 'Cliente 0001',
#direction: 'av uno 0001',
#payment_condition: '30 dias',
#phone: 0303456,
#email: 'a@aaaaa.cl',
#contact: 'Pepito Pepe'
#)
#
#Client.create(
#name: 'Cliente 0002',
#direction: 'av dos 0002',
#payment_condition: 'Contado',
#phone: 0303456,
#email: 'a@aaaaa.cl',
#contact: 'Pepito Pepito'
#)
#
#Location.create(
#    name: "Cuarentena",
#    category: "NO DISPONIBLE"
    
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?