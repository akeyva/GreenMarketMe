# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'open-uri'

markets_json = JSON.parse(open("https://nycopendata.socrata.com/api/views/b7kx-qikm/rows.json?accessType=DOWNLOAD").read)

markets_json["data"].each do |market|
  Market.create(
    :name => market[9],
    :borough => market[8],
    :address => market[10],
    :days_open => market[11],
    :hours => market[12],
    :distribute_health_bucks => market[13],
    :accepts_health_bucks => market[14],
    :accepts_EBT => market[15],
    :stellar => market[16],
    :gmaps => true
  )



end