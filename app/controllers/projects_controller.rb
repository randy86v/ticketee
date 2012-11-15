class ProjectsController < ApplicationController
before_filter :find_project, only: [:show, :edit, :update, :destroy]

  def index
    @projects = Project.all
  end
  
  def show
    @project = Project.find(params[:id])
  end
  
  def new
    @project = Project.new
  end
  
  def create
    @project = Project.new(params[:project])
    if @project.save
      redirect_to @project, notice: "Project has been created."
    else
      flash[:warning] = "Project has not been created!"
      render 'new'
    end
  end
  
  def edit
    @project = Project.find(params[:id])
  end
  
  def update
    @project = Project.find(params[:id])
    if @project.update_attributes(params[:project])
      redirect_to @project, notice: "Project has been updated."
    else
      flash[:warning] = "Project has not been updated!"
      render 'edit'
    end
  end
  
  def destroy
    @project = Project.find(params[:id]).destroy
    redirect_to root_url, notice: "Project has been deleted."
  end
  
  private 
  
  def find_project
    @project = Project.find(params[:id])
    rescue ActiveRecord::RecordNotFound
    flash[:warning] = "The project you were looking for cannot be found."
    redirect_to projects_url    
  end
end
