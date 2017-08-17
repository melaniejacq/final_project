class AttributesController < ApplicationController
  def index
    @attributes = Attribute.all

    render("attributes/index.html.erb")
  end

  def show
    @attribute = Attribute.find(params[:id])

    render("attributes/show.html.erb")
  end

  def new
    @attribute = Attribute.new

    render("attributes/new.html.erb")
  end

  def create
    @attribute = Attribute.new

    @attribute.name = params[:name]
    @attribute.description = params[:description]

    save_status = @attribute.save

    if save_status == true
      redirect_to("/attributes/#{@attribute.id}", :notice => "Attribute created successfully.")
    else
      render("attributes/new.html.erb")
    end
  end

  def edit
    @attribute = Attribute.find(params[:id])

    render("attributes/edit.html.erb")
  end

  def update
    @attribute = Attribute.find(params[:id])

    @attribute.name = params[:name]
    @attribute.description = params[:description]

    save_status = @attribute.save

    if save_status == true
      redirect_to("/attributes/#{@attribute.id}", :notice => "Attribute updated successfully.")
    else
      render("attributes/edit.html.erb")
    end
  end

  def destroy
    @attribute = Attribute.find(params[:id])

    @attribute.destroy

    if URI(request.referer).path == "/attributes/#{@attribute.id}"
      redirect_to("/", :notice => "Attribute deleted.")
    else
      redirect_to(:back, :notice => "Attribute deleted.")
    end
  end
end
