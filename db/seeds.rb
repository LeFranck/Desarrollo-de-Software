# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Project.create({
    "title"=>"ej1",
    "video_link"=>"http://www.youtube.com/",
    "description"=>"Breve descripcion de un proyecto...",
    "category_id"=>"1"
})
Project.create({
    "title"=>"ej2",
    "video_link"=>"http://www.youtube.com/",
    "description"=>"Breve descripcion de un proyecto...2",
    "category_id"=>"2"
})
Project.create({
    "title"=>"ej3",
    "video_link"=>"http://www.youtube.com/",
    "description"=>"Breve descripcion de un proyecto...3",
    "category_id"=>"1"
})
User.create({
    "username"=>"E_eq_MC2",
    "firstname"=>"Albert",
    "lastname"=>"Einstein",
    "password"=>"123456",
    "birthday"=>"1879-03-14",
    "email"=>"aeinstein@example.com",
})
User.create({
    "username"=>"IsaacN",
    "firstname"=>"Isaac",
    "lastname"=>"Newton",
    "password"=>"123456",
    "birthday"=>"1652-01-04",
    "email"=>"inewton@example.com",
})
Category.create({
    "name"=>"Otros",
})
Category.create({
    "name"=>"Lenguaje",
})
Category.create({
    "name"=>"Matematicas",
})
Category.create({
    "name"=>"Ingles",
})
Category.create({
    "name"=>"Computacion",
})
Category.create({
    "name"=>"Arte",
})
Category.create({
    "name"=>"Musica",
})
Category.create({
    "name"=>"Quimica",
})
Category.create({
    "name"=>"Fisica",
})
Category.create({
    "name"=>"Biologia",
})
Comment.create({
    "content"=>"excelente!",
    "user_id"=>"1",
    "project_id"=>"1",
})
Comment.create({
    "content"=>"Muy bueno",
    "user_id"=>"1",
    "project_id"=>"2",
})
