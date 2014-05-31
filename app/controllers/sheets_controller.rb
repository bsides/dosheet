class SheetsController < ApplicationController
  before_action :set_sheets, only: [:show, :edit, :update, :destroy]

  # GET /powers
  # GET /powers.json
  def index
    @powers = Power.all
  end
end
