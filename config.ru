require 'sinatra/base'

require('./controllers/application')
require('./controllers/task')
require('./models/')

map('/') { run TaskController }
