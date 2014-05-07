class PledgesController < ApplicationController


  def new
    @pledge = Pledge.new
  end

  
  def create
    # @project = Project.find(params[:project_id])
    @tier = Tier.find(params[:tier_id])
    @pledge = Pledge.new
    @pledge.tier = @tier


    respond_to do |format|
      if @pledge.save
        format.json { render :json => @pledge.tier.amount }
      else
        render @project
      end

    end

  end


  private




end
