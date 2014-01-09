class MusiciansController < ApplicationController

  def index
    @musicians = Musician.all
  end

  def show
    @musician = Musician.find(params[:id])
  end

  def new 
    @musician = Musician.new
  end

  def edit
    @musician = Musician.find(params[:id])
  end

  #POST to create
  def create
    @musician = Musician.new(params[:musician])
    if @musician.save
      redirect_to @musician, notice: 'Musician profile was succesfully created'
    else 
      render action: "new"
    end
  end

  def update
    @musician = Musician.find(params[:id])
    if @musician.update_attributes(params[:musician])
      redirect_to @musician, notice: 'Musician profile was succesfully updated'
    else
      render action: "edit"
    end
  end

  def destroy
    @musician = Musician.find(params[:id])
    @musician.destroy

    redirect_to musicians_path
  end

end
