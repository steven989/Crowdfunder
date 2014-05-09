class PledgesController < ApplicationController


  def new
    @pledge = Pledge.new
  end

  
  def create
    @project = Project.find(params[:project_id])
    @tier = Tier.find(params[:tier_id])
    @user = current_user
    @pledge = Pledge.new
    @pledge.tier = @tier
    @pledge.user = @user


    respond_to do |format|
      if @pledge.save
        format.json { render :json => @project.total_amount }
      else
        render @project
      end

    end

  end


  private




end
