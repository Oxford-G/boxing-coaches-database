class TrainersController < ApplicationController
  before_action :set_trainer, only: [:show]

  def index
    @trainers = Trainer.all
    json_response(@trainers)
  end

  def show
    json_response(@trainer)
  end

  private

  def set_trainer
    @trainer = Trainer.find(params[:id])
  end
end
