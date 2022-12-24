class RichPhotoPostsController < ApplicationController
  before_action :set_rich_photo_post, only: %i[show edit update destroy]
  before_action :authenticate_user!

  # GET /rich_photo_posts or /rich_photo_posts.json
  def index
    @rich_photo_posts = RichPhotoPost.all
  end

  # GET /rich_photo_posts/1 or /rich_photo_posts/1.json
  def show; end

  # GET /rich_photo_posts/new
  def new
    @rich_photo_post = RichPhotoPost.new
  end

  # GET /rich_photo_posts/1/edit
  def edit; end

  # POST /rich_photo_posts or /rich_photo_posts.json
  def create
    @rich_photo_post = RichPhotoPost.new(rich_photo_post_params)

    respond_to do |format|
      if @rich_photo_post.save
        format.html do
          redirect_to rich_photo_post_url(@rich_photo_post), notice: 'Rich photo post was successfully created.'
        end
        format.json { render :show, status: :created, location: @rich_photo_post }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @rich_photo_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rich_photo_posts/1 or /rich_photo_posts/1.json
  def update
    respond_to do |format|
      if @rich_photo_post.update(rich_photo_post_params)
        format.html do
          redirect_to rich_photo_post_url(@rich_photo_post), notice: 'Rich photo post was successfully updated.'
        end
        format.json { render :show, status: :ok, location: @rich_photo_post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @rich_photo_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rich_photo_posts/1 or /rich_photo_posts/1.json
  def destroy
    @rich_photo_post.destroy

    respond_to do |format|
      format.html { redirect_to rich_photo_posts_url, notice: 'Rich photo post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_rich_photo_post
    @rich_photo_post = RichPhotoPost.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def rich_photo_post_params
    params.require(:rich_photo_post).permit(:title,
                                            :body,
                                            :hero_image,
                                            :name,
                                            :birthplace,
                                            :biography,
                                            :birthdate)
    # 🚅 super scaffolding will insert new fields above this line.
    # 🚅 super scaffolding will insert new arrays above this line.
  end
end
