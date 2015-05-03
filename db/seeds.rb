# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Wine.where(name:'Morgon Jean Descombes').first_or_create!(year:'2011', winery:'Georges Duboeuf', country:'France', varietal:'Gamay')
Wine.where(name:'Brut Champagne').first_or_create!(year:'2004', winery:'Veuve Clicquot', country:'France', varietal:'Blend')
Wine.where(name:'Hess Select Cabernet Sauvignon').first_or_create!(year:'2011', winery:'Hess', country:'USA', varietal:'Cabernet Sauvignon')
Wine.where(name:'Montepulciano d\'Abruzzo').first_or_create!(year:'2003', winery:'Bosco', country:'Italy', varietal:'Montepulciano')
Wine.where(name:'Sonoma Coast Pinot Noir').first_or_create!(year:'2013', winery:'Schug', country:'USA', varietal:'Pinot Noir')
Wine.where(name:'Dona Paula Estate Malbec').first_or_create!(year:'2012', winery:'Dona Paula Estate', country:'Argentina', varietal:'Malbec')
