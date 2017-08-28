class JobTypeMatchesController < ApplicationController
  def index
    @job_type_matches = JobTypeMatch.all

    render("job_type_matches/index.html.erb")
  end

  def show
    @job_type_match = JobTypeMatch.find(params[:id])

    render("job_type_matches/show.html.erb")
  end

  def new
    @job_type_match = JobTypeMatch.new

    render("job_type_matches/new.html.erb")
  end

  def create
    @job_type_match = JobTypeMatch.new

    @job_type_match.candidate_id = current_candidate.id
    @job_type_match.job_type_id = params[:job_type_id]

    save_status = @job_type_match.save

    if save_status == true
      redirect_to("/job_type_matches/#{@job_type_match.id}", :notice => "Job type match created successfully.")
    else
      render("job_type_matches/new.html.erb")
    end
  end

  def edit
    @job_type_match = JobTypeMatch.find(params[:id])

    render("job_type_matches/edit.html.erb")
  end

  def update
    @job_type_match = JobTypeMatch.find(params[:id])

    @job_type_match.candidate_id = params[:candidate_id]
    @job_type_match.job_type_id = params[:job_type_id]

    save_status = @job_type_match.save

    if save_status == true
      redirect_to("/job_type_matches/#{@job_type_match.id}", :notice => "Job type match updated successfully.")
    else
      render("job_type_matches/edit.html.erb")
    end
  end

  def destroy
    @job_type_match = JobTypeMatch.find(params[:id])

    @job_type_match.destroy

    if URI(request.referer).path == "/job_type_matches/#{@job_type_match.id}"
      redirect_to("/job_type_matches", :notice => "Job type match deleted.")
    else
      redirect_to("/job_type_matches", :notice => "Job type match deleted.")
    end
  end
end
