# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Appointment.destroy_all
Physician.destroy_all
Patient.destroy_all


 phy1=Physician.create(name: "Dr. Jackson")
 phy2=Physician.create(name: "Dr. Ryder")
 phy3=Physician.create(name: "Dr. Joweh")
 
 
 pat1=Patient.create(name: "Augustus Stark")
 pat2=Patient.create(name: "Sohmne Bohdy")
 pat3=Patient.create(name: "Apontmenie Tynomela03-25nister")

 Appointment.create(appointment_date:'2015-03-25', patient_id:pat1.id, physician_id:phy1.id)
 Appointment.create(appointment_date:'2015-04-26', patient_id:pat2.id,physician_id:phy2.id)
 Appointment.create(appointment_date:'2015-5-27', patient_id:pat3.id,physician_id:phy3.id)

 puts "physician size: #{Physician.all.length}"
 puts "patient size: #{Patient.all.length}"
 puts "appointment size: #{Appointment.all.length}" 