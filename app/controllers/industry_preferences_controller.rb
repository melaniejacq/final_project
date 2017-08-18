class IndustryPreferencesController < ApplicationController
  def index
    @industry_preferences = IndustryPreference.all

    render("industry_preferences/index.html.erb")
  end

  def show
    @industry_preference = IndustryPreference.find(params[:id])

    render("industry_preferences/show.html.erb")
  end

  def new
    @industry_preference = IndustryPreference.new

    render("industry_preferences/new.html.erb")
  end

  def create
    @industry_preference = IndustryPreference.new

    @industry_preference.candidate_id = current_candidate.id
    @industry_preference.industry_id = params[:industry_id]
    @industry_preference.classification = params[:classification]

    save_status = @industry_preference.save

    if save_status == true
      redirect_to("/industry_preferences/#{@industry_preference.id}", :notice => "Industry preference created successfully.")
    else
      render("industry_preferences/new.html.erb")
    end
  end

  def edit
    @industry_preference = IndustryPreference.find(params[:id])

    render("industry_preferences/edit.html.erb")
  end

  def update
    @industry_preference = IndustryPreference.find(params[:id])

    @industry_preference.candidate_id = params[:candidate_id]
    @industry_preference.industry_id = params[:industry_id]
    @industry_preference.classification = params[:classification]

    save_status = @industry_preference.save

    if save_status == true
      redirect_to("/industry_preferences/#{@industry_preference.id}", :notice => "Industry preference updated successfully.")
    else
      render("industry_preferences/edit.html.erb")
    end
  end

  def destroy
    @industry_preference = IndustryPreference.find(params[:id])

    @industry_preference.destroy

    if URI(request.referer).path == "/industry_preferences/#{@industry_preference.id}"
      redirect_to("/", :notice => "Industry preference deleted.")
    else
      redirect_to(:back, :notice => "Industry preference deleted.")
    end
  end
end
