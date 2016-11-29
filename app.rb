require('sinatra')
require('sinatra/reloader')
require('./lib/task')
also_reload('lib/**/*.rb')

get('/') do
  @task = Task.all()
  erb(:index)
end

post("/task") do
  description = params.fetch("description")
  task = Task.new(description)
  task.save()
  erb(:success)
end
