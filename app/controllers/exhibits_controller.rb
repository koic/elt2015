class ExhibitsController < ApplicationController
  def new
    @exhibits = Exhibit.subclasses.map(&:to_s)
    @exhibit  = Exhibit.new
  end

  def create
    @exhibit = Exhibit.new(exhibit_params)

    if @exhibit.save
      @exhibit = @exhibit.becomes(Exhibit)
      redirect_to @exhibit, notice: '登録が完了しました。'
    else
      @exhibits = Exhibit.subclasses.map(&:to_s)
      render :new
    end
  end

  def show(id)
    @exhibit = Exhibit.find(id)
  end

  private

  def exhibit_params
    params.require(:exhibit).permit(:title, :description, :type)
  end
end
