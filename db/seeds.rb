# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

project_one = Project.create name: 'New Name', description: 'Thing'
project_two = Project.create name: 'Another project', description: 'Another thing'

project_one.entries.create hours: 10, minutes: 10, comments: 'done'   
project_one.entries.create hours: 2, minutes: 10, comments: 'Ok'   
project_one.entries.create hours: 5, minutes: 11, comments: 'not done'  
project_two.entries.create hours: 7, minutes: 16, comments: 'undone'   
project_two.entries.create hours: 1, minutes: 18, comments: 'blabla'   
project_two.entries.create hours: 3, minutes: 30, comments: 'right'    
