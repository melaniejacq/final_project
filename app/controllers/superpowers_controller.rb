class SuperpowersController < ApplicationController
  def index
    @superpowers = Superpower.all
    # New code to only show current user's superpowers:
    # @superpowers = Superpower.where(:candidate_id => :current_candidate.id)
    
    render("superpowers/index.html.erb")
  end

  def show
    @superpower = Superpower.find(params[:id])

    render("superpowers/show.html.erb")
  end

  def new
    @superpower = Superpower.new

    render("superpowers/new.html.erb")
  end

  def create
    @superpower = Superpower.new

    @superpower.candidate_id = current_candidate.id
    @superpower.skill_id = params[:skill_id]
    @superpower.story = params[:story]

    save_status = @superpower.save

    if save_status == true
      redirect_to("/superpowers/#{@superpower.id}", :notice => "Superpower created successfully.")
    else
      render("superpowers/new.html.erb")
    end
  end

  def edit
    @superpower = Superpower.find(params[:id])

    render("superpowers/edit.html.erb")
  end

  def update
    @superpower = Superpower.find(params[:id])

    @superpower.candidate_id = params[:candidate_id]
    @superpower.skill_id = params[:skill_id]
    @superpower.story = params[:story]

    save_status = @superpower.save

    if save_status == true
      redirect_to("/superpowers/#{@superpower.id}", :notice => "Superpower updated successfully.")
    else
      render("superpowers/edit.html.erb")
    end
  end

  def destroy
    @superpower = Superpower.find(params[:id])

    @superpower.destroy

    if URI(request.referer).path == "/superpowers/#{@superpower.id}"
      redirect_to("/", :notice => "Superpower deleted.")
    else
      redirect_to("/superpowers", :notice => "Superpowers updated.")
    end
  end
end
