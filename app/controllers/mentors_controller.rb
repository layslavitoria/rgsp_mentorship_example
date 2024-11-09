class MentorsController < ApplicationController
  def index
    @mentors = Mentor.all # exibindo uma lista de mentoras
  end

  def show
    @mentor = Mentor.find(params[:id]) # exibindo uma mentora com id do paramentro
  end

  def new
    @mentor = Mentor.new
  end

  def create
    @mentor = Mentor.new(mentor_params)

    if @mentor.save
      redirect_to @mentor
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def mentor_params
    params.expect(mentor: [ :name, :email, :skills, :age, :phone ])
  end
end
