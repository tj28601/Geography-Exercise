class StatesController < ApplicationController
  def index
    @states = State.all
  end
  def new
    @state = State.new
  end
  def create
    @state = State.new(state_params)
    @state.save
    redirect_to states_path
  end

  private

  def state_params
    params.require(:state).permit(:name)
  end
end
