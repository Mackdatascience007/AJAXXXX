class EmailsController < ApplicationController
  before_action :set_email, only: [:show, :edit, :update, :destroy]

  def index
    @emails = Email.all
  end


  def show
    @email.update(read: true)
    respond_to do |format|
      format.html {}
      format.js {}
    end
  end

  def new
    @email = Email.new
  end


  def edit
  end


  def create
    @email = Email.new(object: Faker::Book.title, body: Faker::ChuckNorris.fact)
    respond_to do |format|
      if @email.save
        format.html { redirect_to @email, notice: 'Email created.' }
        format.js {}
      else
        format.html { render :new }
      end
    end
  end


  def update
    @email.update(read: false)
    respond_to do |format|
      format.html { redirect_to @email, notice: 'Email updated.' }      
      format.js {}
    end
  end


  def destroy
    @email.destroy
    respond_to do |format|
      format.html { redirect_to emails_url, notice: 'Email destroyed.' }
      format.js {}
    end
  end

  private
    def set_email
      @email = Email.find(params[:id])
    end

    def email_params
      params.fetch(:email, {})
    end
end
