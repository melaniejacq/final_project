class RequirementsController < ApplicationController
  def index
    @requirements = Requirement.all

    render("requirements/index.html.erb")
  end

  def show
    @requirement = Requirement.find(params[:id])

    render("requirements/show.html.erb")
  end

  def new
    @requirement = Requirement.new

    render("requirements/new.html.erb")
  end

  def create
    @requirement = Requirement.new

    @requirement.job_id = params[:job_id]
    @requirement.skill_id = params[:skill_id]
    @requirement.use_case = params[:use_case]

    save_status = @requirement.save

    if save_status == true
      redirect_to("/requirements/#{@requirement.id}", :notice => "Requirement created successfully.")
    else
      render("requirements/new.html.erb")
    end
  end

  def edit
    @requirement = Requirement.find(params[:id])

    render("requirements/edit.html.erb")
  end

  def update
    @requirement = Requirement.find(params[:id])

    @requirement.job_id = params[:job_id]
    @requirement.skill_id = params[:skill_id]
    @requirement.use_case = params[:use_case]

    save_status = @requirement.save

    if save_status == true
      redirect_to("/requirements/#{@requirement.id}", :notice => "Requirement updated successfully.")
    else
      render("requirements/edit.html.erb")
    end
  end

  def destroy
    @requirement = Requirement.find(params[:id])

    @requirement.destroy

    if URI(request.referer).path == "/requirements/#{@requirement.id}"
      redirect_to("/", :notice => "Requirement deleted.")
    else
      redirect_to(:back, :notice => "Requirement deleted.")
    end
  end
end
