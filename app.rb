require 'sinatra'
require 'rewrelic_rpm'
require 'sinatra/reloader' if development?

require "sinatra/config_file"

config_file 'newrelic.yml'

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
              ["Archery3dvantage", "Ceci est mon projet personnel. J'ai
                construit cette application web en collaboration avec ma femme,
                également développeur Web. Il s'agit d'un site Web qui vous aide
                à garder une trace de vos scores en tir à l'arc 3D. Il aide
                également l'utilisateur à identifier les erreurs courantes par
                type de cible."],
              ["Projet3"],
              ["Projet4"]
            ]

projectse = [
              ["Ruby-Mastermind", "This is the first real project I did entirely
                on my own. It's an adaptation of the famous Mastermind board
                game. The main challenges consisted of giving automatic feedback
                to the user, and writing a (pretty stupid) AI to compete against
                the user."],
              ["Archery3dvantage", "This is my personal pet project. I built
                this web app teaming with my wife, also a web developer.
                This is a website that helps you keep track of your scores in 3d
                archery. It also helps the user to identify common mistake by
                target type."],
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
