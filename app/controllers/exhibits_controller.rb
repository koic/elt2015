class ExhibitsController < ApplicationController
  def new
    @exhibit = Exhibit.new
    # これってこう書かないとだめなんかなあ
    Dir.glob(File.join(Rails.root, "app", "models", "**", "*.rb")).each {|f| require f}
    @exhibits = Exhibit.subclasses.map(&:to_s)
  end

  def create
    @exhibit = exhibit_class.new(exhibit_params)

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

  def exhibit_class
    params[:exhibit][:type].constantize
  end
end
