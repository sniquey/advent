class AdventsController < ApplicationController
  before_action :set_advent, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @advents = Advent.all
    respond_with(@advents)
  end

  def show
    respond_with(@advent)
  end

  def new
    @advent = Advent.new
    respond_with(@advent)
  end

  def edit
  end

  def create
    @advent = Advent.new(advent_params)
    @advent.save
    respond_with(@advent)
  end

  def update
    @advent.update(advent_params)
    respond_with(@advent)
  end

  def destroy
    @advent.destroy
    respond_with(@advent)
  end

  private
    def set_advent
      @advent = Advent.find(params[:id])
    end

    def advent_params
      params.require(:advent).permit(:date, :title, :description, :picture)
    end
end
