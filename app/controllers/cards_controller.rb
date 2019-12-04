# frozen_string_literal: true

class CardsController < ApplicationController
  before_action :get_list_and_board
  before_action :set_card, only: %i[show edit update destroy]

  # GET /cards
  # GET /cards.json
  def index
    @cards = @list.cards
  end

  # GET /cards/1
  # GET /cards/1.json
  def show; end

  # GET /cards/new
  def new
    @card = @list.cards.build
  end

  # GET /cards/1/edit
  def edit; end

  # POST /cards
  # POST /cards.json
  def create
    @card = @list.cards.build(card_params)

    respond_to do |format|
      if @card.save
        format.html { redirect_to board_path(@board), notice: 'Card was successfully created.' }
        format.json { render :show, status: :created, location: @card }
      else
        format.html { render :new }
        format.json { render json: @card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cards/1
  # PATCH/PUT /cards/1.json
  def update
    respond_to do |format|
      if @card.update(card_params)
        format.html { redirect_to @card, notice: 'Card was successfully updated.' }
        format.json { render :show, status: :ok, location: @card }
      else
        format.html { render :edit }
        format.json { render json: @card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cards/1
  # DELETE /cards/1.json
  def destroy
    @card.destroy!
    respond_to do |format|
      format.html { redirect_to board_path(@board), notice: 'Card was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def get_list_and_board
    @list = List.find(params[:list_id])
    @board = Board.find(params[:board_id])
  end

  def set_card
    @card = @list.cards.find(params[:id])
  end

  def card_params
    params.require(:card).permit(:name, :deadline, :owner, :list_id)
  end
end
