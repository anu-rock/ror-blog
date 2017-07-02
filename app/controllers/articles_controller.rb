class ArticlesController < ApplicationController
  http_basic_authenticate_with name: 'anurag', password: 'WinterIsComing',
    except: [:index, :show]

  # GET all articles
  def index
    @articles = Article.all.order 'created_at desc' # instance variables are passed to the view

    respond_to do |format|
      # order matters
      format.json { render json: @articles }
      format.html #index.html.erb
    end
  end

  def new
      # to avoid null reference exception for
      # @article.errors.any? on new.html.erb
      @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  # GET an article by id
  def show
    @article = Article.find(params[:id]) # instance variables are passed to the view
    @comment = Comment.new

    respond_to do |format|
      # order matters
      format.json { render json: @article, include: [:comments] }
      format.html # show.html.erb
    end
  end

  # POST request from "new" form will come here
  def create
    @article = Article.new(article_params)
    if @article.save
        redirect_to articles_path
    else
        render 'new'
    end
  end

  # PATCH (update) an article
  def update
    @article = Article.find(params[:id]) # find the article to update in db

    if @article.update(article_params) # attempt to update using received form data
      redirect_to @article
    else
      render 'edit'
    end
  end

  # DELETE an article
  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end

  # A method that returns CSRF-safe "article"
  private
  def article_params
    params.require(:article).permit(:title, :text) # strong paramters
  end
end
