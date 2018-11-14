require 'rails_helper'

describe UsersController do
  it 'routes to users#index' do
    expect(get: '/users').to route_to('users#index')
  end
end
