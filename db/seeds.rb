# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)




User.create({
  "username"=> "cbishop0",
  "firstname"=> "Carol",
  "lastname"=>"Bishop",
  "email"=> "cbishop0@printfriendly.com",
  "password"=> "CoFF7DBfPJ",
  "birthdate"=> "1989-07-26"
})
User.create({
  "username"=> "sharper1",
  "firstname"=> "Shirley",
  "lastname"=>"Harper",
  "email"=> "sharper1@t.co",
  "password"=> "OPWup3kh",
  "birthdate"=> "1997-12-24"
})
User.create({
  "username"=> "lhoward2",
  "firstname"=> "Lawrence",
  "lastname"=>"Howard",
  "email"=> "lhoward2@mapquest.com",
  "password"=> "L6NLcFnjLeE",
  "birthdate"=> "1983-09-20"
})
User.create({
  "username"=> "sfoster3",
  "firstname"=> "Sandra",
  "lastname"=>"Foster",
  "email"=> "sfoster3@tiny.cc",
  "password"=> "eLKH4DwTWmX",
  "birthdate"=> "1992-02-26"
})
User.create({
  "username"=> "bporter4",
  "firstname"=> "Betty",
  "lastname"=>"Porter",
  "email"=> "bporter4@cisco.com",
  "password"=> "jptKdG",
  "birthdate"=> "1988-03-28"
})
User.create({
  "username"=> "cjackson5",
  "firstname"=> "Charles",
  "lastname"=>"Jackson",
  "email"=> "cjackson5@chicagotribune.com",
  "password"=> "dSauT1bfKTMC",
  "birthdate"=> "1992-01-14"
})
User.create({
  "username"=> "itucker6",
  "firstname"=> "Irene",
  "lastname"=>"Tucker",
  "email"=> "itucker6@feedburner.com",
  "password"=> "7i8RfFw",
  "birthdate"=> "1997-07-08"
})
User.create({
  "username"=> "rgreene7",
  "firstname"=> "Ruby",
  "lastname"=>"Greene",
  "email"=> "rgreene7@cornell.edu",
  "password"=> "cY71eB7fiU",
  "birthdate"=> "1993-02-13"
})
User.create({
  "username"=> "jwilliamson8",
  "firstname"=> "Jonathan",
  "lastname"=>"Williamson",
  "email"=> "jwilliamson8@storify.com",
  "password"=> "Dp31lZt9xl",
  "birthdate"=> "1987-12-24"
})
User.create({
  "username"=> "anelson9",
  "firstname"=> "Albert",
  "lastname"=> "Nelson",
  "email"=> "anelson9@nature.com",
  "password"=> "rgRaiEDpgUB",
  "birthdate"=> "1999-04-23"
})
User.create({
    "username"=>"RelativeEinstein",
    "firstname"=>"Albert",
    "lastname"=>"Einstein",
    "password"=>"123456",
    "birthdate"=>"1879-03-14",
    "email"=>"aeinstein@example.com",
})
User.create({
    "username"=>"1s44cN3wt0n",
    "firstname"=>"Isaac",
    "lastname"=>"Newton",
    "password"=>"123456",
    "birthdate"=>"1652-01-04",
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
    "content"=>"Excelente!",
    "user_id"=>"1",
    "project_id"=>"1",
})
Comment.create({
    "content"=>"Muy bueno",
    "user_id"=>"1",
    "project_id"=>"2",
})
Project.create({
    "title"=>"Place holder title",
    "video_link"=>"http://www.youtube.com/",
    "description"=>"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam sed massa non enim lacinia pulvinar in in nulla. ",
    "category_id"=>"1",
    "content"=>"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus
    volutpat odio eget faucibus egestas. Vivamus elementum orci eu dictum
    tristique. Proin et odio gravida, tincidunt tellus ac, cursus mauris. Fusce
    dolor odio, pharetra at dui quis, vehicula eleifend augue. Etiam porta
    condimentum felis id semper. Mauris bibendum justo sed elit scelerisque
    efficitur. Integer tempus mauris mi, a vehicula dolor maximus a. Aenean quam
    metus, convallis ut gravida eu, porta rutrum ligula. Duis mattis sed metus
    non ornare. Pellentesque vestibulum ac nulla in rhoncus. Praesent rutrum
    quam eu ante hendrerit tempor. Proin faucibus vehicula leo sed ullamcorper.
        Duis lectus ante, auctor id posuere ac, semper ac nibh. Cras eget purus
    vitae lorem maximus consequat eu non libero.
        
        Nunc placerat nisl a orci ultricies commodo. Phasellus rhoncus vitae
    tortor eget convallis. Morbi laoreet cursus mi, ut dignissim metus blandit
    a. Proin a vestibulum risus. Vivamus ornare, leo id viverra congue, risus
    dolor iaculis orci, in facilisis lectus dolor eget tortor. Lorem ipsum dolor
    sit amet, consectetur adipiscing elit. Phasellus ultrices cursus mauris ut
    scelerisque. Aenean fermentum commodo lectus vel interdum. Aenean at
    tincidunt metus, eget eleifend ligula. Pellentesque porttitor ipsum ut magna
    aliquet sagittis a et dolor. Quisque tellus lacus, faucibus a maximus ac,
        maximus eget tortor. Sed consectetur suscipit odio.
        
        Morbi sagittis libero sed nunc pharetra, non scelerisque erat volutpat.
        Aliquam varius dictum tellus a ultricies. Nunc mollis scelerisque massa
    nec tincidunt. Nullam id risus eu lorem congue ullamcorper sed sed nulla.
        Morbi lobortis faucibus sem, vitae tincidunt nulla suscipit at. Donec
    rutrum arcu cursus augue dignissim vestibulum tristique sit amet orci. In
    hac habitasse platea dictumst. Nulla id pellentesque libero, quis iaculis
    velit. Cras ut nisi vel sem interdum pretium sit amet sed enim. Donec
    suscipit fringilla nisi, sed sagittis augue placerat in. Donec tincidunt
    vehicula elementum."

})
Project.create({
    "title"=>"Lorem ipsum dolor sit amet",
    "video_link"=>"http://www.youtube.com/",
    "description"=>"Nunc placerat nisl a orci ultricies commodo. Phasellus rhoncus vitae tortor eget convallis. ",
    "category_id"=>"2",
    "content"=>"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus
    volutpat odio eget faucibus egestas. Vivamus elementum orci eu dictum
    tristique. Proin et odio gravida, tincidunt tellus ac, cursus mauris. Fusce
    dolor odio, pharetra at dui quis, vehicula eleifend augue. Etiam porta
    condimentum felis id semper. Mauris bibendum justo sed elit scelerisque
    efficitur. Integer tempus mauris mi, a vehicula dolor maximus a. Aenean quam
    metus, convallis ut gravida eu, porta rutrum ligula. Duis mattis sed metus
    non ornare. Pellentesque vestibulum ac nulla in rhoncus. Praesent rutrum
    quam eu ante hendrerit tempor. Proin faucibus vehicula leo sed ullamcorper.
        Duis lectus ante, auctor id posuere ac, semper ac nibh. Cras eget purus
    vitae lorem maximus consequat eu non libero.
        
        Nunc placerat nisl a orci ultricies commodo. Phasellus rhoncus vitae
    tortor eget convallis. Morbi laoreet cursus mi, ut dignissim metus blandit
    a. Proin a vestibulum risus. Vivamus ornare, leo id viverra congue, risus
    dolor iaculis orci, in facilisis lectus dolor eget tortor. Lorem ipsum dolor
    sit amet, consectetur adipiscing elit. Phasellus ultrices cursus mauris ut
    scelerisque. Aenean fermentum commodo lectus vel interdum. Aenean at
    tincidunt metus, eget eleifend ligula. Pellentesque porttitor ipsum ut magna
    aliquet sagittis a et dolor. Quisque tellus lacus, faucibus a maximus ac,
        maximus eget tortor. Sed consectetur suscipit odio.
        
        Morbi sagittis libero sed nunc pharetra, non scelerisque erat volutpat.
        Aliquam varius dictum tellus a ultricies. Nunc mollis scelerisque massa
    nec tincidunt. Nullam id risus eu lorem congue ullamcorper sed sed nulla.
        Morbi lobortis faucibus sem, vitae tincidunt nulla suscipit at. Donec
    rutrum arcu cursus augue dignissim vestibulum tristique sit amet orci. In
    hac habitasse platea dictumst. Nulla id pellentesque libero, quis iaculis
    velit. Cras ut nisi vel sem interdum pretium sit amet sed enim. Donec
    suscipit fringilla nisi, sed sagittis augue placerat in. Donec tincidunt
    vehicula elementum."
})
Project.create({
    "title"=>"Tum Torquatus: Prorsus, inquit, assentior",
    "video_link"=>"http://www.youtube.com/",
    "description"=>"Morbi sagittis libero sed nunc pharetra, non scelerisque erat volutpat.",
    "category_id"=>"1",
    "content"=>"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus
    volutpat odio eget faucibus egestas. Vivamus elementum orci eu dictum
    tristique. Proin et odio gravida, tincidunt tellus ac, cursus mauris. Fusce
    dolor odio, pharetra at dui quis, vehicula eleifend augue. Etiam porta
    condimentum felis id semper. Mauris bibendum justo sed elit scelerisque
    efficitur. Integer tempus mauris mi, a vehicula dolor maximus a. Aenean quam
    metus, convallis ut gravida eu, porta rutrum ligula. Duis mattis sed metus
    non ornare. Pellentesque vestibulum ac nulla in rhoncus. Praesent rutrum
    quam eu ante hendrerit tempor. Proin faucibus vehicula leo sed ullamcorper.
        Duis lectus ante, auctor id posuere ac, semper ac nibh. Cras eget purus
    vitae lorem maximus consequat eu non libero.
        
        Nunc placerat nisl a orci ultricies commodo. Phasellus rhoncus vitae
    tortor eget convallis. Morbi laoreet cursus mi, ut dignissim metus blandit
    a. Proin a vestibulum risus. Vivamus ornare, leo id viverra congue, risus
    dolor iaculis orci, in facilisis lectus dolor eget tortor. Lorem ipsum dolor
    sit amet, consectetur adipiscing elit. Phasellus ultrices cursus mauris ut
    scelerisque. Aenean fermentum commodo lectus vel interdum. Aenean at
    tincidunt metus, eget eleifend ligula. Pellentesque porttitor ipsum ut magna
    aliquet sagittis a et dolor. Quisque tellus lacus, faucibus a maximus ac,
        maximus eget tortor. Sed consectetur suscipit odio.
        
        Morbi sagittis libero sed nunc pharetra, non scelerisque erat volutpat.
        Aliquam varius dictum tellus a ultricies. Nunc mollis scelerisque massa
    nec tincidunt. Nullam id risus eu lorem congue ullamcorper sed sed nulla.
        Morbi lobortis faucibus sem, vitae tincidunt nulla suscipit at. Donec
    rutrum arcu cursus augue dignissim vestibulum tristique sit amet orci. In
    hac habitasse platea dictumst. Nulla id pellentesque libero, quis iaculis
    velit. Cras ut nisi vel sem interdum pretium sit amet sed enim. Donec
    suscipit fringilla nisi, sed sagittis augue placerat in. Donec tincidunt
    vehicula elementum."
})
Owner.create({
    "project_id"=>"1",
    "user_id"=>"2",
})
Owner.create({
    "project_id"=>"2",
    "user_id"=>"2",
})
Owner.create({
    "project_id"=>"3",
    "user_id"=>"1",
})
