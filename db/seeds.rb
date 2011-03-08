# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

Exhibidor.create(:canal => '/hospital/laboratorio_a') # exh #1
Exhibidor.create(:canal => '/hospital/laboratorio_a') # exh #2
Exhibidor.create(:canal => '/hospital/laboratorio_b') # exh #3

