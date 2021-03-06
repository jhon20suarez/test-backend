# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(email: 'usuario@gmail.com', password: 'pass123456')
Api::DocumentType.create([{code: '13', name: 'Cedula de Ciudadania', abbreviation: 'CC'},
                    {code: '31', name: 'NIT', abbreviation: 'NIT'},
                    {code: '12', name: 'Tarjeta de identidad', abbreviation: 'TI'}])
Api::Gender.create([{code: 'F', name: 'Femenino'},{code: 'M', name: 'Maculino'}])
Api::Country.create([{code: 'CO', name: 'Colombia'}])
Api::Department.create([{code: '73', name: 'TOLIMA', country_id: 1},
                    {code: '05', name: 'ANTIOQUIA', country_id: 1},
                    {code: '08', name: 'ATLANTICO', country_id: 1}])
Api::City.create([{code: '73001', name: 'IBAGUE', department_id: 1},
            {code: '73024', name: 'ALPUJARRA', department_id: 1},
            {code: '73026', name: 'ALVARADO', department_id: 1},
            {code: '73030', name: 'AMBALEMA', department_id: 1},
            {code: '73043', name: 'ANZOATEGUI', department_id: 1}])
Api::Client.create([{identification: '93370456', full_name: 'Edwin Ramirez', birthdate: '1990-01-01',document_type_id: 1, gender_id: 1, city_id: 1},
            {identification: '1110527212', full_name: 'Johan Snedier Rivas', birthdate: '1990-01-01',document_type_id: 1, gender_id: 1, city_id: 1},
            {identification: '1110510999', full_name: 'Koren Alexander Rivas', birthdate: '1990-01-01',document_type_id: 1, gender_id: 1, city_id: 1},
            {identification: '19010189', full_name: 'Xandra Roach', birthdate: '20-06-2000',document_type_id: 1, gender_id: 1, city_id: 1},
            {identification: '22012481', full_name: 'Mari Faulkner', birthdate: '05-06-1996',document_type_id: 1, gender_id: 2, city_id: 1},
            {identification: '32982019', full_name: 'Kiona Owens', birthdate: '03-08-2006',document_type_id: 1, gender_id: 1, city_id: 1},
            {identification: '23945885', full_name: 'Kylynn Beck', birthdate: '17-10-1987',document_type_id: 1, gender_id: 1, city_id: 1},
            {identification: '38000949', full_name: 'Erin Ross', birthdate: '06-09-2013',document_type_id: 1, gender_id: 2, city_id: 1},
            {identification: '38944598', full_name: 'Pearl Lloyd', birthdate: '23-09-2005',document_type_id: 1, gender_id: 1, city_id: 1},
            {identification: '33655895', full_name: 'Rosalyn Bridges', birthdate: '24-07-2020',document_type_id: 1, gender_id: 2, city_id: 1},
            {identification: '27588162', full_name: 'Gloria Bean', birthdate: '04-09-2009',document_type_id: 1, gender_id: 1, city_id: 1},
            {identification: '39011510', full_name: 'Idola Vaughn', birthdate: '10-02-1999',document_type_id: 1, gender_id: 1, city_id: 1},
            {identification: '19292400', full_name: 'Meghan Palmer', birthdate: '24-09-2015',document_type_id: 1, gender_id: 1, city_id: 1},
            {identification: '23216059', full_name: 'Amaya English', birthdate: '03-03-1994',document_type_id: 1, gender_id: 2, city_id: 1},
            {identification: '23452222', full_name: 'Charlotte Barlow', birthdate: '28-02-1986',document_type_id: 1, gender_id: 2, city_id: 1},
            {identification: '18374810', full_name: 'Lani Norman', birthdate: '20-09-2009',document_type_id: 1, gender_id: 1, city_id: 1},
            {identification: '11102028', full_name: 'Felicia Allen', birthdate: '02-01-2021',document_type_id: 1, gender_id: 1, city_id: 1},
            {identification: '40320213', full_name: 'Winter Wagner', birthdate: '30-04-2006',document_type_id: 1, gender_id: 2, city_id: 1},
            {identification: '44133891', full_name: 'Ava Solomon', birthdate: '08-09-2014',document_type_id: 1, gender_id: 1, city_id: 1},
            {identification: '29211935', full_name: 'Hedy Rivers', birthdate: '10-02-2015',document_type_id: 1, gender_id: 1, city_id: 1},
            {identification: '24653864', full_name: 'Sophia Forbes', birthdate: '29-07-1986',document_type_id: 1, gender_id: 2, city_id: 1},
            {identification: '44957609', full_name: 'Brenna Carter', birthdate: '11-11-1994',document_type_id: 1, gender_id: 2, city_id: 1},
            {identification: '24628412', full_name: 'Melodie Rasmussen', birthdate: '19-05-2010',document_type_id: 1, gender_id: 2, city_id: 1},
            {identification: '14549572', full_name: 'Cheryl Burke', birthdate: '28-09-2000',document_type_id: 1, gender_id: 1, city_id: 1},
            {identification: '27951180', full_name: 'Selma Barton', birthdate: '19-11-2014',document_type_id: 1, gender_id: 1, city_id: 1},
            {identification: '34845656', full_name: 'Colette Salinas', birthdate: '03-08-2003',document_type_id: 1, gender_id: 1, city_id: 1},
            {identification: '12122681', full_name: 'Anjolie Gardner', birthdate: '09-11-1998',document_type_id: 1, gender_id: 2, city_id: 1},
            {identification: '32949550', full_name: 'Zorita Valentine', birthdate: '05-05-1986',document_type_id: 1, gender_id: 1, city_id: 1},
            {identification: '10975929', full_name: 'Jenna Mcbride', birthdate: '28-03-1990',document_type_id: 1, gender_id: 1, city_id: 1},
            {identification: '50712987', full_name: 'Brynn Fisher', birthdate: '21-08-1991',document_type_id: 1, gender_id: 2, city_id: 1},
            {identification: '26185290', full_name: 'Briar Barton', birthdate: '09-04-1992',document_type_id: 1, gender_id: 1, city_id: 1},
            {identification: '20227796', full_name: 'Teegan Mcknight', birthdate: '16-02-1996',document_type_id: 1, gender_id: 2, city_id: 1},
            {identification: '36064589', full_name: 'Hayfa Burgess', birthdate: '24-02-2014',document_type_id: 1, gender_id: 1, city_id: 1},
            {identification: '37951879', full_name: 'Hillary Cooke', birthdate: '13-03-1991',document_type_id: 1, gender_id: 1, city_id: 1},
            {identification: '49529838', full_name: 'Tatum Duran', birthdate: '06-11-1988',document_type_id: 1, gender_id: 1, city_id: 1},
            {identification: '9795004', full_name: 'Yen Christian', birthdate: '25-03-1995',document_type_id: 1, gender_id: 2, city_id: 1},
            {identification: '7856030', full_name: 'Mollie Neal', birthdate: '02-07-2018',document_type_id: 1, gender_id: 2, city_id: 1},
            {identification: '41582594', full_name: 'Adrienne Cox', birthdate: '15-02-1986',document_type_id: 1, gender_id: 1, city_id: 1},
            {identification: '47073052', full_name: 'Christen Palmer', birthdate: '24-07-2015',document_type_id: 1, gender_id: 2, city_id: 1},
            {identification: '27225745', full_name: 'Holly Reid', birthdate: '09-11-1987',document_type_id: 1, gender_id: 1, city_id: 1},
            {identification: '17147970', full_name: 'Maris Wise', birthdate: '20-10-2019',document_type_id: 1, gender_id: 2, city_id: 1},
            {identification: '24974683', full_name: 'Ginger Jackson', birthdate: '01-09-2000',document_type_id: 1, gender_id: 1, city_id: 1},
            {identification: '41257853', full_name: 'Melinda Holmes', birthdate: '02-01-2005',document_type_id: 1, gender_id: 1, city_id: 1},
            {identification: '48923465', full_name: 'Briar Clay', birthdate: '27-09-2011',document_type_id: 1, gender_id: 2, city_id: 1},
            {identification: '46364311', full_name: 'India Dalton', birthdate: '16-09-2012',document_type_id: 1, gender_id: 2, city_id: 1},
            {identification: '46154525', full_name: 'Holly Mcgowan', birthdate: '25-04-1998',document_type_id: 1, gender_id: 2, city_id: 1},
            {identification: '8857056', full_name: 'Wilma Callahan', birthdate: '10-06-2008',document_type_id: 1, gender_id: 2, city_id: 1},
            {identification: '30607875', full_name: 'Indigo Leon', birthdate: '14-08-1990',document_type_id: 1, gender_id: 1, city_id: 1},
            {identification: '29257705', full_name: 'Indigo Hunt', birthdate: '27-10-2018',document_type_id: 1, gender_id: 1, city_id: 1},
            {identification: '27512069', full_name: 'Lavinia Steele', birthdate: '26-11-2005',document_type_id: 1, gender_id: 2, city_id: 1},
            {identification: '31595115', full_name: 'Mariko Park', birthdate: '03-08-2009',document_type_id: 1, gender_id: 1, city_id: 1},
            {identification: '50156640', full_name: 'Juliet House', birthdate: '17-02-1996',document_type_id: 1, gender_id: 1, city_id: 1},
            {identification: '18864722', full_name: 'Shoshana Bowers', birthdate: '30-11-2008',document_type_id: 1, gender_id: 2, city_id: 1},
            {identification: '14101993', full_name: 'Yetta Joyner', birthdate: '17-09-2000',document_type_id: 1, gender_id: 2, city_id: 1},
            {identification: '8427272', full_name: 'Joy Dyer', birthdate: '15-10-2019',document_type_id: 1, gender_id: 1, city_id: 1},
            {identification: '24624415', full_name: 'Anne Forbes', birthdate: '28-09-1996',document_type_id: 1, gender_id: 2, city_id: 1},
            {identification: '32991015', full_name: 'Idola Dennis', birthdate: '21-04-2015',document_type_id: 1, gender_id: 2, city_id: 1},
            {identification: '18102189', full_name: 'Quemby Peck', birthdate: '01-12-2016',document_type_id: 1, gender_id: 2, city_id: 1},
            {identification: '45813551', full_name: 'Simone Cotton', birthdate: '27-06-2008',document_type_id: 1, gender_id: 2, city_id: 1},
            {identification: '6295347', full_name: 'Quincy Madden', birthdate: '11-07-1996',document_type_id: 1, gender_id: 2, city_id: 1},
            {identification: '39129433', full_name: 'Ivy Norman', birthdate: '11-06-2003',document_type_id: 1, gender_id: 2, city_id: 1},
            {identification: '33524686', full_name: 'Brielle Mcneil', birthdate: '10-03-1992',document_type_id: 1, gender_id: 1, city_id: 1},
            {identification: '41444555', full_name: 'Yuri Boyle', birthdate: '27-05-2018',document_type_id: 1, gender_id: 1, city_id: 1},
            {identification: '31004891', full_name: 'Gloria Clay', birthdate: '01-12-2011',document_type_id: 1, gender_id: 2, city_id: 1},
            {identification: '20944708', full_name: 'India Melendez', birthdate: '07-10-1996',document_type_id: 1, gender_id: 2, city_id: 1},
            {identification: '19673197', full_name: 'Hillary Brennan', birthdate: '25-03-2021',document_type_id: 1, gender_id: 2, city_id: 1},
            {identification: '46295778', full_name: 'Sade Logan', birthdate: '12-12-2002',document_type_id: 1, gender_id: 2, city_id: 1},
            {identification: '45465588', full_name: 'Felicia Ford', birthdate: '23-10-1985',document_type_id: 1, gender_id: 2, city_id: 1},
            {identification: '50150895', full_name: 'Ursula Patel', birthdate: '18-10-2007',document_type_id: 1, gender_id: 1, city_id: 1},
            {identification: '34822321', full_name: 'Kristen Goodman', birthdate: '16-12-2009',document_type_id: 1, gender_id: 1, city_id: 1},
            {identification: '33912840', full_name: 'Sydnee Ewing', birthdate: '12-04-1997',document_type_id: 1, gender_id: 1, city_id: 1},
            {identification: '30936386', full_name: 'Sandra Contreras', birthdate: '13-10-2009',document_type_id: 1, gender_id: 2, city_id: 1},
            {identification: '16530069', full_name: 'Sonia Wright', birthdate: '03-06-2002',document_type_id: 1, gender_id: 2, city_id: 1},
            {identification: '28551034', full_name: 'Jordan Robbins', birthdate: '20-02-2014',document_type_id: 1, gender_id: 2, city_id: 1},
            {identification: '28401483', full_name: 'Karly Holloway', birthdate: '13-10-2002',document_type_id: 1, gender_id: 1, city_id: 1},
            {identification: '40920364', full_name: 'Calista Cannon', birthdate: '16-07-1986',document_type_id: 1, gender_id: 2, city_id: 1},
            {identification: '45282970', full_name: 'Lenore Stephenson', birthdate: '14-03-1995',document_type_id: 1, gender_id: 2, city_id: 1},
            {identification: '48365657', full_name: 'Paula Robertson', birthdate: '29-02-1988',document_type_id: 1, gender_id: 2, city_id: 1},
            {identification: '6530800', full_name: 'Iona Faulkner', birthdate: '30-03-1993',document_type_id: 1, gender_id: 2, city_id: 1},
            {identification: '37399257', full_name: 'Jana Christensen', birthdate: '09-11-1992',document_type_id: 1, gender_id: 1, city_id: 1},
            {identification: '27311083', full_name: 'Rhiannon Puckett', birthdate: '13-11-1989',document_type_id: 1, gender_id: 2, city_id: 1},
            {identification: '33703116', full_name: 'Idona Puckett', birthdate: '18-10-1997',document_type_id: 1, gender_id: 1, city_id: 1},
            {identification: '26971117', full_name: 'Rebecca Gill', birthdate: '07-12-1998',document_type_id: 1, gender_id: 2, city_id: 1},
            {identification: '32350930', full_name: 'Rowan Williamson', birthdate: '24-02-1997',document_type_id: 1, gender_id: 1, city_id: 1},
            {identification: '20403341', full_name: 'Joelle Maldonado', birthdate: '02-01-1991',document_type_id: 1, gender_id: 1, city_id: 1},
            {identification: '24525997', full_name: 'Dakota Trujillo', birthdate: '11-01-2010',document_type_id: 1, gender_id: 2, city_id: 1},
            {identification: '41502527', full_name: 'Vielka Smith', birthdate: '18-06-2014',document_type_id: 1, gender_id: 1, city_id: 1},
            {identification: '36266918', full_name: 'Adara Todd', birthdate: '21-01-2004',document_type_id: 1, gender_id: 1, city_id: 1},
            {identification: '11099279', full_name: 'Tara Petersen', birthdate: '12-12-1993',document_type_id: 1, gender_id: 1, city_id: 1},
            {identification: '28558462', full_name: 'Keely Hyde', birthdate: '25-10-2019',document_type_id: 1, gender_id: 2, city_id: 1},
            {identification: '15015637', full_name: 'Savannah Davis', birthdate: '06-05-2006',document_type_id: 1, gender_id: 2, city_id: 1},
            {identification: '33120671', full_name: 'May Peterson', birthdate: '21-05-1997',document_type_id: 1, gender_id: 1, city_id: 1},
            {identification: '39452805', full_name: 'Tashya Sloan', birthdate: '27-04-1989',document_type_id: 1, gender_id: 2, city_id: 1},
            {identification: '47596592', full_name: 'Keiko Sharp', birthdate: '09-03-1991',document_type_id: 1, gender_id: 2, city_id: 1},
            {identification: '20998302', full_name: 'Kiona Walter', birthdate: '08-05-1989',document_type_id: 1, gender_id: 2, city_id: 1},
            {identification: '37743545', full_name: 'Halla Singleton', birthdate: '21-07-2000',document_type_id: 1, gender_id: 2, city_id: 1},
            {identification: '42790267', full_name: 'Alexa Chandler', birthdate: '04-08-2011',document_type_id: 1, gender_id: 1, city_id: 1},
            {identification: '46272096', full_name: 'Maxine Carr', birthdate: '24-05-2017',document_type_id: 1, gender_id: 1, city_id: 1},
            {identification: '29831049', full_name: 'Charde Blackwell', birthdate: '11-02-2012',document_type_id: 1, gender_id: 2, city_id: 1},
            {identification: '36712261', full_name: 'Virginia Slater', birthdate: '06-08-2014',document_type_id: 1, gender_id: 1, city_id: 1},
            {identification: '26023230', full_name: 'Jasmine Madden', birthdate: '25-03-1999',document_type_id: 1, gender_id: 2, city_id: 1},
            {identification: '47041797', full_name: 'Jolie Maddox', birthdate: '11-07-1998',document_type_id: 1, gender_id: 1, city_id: 1},
            {identification: '47212597', full_name: 'Lilah Elliott', birthdate: '16-12-1997',document_type_id: 1, gender_id: 2, city_id: 1}])
