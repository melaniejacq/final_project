class FeaturesController < ApplicationController
  def index
    @features = Feature.all

    render("features/index.html.erb")
  end

  def show
    @feature = Feature.find(params[:id])

    render("features/show.html.erb")
  end

  def new
    @feature = Feature.new

    render("features/new.html.erb")
  end

  def create
    @feature = Feature.new

    @feature.job_id = params[:job_id]
    @feature.attribute_id = params[:attribute_id]
    @feature.description = params[:description]

    save_status = @feature.save

    if save_status == true
      redirect_to("/features/#{@feature.id}", :notice => "Feature created successfully.")
    else
      render("features/new.html.erb")
    end
  end

  def edit
    @feature = Feature.find(params[:id])

    render("features/edit.html.erb")
  end

  def update
    @feature = Feature.find(params[:id])

    @feature.job_id = params[:job_id]
    @feature.attribute_id = params[:attribute_id]
    @feature.description = params[:description]

    save_status = @feature.save

    if save_status == true
      redirect_to("/features/#{@feature.id}", :notice => "Feature updated successfully.")
    else
      render("features/edit.html.erb")
    end
  end

  def destroy
    @feature = Feature.find(params[:id])

    @feature.destroy

    if URI(request.referer).path == "/features/#{@feature.id}"
      redirect_to("/", :notice => "Feature deleted.")
    else
      redirect_to(:back, :notice => "Feature deleted.")
    end
  end
end
