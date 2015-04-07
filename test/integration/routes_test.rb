require 'test_helper'

class RoutesTest < ActionDispatch::IntegrationTest

  test 'routes use the correct version' do
    assert_generates '/v1/images', { controller: 'api/v1/images', action: 'index' }
   
  end

end
