class NoticiaController < ApplicationController
  before_action :set_noticium, only: %i[show edit update destroy]

  # GET /noticia or /noticia.json
  # Filter using query params, this is far from optimized.
  def index
    if params.has_key?(:author)
      @noticia = if params[:order] == 'date'
                   Noticium.where(author: params[:author]).order('created_at DESC')
                 elsif params[:order] == 'author'
                   Noticium.where(author: params[:author]).order('author')
                 else
                   Noticium.where(author: params[:author])
                 end
    elsif params.has_key?(:from) && params.has_key?(:to)
      @noticia = if params[:order] == 'date'
                   Noticium.where(created_at: Time.parse(params[:from])..Time.parse(params[:to])).order('created_at DESC')
                 elsif params[:order] == 'author'
                   Noticium.where(created_at: Time.parse(params[:from])..Time.parse(params[:to])).order('author')
                 else
                   Noticium.where(created_at: Time.parse(params[:from])..Time.parse(params[:to]))
                 end
    elsif params.has_key?(:order)
      @noticia = if params[:order] == 'date'
                   Noticium.all.order('created_at DESC')
                 elsif params[:order] == 'author'
                   Noticium.all.order('author')
                 end
    else
      @noticia = Noticium.all
    end
    @autores = [''] + Noticium.distinct.pluck(:author).sort
  end

  # GET /noticia/1 or /noticia/1.json
  def show; end

  # GET /noticia/new
  def new
    @noticium = Noticium.new
  end

  # GET /noticia/1/edit
  def edit; end

  # POST /noticia or /noticia.json
  def create
    @noticium = Noticium.new(noticium_params)

    respond_to do |format|
      if @noticium.save
        format.html { redirect_to @noticium, notice: 'Noticia fue creada exitosamente.' }
        format.json { render :show, status: :created, location: @noticium }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @noticium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /noticia/1 or /noticia/1.json
  def update
    respond_to do |format|
      if @noticium.update(noticium_params)
        format.html { redirect_to @noticium, notice: 'Noticia fue actualizada exitosamente.' }
        format.json { render :show, status: :ok, location: @noticium }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @noticium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /noticia/1 or /noticia/1.json
  def destroy
    @noticium.destroy
    respond_to do |format|
      format.html { redirect_to noticia_url, notice: 'Noticia fue eliminada exitosamente.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_noticium
    @noticium = Noticium.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def noticium_params
    params.require(:noticium).permit(:title, :lower, :author, :body, :image)
  end
end
