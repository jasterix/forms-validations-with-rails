class DoctorsController < ApplicationController
  before_action :get_doctor, only: [:show]
  before_action :get_the_doctors, only: [:new, :create, :edit, :update]

  def index
    @doctors = Doctor.all
  end

  def show
  end

  def new
    @doctor = Doctor.new
  end

  def create
    # byebug
    @doctor = Doctor.new(doctor_params)
    if @doctor.valid?
        @doctor.save
        redirect_to @doctor
      else
        render 'new'
      end
  end

  def edit
  end

  def update
  end

  private

  def get_doctor
    @doctor = Doctor.find(params[:id])
  end

  def doctor_params
    params.require(:doctor).permit(:name, :specialty, :registration_number)
    # params.require(:doctor).permit(name: params[:doctor][:name], specialty: params[:doctor][:specialty], registration_number: params[:doctor][:registration_number])
    
  end

  def get_the_doctors
    @doctors = Doctor.all

  end
end
