class TaskController < ApplicationController

  #read (list)
  get '/' do
@tasks = Task.all
# @tasksName = Task.name
# @tasksDescription = Task.description
    # 1. get a list of all task models
    # and set it to the @tasks variable

    # return view
    erb :read
  end

  #create
  get '/create' do

    # return view
    erb :create
  end
  post '/create' do
    @task = Task.new
    @task.name = params[:name]
    @task.description = params[:desc]
    @task.save
    @tasks = Task.all

    # 2. Check the `params` hash and
    # the create view. Notice the keys
    # being passed in along with the values.
    # Take these values and create a *new*
    # instance of your Task model.
    # Assign it to a variable called @task
    # update the attributes withn the values
    # from params. Then save it!

    # return view
    @message = 'You task was added!'
    erb :message
  end

  #update
  get '/update/:id' do
    #  return Task.find(params[:id])
     @task = Task.find(params[:id])


    # 3. We should be getting params[:id]
    # here. Let's find our model and return it.
    # Since we know the `id` of the model, we
    # should have no problem finding it?
    # Assign it the @task instance variable.
    # This view will not render until the code works.

    # return view
    erb :update
  end
  post '/update' do
    @task = Task.find(params[:id])
    @task.name = params[:name]
    @task.description = params[:desc]
    @task.save
    @tasks = Task.all

    # 4. Just like create, we need to find our model.
    # Then update the attributes and save it!
    # Let's assing our model to the task.
    # Shhh... we've used a *hidden* input on the :update
    # view to hold the id. This is so users can't try
    # to edit it! Sneaky, sneaky.

    # return view
    @message = 'You task was updated!'
    erb :message
  end

  #destroy
  get '/destroy/:id' do
    @task = Task.find(params[:id])
    # return Task.find(params[:id])

    # @task.destroy
    # @task.save
 # Note: Do we need to save after destroy?
    # 5. We should be getting params[:id]
    # here. Let's find our model and return it.
    # Since we know the `id` of the model, we
    # should have no problem finding it?
    # We need it for our view.

    # return view
    erb :destroy
  end
  post '/destroy' do
    @task = Task.find(params[:id])
    @task.destroy
    # 6. We should be getting params[:id]
    # here. Let's find our model and return it.
    # Since we know the `id` of the model, we
    # should have no problem finding it?
    # Then, we just need to remove it from
    # our database table.

    # return view
    @message = 'You task was destroyed! BUAHAHAHA'
    erb :message
  end


end
