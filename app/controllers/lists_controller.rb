# frozen_string_literal: true

class ListsController < ApplicationController
  before_action :get_board
  before_action :set_list, only: %i[show edit update destroy]

  # GET /lists
  # GET /lists.json
  def index
    @lists = @board.lists
  end

  # GET /lists/1
  # GET /lists/1.json
  def show; end

  # GET /lists/new
  def new
    @list = @board.lists.build
  end

  # GET /lists/1/edit
  def edit; end

  # POST /lists
  # POST /lists.json
  def create
    @list = @board.lists.build(list_params)

    respond_to do |format|
      if @list.save
        format.html { redirect_to board_path(@board), notice: 'List was successfully created.' }
        format.json { render :show, status: :created, location: @list }
      else
        format.html { render :new }
        format.json { render json: @list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lists/1
  # PATCH/PUT /lists/1.json
  def update
    respond_to do |format|
      if @list.update(list_params)
        format.html { redirect_to @list, notice: 'List was successfully updated.' }
        format.json { render :show, status: :ok, location: @list }
      else
        format.html { render :edit }
        format.json { render json: @list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lists/1
  # DELETE /lists/1.json
  def destroy
    @list.destroy!
    respond_to do |format|
      format.html { redirect_to board_path(@board), notice: 'List was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def get_board
    @board = Board.find(params[:board_id])
  end

  def set_list
    @list = @board.lists.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:name, :board_id)
  end
end
