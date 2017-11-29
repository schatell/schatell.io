require 'sinatra'
require 'sinatra/reloader' if development?

english = ["About me", "Projects", "Skills", "Hi!", "My name is Sebastien,",
"I'm a self-taught web developer. I'm passionated by the modern
web! I like working with today's technologies and working with exciting new
design ideas!", "My skills are diverse and practical. I like working in
everything Front-End like HTML, CSS, and modern Javascript frameworks. I also do
Back-End with Ruby.", "Contact me at:", "Projects","Technologies Used", "Skills", "Soft-Skills",
"Tech-Skills"]

francais = ["Présentation", "Projets", "Compétences", "Bonjour!", "Mon nom est
Sébastien", "Je suis un développeur web autodidacte. Je suis passionné par le
web moderne! J'aime travailler avec les technologies d'aujourd'hui et travailler
avec de nouvelles idées de design!", "Mes compétences sont diverses et pratiques.
J'aime travailler dans tout ce qui est frontal comme HTML, CSS, et les outils
Javascript modernes. Je fais aussi de l'interne avec Ruby.", "Contacter moi à:",
"Projets", "Technologie Utilisé", "Compétences", "Qualités Personnelles", "Connaissances Techniques"]

projectsf = [
              ["Ruby-Mastermind", "C'est le premier vrai projet que j'ai fait
                seul, il s'agit d'une adaptation du fameux jeu de plateau
                'Mastermind'", "Les principaux défis consistaient à donner un
                retour d'information automatique à l'utilisateur et à écrire
                une IA (assez stupide) pour concurrencer l'utilisateur."],
              ["Projet2"],
              ["Projet3"],
              ["Projet4"]
            ]

projectse = [
              ["Ruby-Mastermind", "This is the first real project I did entirely
                on my own. It's an adaptation of the famous Mastermind board
                game.", " The main challenges consisted of giving automatic feedback
                to the user, and writing a (pretty stupid) AI to compete against
                the user."],
              ["Project2"],
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
