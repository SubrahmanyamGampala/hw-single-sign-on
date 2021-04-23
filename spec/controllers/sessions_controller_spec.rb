require 'rails_helper'

RSpec.describe SessionsController, type: :controller do
  describe "#create"
    context "no active session, User and Authorization do not exist" do
  before do
          session[:user_id] = nil
          # Database has been cleaned, so shouldn't have to worry about User and Authorization
        end 
      context 'register with github' do
        describe 'When signing up for first time' do 
          it "creates a User" do
             expect { post :create, provider: :github }.to change(User, :count).by(1)
          end        
          it "creates an Authorization", :pending => true do
            post :create, provider: :github
          end
          it "creates a current_user", :pending => true do
            post :create, provider: :github
          end
          it "creates a session", :pending => true do
            post :create, provider: :github
          end
          it "sets a flash message", :pending => true do
            post :create, provider: :github
          end              
        end
      end
    end
  end
  
  

