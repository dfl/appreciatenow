# encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Appreciation.delete_all

[ 
  "=those things you consider as faults", "voice", "how much you love me", "=you— all of you",
  "tenderness", "smile", "the light behind your eyes", "farts", "vulnerability", "dirty mind",
  "smell", "smooth skin", "the gap between your teeth", "touch", "grace", "the way you listen so deeply",
  "gifts", "generosity"
].each{|a| Appreciation.fast_create(a) }

# Appreciation.new(what: " ").save(validation:false)