class ApplicationController < ActionController::API
  def health
    render nothing: true, status: :ok
  end
end
