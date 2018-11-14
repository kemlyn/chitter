require 'rails_helper'

describe 'GET /users' do
  it 'returns a 204 status code' do
    get '/users'
    expect(response).to have_http_status(200)
  end
end
