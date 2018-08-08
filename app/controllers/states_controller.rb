class StatesController < ApplicationController
  def index
    @states = State.all
  end
  def new
    @state = State.new
  end
  def create
  end
end
