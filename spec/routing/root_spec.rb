require 'rails_helper'

describe 'home#root' do
  it 'routes to home#index' do
    expect(get: '/').to route_to('home#index')
  end
end
