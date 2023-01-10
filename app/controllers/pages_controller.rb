class PagesController < ApplicationController
  before_action :set_page, only: %i[show edit update destroy]
  before_action :set_site, only: %i[index show create]
  before_action :authenticate_user!

  layout 'sites'
  def home; end

  # GET /pages/1 or /pages/1.json
  def show
    @pages = @current_site.pages
  end

  # GET /pages or /pages.json
  def index
    current_site = Site.first

    @page = if @current_site.pages.count > 0
              @current_site.pages.first
            else
              @current_site.pages.create!(user: current_user)
            end
    redirect_to @page
  end

  # POST /pages or /pages.json
  def create
    @page = Page.new(user: current_user, site: @current_site)
    # @page.update_slug
    # @page = Page.new(user: current_user, site: Site.first)

    respond_to do |format|
      if @page.save
        format.html { redirect_to page_url(@page)}
        format.json { render :show, status: :created, location: @page }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pages/1 or /pages/1.json
  def update
    respond_to do |format|
      if @page.update(page_params)
        format.html { redirect_to page_url(@page) }
        format.json { render :show, status: :ok, location: @page }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pages/1 or /pages/1.json
  def destroy
    @page.destroy

    respond_to do |format|
      format.html { redirect_to pages_url, notice: 'Page was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_page
    @page = Page.friendly.find(params[:id])
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_site
    # temporary until Current model is set up
    @current_site = Site.first

    # if params[:site_id].present?
    #   @current_site = Site.find(params[:site])
    # else
    #   @current_site = Site.first
    # end

  end

  # Only allow a list of trusted parameters through.
  def page_params
    params.require(:page).permit(:title, :body)
  end
end
