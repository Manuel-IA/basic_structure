# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
roles = Role.create([
  { id: 1, role_type_id: 1, name: 'Branch Manager', acronym: 'BM', status_id: 1 },
  { id: 2, role_type_id: 2, name: 'Claim Specialist', acronym: 'CS', status_id: 1 },
  { id: 3, role_type_id: 2, name: 'Client Specialist', acronym: 'CLS', status_id: 1 },
  { id: 4, role_type_id: 2, name: 'Payment Specialist', acronym: 'PS', status_id: 1 },
  { id: 5, role_type_id: 1, name: 'Repair Process Manager', acronym: 'RPM', status_id: 1 },
  { id: 6, role_type_id: 1, name: 'Paint Manager', acronym: 'PM', status_id: 1 },
  { id: 7, role_type_id: 3, name: 'Bodyment Operator', acronym: 'BDOP', status_id: 1 },
  { id: 8, role_type_id: 3, name: 'Prepare Operator', acronym: 'PPOP', status_id: 1 },
  { id: 9, role_type_id: 3, name: 'Detailer Operator', acronym: 'DTOP', status_id: 1 },
  { id: 10, role_type_id: 3, name: 'Scanner Operator', acronym: 'SCOP', status_id: 1 },
  { id: 11, role_type_id: 3, name: 'Painter Operator', acronym: 'PTOP', status_id: 1 },
  { id: 12, role_type_id: 3, name: 'Sanding Operator', acronym: 'SDOP', status_id: 1 },
  { id: 13, role_type_id: 3, name: 'Mechanic Operator', acronym: 'MCOP', status_id: 1 },
  { id: 14, role_type_id: 3, name: 'Electronic Operator', acronym: 'ETOP', status_id: 1 }
])