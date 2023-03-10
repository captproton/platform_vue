class BlogEntriesController < ApplicationController
  before_action :set_blog_entry, only: %i[ show edit update destroy ]

  # GET /blog_entries or /blog_entries.json
  def index
    @blog_entries = BlogEntry.all
  end

  # GET /blog_entries/1 or /blog_entries/1.json
  def show
  end

  # GET /blog_entries/new
  def new
    @blog_entry = BlogEntry.new
  end

  # GET /blog_entries/1/edit
  def edit
  end

  # POST /blog_entries or /blog_entries.json
  def create
    @blog_entry = BlogEntry.new(blog_entry_params)

    respond_to do |format|
      if @blog_entry.save
        format.html { redirect_to blog_entry_url(@blog_entry), notice: "Blog entry was successfully created." }
        format.json { render :show, status: :created, location: @blog_entry }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @blog_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blog_entries/1 or /blog_entries/1.json
  def update
    respond_to do |format|
      if @blog_entry.update(blog_entry_params)
        format.html { redirect_to blog_entry_url(@blog_entry), notice: "Blog entry was successfully updated." }
        format.json { render :show, status: :ok, location: @blog_entry }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @blog_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blog_entries/1 or /blog_entries/1.json
  def destroy
    @blog_entry.destroy

    respond_to do |format|
      format.html { redirect_to blog_entries_url, notice: "Blog entry was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog_entry
      @blog_entry = BlogEntry.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def blog_entry_params
      params.require(:blog_entry).permit(:title, :slug, :position, :publish_at)
    end
end
