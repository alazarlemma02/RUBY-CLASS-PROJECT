require 'rails_helper'

RSpec.describe TodosController, type: :controller do
  describe 'POST #create' do
    it_behaves_like 'controller validations', :todolist, [:title]
  end

  describe 'GET #show' do
    let(:todo) {create(:todolist)  }
    it_behaves_like 'controller validations', :todolist, [:title]

    before {get :show, params: {id: todo.id}}

  end

  describe 'GET #new' do
    it_behaves_like 'controller validations', :todolist, [:title]

    before{get :new}

    it 'renders the new template' do
      expect(response).to render_template('new')
    end

  end



end
