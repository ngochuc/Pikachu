class PikachusController < ApplicationController

  # GET /pikachus or /pikachus.json
  def index
    @pikachus = Pikachu.all
  end

  # GET /pikachus/1 or /pikachus/1.json
  def show
  end


end
