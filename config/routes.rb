Rails.application.routes.draw do
  # Routes for the Card resource:
  # CREATE
  get("/cards/new", {:controller => "cards", :action => "new_form"})
  get("/create_card", {:controller => "cards", :action => "create_row"})

  # READ
  get("/cards/", {:controller => "cards", :action => "index"})
  get("/cards/:id", {:controller => "cards", :action => "show"})

  # UPDATE
  get("/cards/:id/edit", {:controller => "cards", :action => "edit_form"})
  get("/update_card/:id", {:controller => "cards", :action => "update_row"})

  # DELETE
  get("/delete_card/:id", {:controller => "cards", :action => "destroy"})
  #------------------------------

  # Routes for the List resource:
  #CREATE

  # READ
  get("/lists", {:controller => "lists", :action => "index"})
  get("/lists/:id", {:controller => "lists", :action => "show"})

  #UPDATE

  #DELETE
end
