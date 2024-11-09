class MentorsController < ApplicationController
  def index
    @mentors = Mentor.all #exibindo uma lista de mentoras
  end

  def show
    @mentor = Mentor.find(params[:id]) #exibindo uma mentora com id do paramentro
  end
end
