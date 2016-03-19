# Q0: Why is this error being thrown?
Because we don't have a class Pokemon. In this case, since we are using the method "where", it is clear that Pokemon should be a model.
So we still haven't created the model Pokemon and then the RoR can't find the name Pokemon.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
In the HomeController, index method, a random Pokemon without a trainer is being selected. Then the Home Index view shows the pokemon
if the current_trainer is set (i.e. trainer is logged in). The common factor between all the possible Pokemon that appear is that
they don't have trainers.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
It is creating a button with a link to capture_path. Capture_path is the path associated with the prefix capture. Since the path
associated with the prefix capture requires an id ("capture/:id"), we need to pass an id as parameter to the method capture path.
Suppose we pass the id 2. Then, we are creating a button that links to /capture/2 using the method PATCH.

# Question 3: What would you name your own Pokemon?
Igorumon

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I've passed `trainer_path(owner_id)` where `owner_is` is the id of the trainer who owns ( owned :'( ) the damaged pokemon.
The path needed the id so it can refer to `/trainers/id`

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
"Every time a validation fails, an error message is added to the object's errors collection."
"Anything you place in the flash will be exposed to the very next action and then cleared out."
So if the uniqueness or presence validation fails an error is added to the `@pokemon` object errors list.
Passing this as a String to the Flash makes the message be displayed in the next (and only in the next) action.
Sources:
http://api.rubyonrails.org/classes/ActionDispatch/Flash.html
http://guides.rubyonrails.org/active_record_validations.html


# Give us feedback on the project and decal below!
The project was fun and instructive. I'm very satisfied about taking this decal.
I love the Live Demos in class and the homeworks and projects are THE BEST.
Congratulations for the DeCal! It is really really good.

# Extra credit: Link your Heroku deployed app
