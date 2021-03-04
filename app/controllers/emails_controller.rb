class EmailsController < ApplicationController

	def index
    @emails = Email.all
    end

  def show
    @email.update(read: true)
    puts @email.id
    puts params
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js { }
    end

  end

  def create
    @email = Email.new(object: Faker::Book.title, body: Faker::Movies::HarryPotter.quote)
    @email.save
   	respond_to do |format|
      format.html { redirect_to root_path }
      format.js { }
    end
	end
 
 def update
    @email.update(read: !@email.read)
    respond_to do |format|
        format.html { redirect_to root_path }
        format.js { }
    end
  end


end
