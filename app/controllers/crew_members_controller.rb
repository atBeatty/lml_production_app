class CrewMembersController < ApplicationController
  before_action :set_crew_member, only: [:show, :update, :destroy]

  # GET /crew_members
  def index
    @crew_members = CrewMember.all

    render json: @crew_members
  end

  # GET /crew_members/1
  def show
    render json: @crew_member
  end

  # POST /crew_members
  def create
    @crew_member = CrewMember.new(crew_member_params)

    if @crew_member.save
      render json: @crew_member, status: :created, location: @crew_member
    else
      render json: @crew_member.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /crew_members/1
  def update
    if @crew_member.update(crew_member_params)
      render json: @crew_member
    else
      render json: @crew_member.errors, status: :unprocessable_entity
    end
  end

  # DELETE /crew_members/1
  def destroy
    @crew_member.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crew_member
      @crew_member = CrewMember.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def crew_member_params
      params.require(:crew_member).permit(:name, :email, :role, :employer, :rate, :crew_id)
    end
end
