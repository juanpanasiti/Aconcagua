class ProfilesController < ApplicationController
  before_action :set_profile, only: [:edit, :update]
  def new
    @profile = Profile.new
    @student = current_student
  end
  def create
    @profile = Profile.new(profile_params)
    @profile.student_id = current_student.id
    respond_to do |format|
      if @profile.save
        format.html { redirect_to root_path, notice: 'Perfil creado.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
    @student = current_student
  end
  def update
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to student_path(current_student), notice: 'Perfil actualizado.' }
      else
        format.html { render :edit }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = Profile.find(params[:id])
    end

    def profile_params
      params.require(:profile).permit(:name, :lastname, :document, :birthdate, :about_me)
    end
end
