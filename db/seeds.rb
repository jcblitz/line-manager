# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#

Line::HatLine.create({name: 'Hat Line', people: [] }) if Line::HatLine.count == 0
Line::ShoeLine.create({name: 'Shoe Line', people: [] }) if Line::ShoeLine.count == 0
Line::DefaultLine.create({name: 'Default Line', people: [] }) if Line::DefaultLine.count == 0