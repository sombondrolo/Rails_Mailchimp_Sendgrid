class VisitorsController < ApplicationController
  def new
    Rails.logger.debug 'DEBUG: entering #new action'
    @visitor = Visitor.new
    # Rails.logger.debug 'DEBUG: Visitor name is ' + @visitor.email
    Rails.logger.debug "\033[1;34;40m[DEBUG]\033[0m " + 'will appear in bold blue'
    # flash[:notice] = 'Welcome!'
    # flash[:alert] = 'My birthday is soon.'
  end

  def create
    @visitor = Visitor.new(secure_params)
    if @visitor.valid?
      @visitor.subscribe
      flash[:notice] = "Signed up #{@visitor.email}."
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def secure_params
    params.require(:visitor).permit(:email)
  end
end
