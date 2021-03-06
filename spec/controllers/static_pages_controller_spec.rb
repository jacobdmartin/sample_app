require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do
  render_views

  def setup
    @base_title = "Ruby on Rails Tutorial Sample App"
  end

  it "should get the root" do
    get :root_url
    expect(response).to have_http_status(:success)
    expect(response.body).to have_title("Home | #{@base_title}")
  end

  it "should get home" do
    get :home
    expect(response).to have_http_status(:success)
    expect(response.body).to have_title("#{@base_title}")
  end

  it "should get help" do
    get :help
    expect(response).to have_http_status(:success)
    expect(response.body).to have_title("Help | #{@base_title}")
  end

  it "should get about" do
    get :about
    expect(response).to have_http_status(:success)
    expect(response.body).to have_title("About | #{@base_title}")
  end

  it "should get contact" do
    get :contact
    expect(response).to have_http_status(:success)
    expect(response.body).to have_title("Contact | #{@base_title}")
  end
end
