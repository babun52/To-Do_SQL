require('sinatra')
require('sinatra-contrib')
require('./lib/tasks')
also_reload('lib/**/*.rb')

get('/') do
  @task = Task.all()
  erb(:index)
end

post("/tasks") do
  description = params.fetch("description")
  task = Task.new(description)
  task.save()
  erb(:success)
end
