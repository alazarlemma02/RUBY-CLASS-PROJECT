require 'rails_helper'

RSpec.shared_examples 'controller validations' do |factory, attribs|
  subject { post :create, params: { todo: attributes_for(factory) } }

  it 'has a valid factory' do
    todo = build(factory)
    expect(todo).to be_valid
  end

  attribs.each do |attr|
    it "validates presence of #{attr}" do
      post :create, params: { todo: attributes_for(factory, attr => nil) }
      expect(assigns(:todo).errors[attr]).to include("can't be blank")
    end

  end
end

