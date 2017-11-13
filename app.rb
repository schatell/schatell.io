require 'sinatra'
require 'sinatra/reloader' if development?

english = ["About me", "Projects", "Skills", "Hi!", "My name is Sebastien,",
"I'm a self-taught web developer. I'm passionated by the modern
web! I like working with today's technologies and working with exciting new
design ideas!", "My skills are diverse and practical. I like working in
everything Front-End like HTML, CSS, and modern Javascript frameworks. I also do
Back-End with Ruby.", "Contact me at:", "Projects", "Skills"]

francais = ["Présentation", "Projets", "Compétences", "Bonjour!", "Mon nom est
Sébastien", "Je suis un développeur web autodidacte. Je suis passionné par le
web moderne! J'aime travailler avec les technologies d'aujourd'hui et travailler
avec de nouvelles idées de design!", "Mes compétences sont diverses et pratiques.
J'aime travailler dans tout ce qui est frontal comme HTML, CSS, et les outils
Javascript modernes. Je fais aussi de l'interne avec Ruby.", "Contacter moi à:",
"Projets", "Compétences"]

project1f = []

project2f = []

project3f = []

project4f = []

project1e = []

project2e = []

project3e = []

project4e = []

get '/en' do
  @francais = false
  erb :index, :locals => { :language => english, :project1 => project1e,
  :project2 => project2e, :project3 => project3e, :project4 => project4e }
end

get '/fr' do
  @francais = true
  erb :index, :locals => { :language => francais, :project1 => project1f,
  :project2 => project2f, :project3 => project3f, :project4 => project4f }
end

get '/' do
  redirect '/en'
end
