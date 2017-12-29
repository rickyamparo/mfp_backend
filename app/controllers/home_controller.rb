class HomeController < AuthenticationController
  def index
    render 'home/index'
  end
end
