class UserGeneratedPostsController < ApplicationController
  before_action :set_user_generated_post, only: [:show, :edit, :update, :destroy]

  # GET /user_generated_posts
  # GET /user_generated_posts.json
  def index
    @user_generated_posts = UserGeneratedPost.all
  end

  # GET /user_generated_posts/1
  # GET /user_generated_posts/1.json
  def show
  end

  # GET /user_generated_posts/new
  def new
    @user_generated_post = UserGeneratedPost.new
  end

  # GET /user_generated_posts/1/edit
  def edit
  end

  # POST /user_generated_posts
  # POST /user_generated_posts.json
  def create
    @user_generated_post = UserGeneratedPost.new(user_generated_post_params)

    respond_to do |format|
      if @user_generated_post.save
        format.html { redirect_to @user_generated_post, notice: 'User generated post was successfully created.' }
        format.json { render :show, status: :created, location: @user_generated_post }
      else
        format.html { render :new }
        format.json { render json: @user_generated_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_generated_posts/1
  # PATCH/PUT /user_generated_posts/1.json
  def update
    respond_to do |format|
      if @user_generated_post.update(user_generated_post_params)
        format.html { redirect_to @user_generated_post, notice: 'User generated post was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_generated_post }
      else
        format.html { render :edit }
        format.json { render json: @user_generated_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_generated_posts/1
  # DELETE /user_generated_posts/1.json
  def destroy
    @user_generated_post.destroy
    respond_to do |format|
      format.html { redirect_to user_generated_posts_url, notice: 'User generated post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_generated_post
      @user_generated_post = UserGeneratedPost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_generated_post_params
      params.require(:user_generated_post).permit(:privacy_setting, :text)
    end
end
