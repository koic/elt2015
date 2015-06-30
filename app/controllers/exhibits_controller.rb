class ExhibitsController < ApplicationController
  permits :title, :description, :type

  def index
    @lts   = LightningTalk.all
    @foods = Food.all
    @sakes = Sake.all
  end

  def new
    @exhibits = Exhibit.subclasses.map(&:to_s)
    @exhibit  = Exhibit.new
  end

  def create(exhibit)
    @exhibit = Exhibit.new(exhibit.merge(user: current_user))

    if @exhibit.save
      @exhibit = @exhibit.becomes(Exhibit)
      redirect_to my_exhibits_path, notice: '登録が完了しました。'
    else
      @exhibits = Exhibit.subclasses.map(&:to_s)
      render :new
    end
  end

  def show(id)
    @exhibit = Exhibit.find(id)
  end
end
