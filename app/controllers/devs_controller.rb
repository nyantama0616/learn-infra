class DevsController < ApplicationController
  def ping
    render json: { message: "pong" }
  end
end
