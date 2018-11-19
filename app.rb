require 'sinatra'
require 'newrelic_rpm'
require 'sinatra/reloader' if development?


english = ["About me", "Projects", "Skills", "Hi!", "My name is Sebastien,",
"I'm a self-taught web developer and passionated by the modern web! I like
working with today's technologies, exciting new design ideas. Personally I enjoy
the outdoors and archery!", "My skills are diverse and practical. I like working
in everything Front-End like HTML, CSS, and modern Javascript frameworks. I also
do Back-End with Ruby.", "Contact me at:", "Projects", "Skills"]

francais = ["Présentation", "Projets", "Compétences", "Bonjour!", "Mon nom est
Sébastien,", "je suis un développeur web autodidacte et passionné par le
web moderne! J'aime travailler avec les technologies d'aujourd'hui, avec de
nouvelles idées de design. Personellement, je suis passionné de la vie a
l'exterieur et l'archerie!", "Mes compétences sont diverses et pratiques. J'aime
travailler dans tout ce qui est frontal comme HTML, CSS, et les outils
Javascript modernes. Je fais aussi de l'interne avec Ruby.", "Contactez moi à:",
"Projets", "Compétences"]

projectsf = [
              ["Site Groupe de Musique", "C’est un modèle de site Web que j’ai
                créé pour mettre en valeur mes compétences en design et CSS.
                Ce projet particulier utilise une approche mobile d'abord et est
                construit en utilisant la technologie Flexbox."],
              ["Page touristique", "Ceci est également une maquette
                qui a été utilisée pour me mettre a jour sur la technology Css
                grid. Il comporte beaucoup caractéristique de design populaire,
                telle que l’image de fond intégrale et l'utilisation de
                boîtes de différentes opacitée."],
            ]

projectse = [
              ["Band Website", "This is a mockup website that I did to showcase
                 my skills in design and CSS. This particular project uses a
                 mobile-first approach and is build using the flexbox technology."],
              ["Tourism landing page", "This is also a mockup that was used to
                get me up to speed on the CSS grid technology. It features many
                popular design feature, such as complete background image and
                the use of different opacity boxes."],
            ]

get '/en' do
  @francais = false
  erb :index, :locals => { :language => english, :project =>projectse }
end

get '/fr' do
  @francais = true
  erb :index, :locals => { :language => francais, :project => projectsf }
end

get '/' do
  redirect '/en'
end

get '/band' do
  erb :band
end

get '/travel' do
  erb :travel
end
