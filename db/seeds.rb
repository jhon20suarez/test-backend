# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(email: 'usuario@gmail.com', password: 'pass123456')
DocumentType.create([{code: '13', name: 'Cedula de Ciudadania', abbreviation: 'CC'},
                    {code: '31', name: 'NIT', abbreviation: 'NIT'},
                    {code: '12', name: 'Tarjeta de identidad', abbreviation: 'TI'}])
Gender.create([{code: 'F', name: 'Femenino'},{code: 'M', name: 'Maculino'}])
Country.create([{code: 'CO', name: 'Colombia'}])
Department.create([{code: '73', name: 'TOLIMA', country_id: 1},
                    {code: '05', name: 'ANTIOQUIA', country_id: 1},
                    {code: '08', name: 'ATLANTICO', country_id: 1}])
City.create([{code: '73001', name: 'IBAGUE', department_id: 1},
            {code: '73024', name: 'ALPUJARRA', department_id: 1},
            {code: '73026', name: 'ALVARADO', department_id: 1},
            {code: '73030', name: 'AMBALEMA', department_id: 1},
            {code: '73043', name: 'ANZOATEGUI', department_id: 1}])
Client.create([{identification: '93370456', full_name: 'Edwin Ramirez', birthdate: '1990-01-01',document_type_id: 1, gender_id: 1, city_id: 1},
            {identification: '1110527212', full_name: 'Johan Snedier Rivas', birthdate: '1990-01-01',document_type_id: 1, gender_id: 1, city_id: 1},
            {identification: '1110510999', full_name: 'Koren Alexander Rivas', birthdate: '1990-01-01',document_type_id: 1, gender_id: 1, city_id: 1}])
