class ProgrammersController < ApplicationController
  def index
    @programmers = Programmer.all
  end

  def show
    @programmer = Programmer.find(params[:id])
    # @programmer_attributes = @programmer.
  end
end
