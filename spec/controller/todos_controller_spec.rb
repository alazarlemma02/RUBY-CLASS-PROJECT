require 'rails_helper'

RSpec.describe TodosController, type: :controller do
  describe 'POST #create' do
    it_behaves_like 'controller validations', :todolist, [:title]

  end
end
