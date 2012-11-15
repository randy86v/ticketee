require 'spec_helper'

describe ProjectsController do
  it "displays an error for a missing project" do
    get :show, id: "not here"
    response.should redirect_to(projects_path)
    message = "The project you were looking for cannot be found."
    flash[:warning].should eq message
  end
end
