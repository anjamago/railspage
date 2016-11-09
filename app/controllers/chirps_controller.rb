class ChirpsController < ApplicationController
  def new
    @chirp = Chirp.new()
  end

  def create
    chirp = params[:chirp]
    @chirp_new = Chirp.new(
      title: chirp['title'],
      body: chirp['body'],
      user_id: chirp['user_id']
    )
  end

  def show
  end
end
