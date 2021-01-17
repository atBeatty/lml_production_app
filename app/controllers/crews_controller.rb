class CrewsController < ApplicationController
  before_action :set_crew, only: [:show, :update, :destroy]

  def index
    @crews = Crew.all

    render json: @crews, include: [:crew_members, :production]
  end

  def show
    render json: @crew, include: [:crew_members, :production]
  end

  def create
    @crew = Crew.new(crew_params)

    
    if @crew.save
      params["crewMembers"].each do |member, value|
        @crew.crew_members << CrewMember.create(name: member["name"], email: member["email"], rate: member["rate"], role: member["role"], employer: member["employer"])
      end

      render json: @crew, include: [:crew_members, :production], status: :created, location: @crew
    else
      render json: @crew.errors, status: :unprocessable_entity
    end
  end

  def update
    # binding.pry
    params["crewArray"].each do |member, value|
      @crew.crew_members << CrewMember.create(name: member["name"], email: member["email"], rate: member["rate"].to_i, role: member["role"], employer: member["employer"])
      @crew.save
      render json: @crew, include: [:crew_members, :production]
    end

    # if @crew.update(crew_params)
    #   render json: @crew, include: [:crew_members, :production]
    # else
    #   render json: @crew.errors, status: :unprocessable_entity
    # end
  end

  def destroy
    @crew.destroy
  end

  private
    def set_crew
      @crew = Crew.find(params[:id])
    end

    def crew_params
      params.require(:crew).permit(:rating, :comments, :crew_id, crew_members_attributes: [:name, :email, :rate, :employer, :role, :crew_id])
    end
end



