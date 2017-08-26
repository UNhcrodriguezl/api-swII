class AudiobooksController < ApplicationController
  before_action :set_audiobook, only: [:show, :update, :destroy]

  # GET /audiobooks
  def index
    @audiobooks = Audiobook.all

    render json: @audiobooks
  end

  # GET /audiobooks/1
  def show
    render json: @audiobook
  end

  # POST /audiobooks
  def create
    @audiobook = Audiobook.new(audiobook_params)

    if @audiobook.save
      render json: @audiobook, status: :created, location: @audiobook
    else
      render json: @audiobook.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /audiobooks/1
  def update
    if @audiobook.update(audiobook_params)
      render json: @audiobook
    else
      render json: @audiobook.errors, status: :unprocessable_entity
    end
  end

  # DELETE /audiobooks/1
  def destroy
    @audiobook.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_audiobook
      @audiobook = Audiobook.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def audiobook_params
      params.require(:audiobook).permit(:title, :synopsis, :year)
    end
end
