class ExhibitsController < ApplicationController
  # FIXME create で必要なのは、save が失敗したときだけ（new に戻るときだけ）なんだけど、
  #       before_action で書いておいていいものなのか。。
  before_action :set_exhibits, only: %i(new create)

  def new
    @exhibit = Exhibit.new
  end

  def create
    @exhibit = Exhibit.new(exhibit_params)

    if @exhibit.save
      @exhibit = @exhibit.becomes(Exhibit)
      redirect_to @exhibit, notice: '登録が完了しました。'
    else
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
  def set_exhibits
    Dir.glob(File.join(Rails.root, "app", "models", "**", "*.rb")).each {|f| require f}
    @exhibits = Exhibit.subclasses.map(&:to_s)
  end
end
