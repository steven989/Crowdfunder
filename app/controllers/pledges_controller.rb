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


        total = Project.total_amount(@project.id)
  
        if total >= @project.goal

          ProjectMailer.goal_reached(@project).deliver
          
        end


        format.json { render :json => {:pledge_total => Project.total_amount(@project),
                                       :pledge_count => @pledge.tier.pledges.count }}

      else
        render @project
      end

    end

  end


  private




end
