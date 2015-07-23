# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

t53s_printer = Printer.where(name: '53S').first_or_create(name: '53S')
t53m_printer = Printer.where(name: '53M').first_or_create(name: '53M')
t53l_printer = Printer.where(name: '53L').first_or_create(name: '53L')
t53e_printer = Printer.where(name: '53E').first_or_create(name: '53E')

t53cr_printer = Printer.where(name: '53CR').first_or_create(name: '53CR')
t53cl_printer = Printer.where(name: '53CL').first_or_create(name: '53CL')

t107s_printer = Printer.where(name: '107S').first_or_create(name: '107S')
t107m_printer = Printer.where(name: '107M').first_or_create(name: '107M')
t107l_printer = Printer.where(name: '107L').first_or_create(name: '107L')

t107cr_printer = Printer.where(name: '107CR').first_or_create(name: '107CR')
t107cl_printer = Printer.where(name: '107CL').first_or_create(name: '107CL')