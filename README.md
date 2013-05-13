**Topics** 
* rendering views
* partials
* layout

**Questions** 

How does Rails decide what view to render? Does it depend on what controller I'm inside?
```ruby
class UsersController < ApplicationController
  def new
    @user = User.new #to reference the user to the forms
  end
```

* The route determines the controller and action 
* Rails looks at current controller first 
* Within that controller's view folder - then looks for the action's name 

How do I pass variables to my views? To my partials? Is there more than one way?
* You can pass it with locals. Check out "_signup" partial

How does Rails differentiate between views and partials?
Render in a view, assumes its a partial where as Render in controller, knows to render the entire view.


What are some common ways I can use the render method?
http://guides.rubyonrails.org/layouts_and_rendering.html#using-render

Examples:
* render :json (how can you can return a json object, like to_json)
* render :file => filename, :content_type => 'application/rss'
* render :js => "console.log('Hello Skippers!');"


How does Rails handle layouts? Where do they live?
They live in the app/views/layouts - they are the public layouts that everyone can use. You can specify a different layout in your controller or anywhere else (i.e. renders) and create different folders in your "views".

What should I do if I want a view or partial available to multiple controllers, e.g., a common UI component? Where should that partial live in my application?
If you want a layout/partial available to the public, you'd add it to the app/views/layouts folder. This is your "public views folder"

**Topics**
* views and form helpers


How do image_tag and other asset helpers work? Where should you put your assets if you want Rails to link to them correctly?
You generally put your assets in the public folder, though you can add it anywhere (technically but would have to route it to that specific location. 

How do you handle server-side validation errors?




