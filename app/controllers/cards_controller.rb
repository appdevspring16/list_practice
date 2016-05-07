class CardsController < ApplicationController
  def index
    @cards = Card.all
  end

  def show
    @card = Card.find(params[:id])
  end

  def new_form
    render("new.html.erb")
  end

  def create_row
    @card = Card.new
    @card.description = params[:the_description]
    @card.title = params[:the_title]

    @card.save
    redirect_to("/cards")
  end

  def edit_form
    @card = Card.find(params[:id])
    render("edit.html.erb")
  end

  def update_row
    @card = Card.find(params[:id])

    @card.title = params[:the_title]
    @card.description = params[:the_description]
    @card.save

    redirect_to("/cards/" + @card.id.to_s)
  end

  def destroy
    @card = Card.find(params[:id])
    @card.destroy

    redirect_to("/cards")
  end
end
