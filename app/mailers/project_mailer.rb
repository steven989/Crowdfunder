class ProjectMailer < ActionMailer::Base
  default from: "from@example.com"

  def goal_reached(project)
    
    @project = project

    mail(to: @project.user.email, subject: "Your project #{@project.title} has reached its funding goal of #{@project.goal}!")

  end 

end
