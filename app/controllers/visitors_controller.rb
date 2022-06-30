class VisitorsController < ApplicationController
  def new
    Rails.logger.debug 'DEBUG: entering #new action'
    @owner = Owner.new
    Rails.logger.debug 'DEBUG: Owner name is ' + @owner.name
    Rails.logger.debug "\033[1;34;40m[DEBUG]\033[0m " + 'will appear in bold blue'
    # flash[:notice] = 'Welcome!'
    # flash[:alert] = 'My birthday is soon.'
  end
end
