require 'sinatra'
require 'newrelic_rpm'
require 'sinatra/reloader' if development?


english = ["About me", "Projects", "Skills", "Hi!", "My name is Sebastien,",
"I'm a self-taught web developer and passionated by the modern web! I like
working with today's technologies, exciting new design ideas, the outdoors and
archery!", "My skills are diverse and practical. I like working in everything
Front-End like HTML, CSS, and modern Javascript frameworks. I also do Back-End
with Ruby.", "Contact me at:", "Projects", "Skills"]

francais = ["Présentation", "Projets", "Compétences", "Bonjour!", "Mon nom est
Sébastien,", "je suis un développeur web autodidacte et passionné par le
web moderne! J'aime travailler avec les technologies d'aujourd'hui, avec de
nouvelles idées de design, la vie a l'exterieur et l'archerie!", "Mes
compétences sont diverses et pratiques. J'aime travailler dans tout ce qui est
frontal comme HTML, CSS, et les outils Javascript modernes. Je fais aussi de
l'interne avec Ruby.", "Contacter moi à:", "Projets", "Compétences"]

projectsf = [
              ["Ruby-Mastermind", "C'est le premier vrai projet que j'ai fait
                seul, il s'agit d'une adaptation du fameux jeu de plateau
                'Mastermind'. Les principaux défis consistaient à donner un
                retour d'information automatique à l'utilisateur et à écrire
                une IA (assez stupide) pour concurrencer l'utilisateur."],
              ["Site Groupe de Musique", "C’est un modèle de site Web que j’ai
                créé pour mettre en valeur mes compétences en design et CSS.
                Ce projet particulier utilise une approche mobile d'abord et est
                construit en utilisant la technologie Flexbox."],
              ["Projet3"],
              ["Projet4"]
            ]

projectse = [
              ["Ruby-Mastermind", "This is the first real project I did entirely
                on my own. It's an adaptation of the famous Mastermind board
                game. The main challenges consisted of giving automatic feedback
                to the user, and writing a (pretty stupid) AI to compete against
                the user."],
              ["Band Website", "This is a mockup website that I did to showcase
                 my skills in design and CSS. This particular project uses a
                 mobile-first approach and is build using the flexbox technology."],
              ["Project3"],
              ["Project4"]
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
