class My::ExhibitsController < ApplicationController
  permits :id, :title, :description, :type
  # XXX .all した結果からっぽだとしたら、まあ無駄といえば無駄なんだけど、@exhibit_types でまとめて view に渡して
  #     view で出し分けるっていう方法でカッコイイやりかたが思いつかないのだよな。。

  def index
    @lts   = current_user.lightning_talks
    @foods = current_user.foods
  end

  def edit(id)
    @exhibit = current_user.exhibits.find(id)
    @exhibit_types = Exhibit.subclasses.map(&:to_s)
  end

  def update(id, exhibit)
    @exhibit = current_user.exhibits.find(id)

    if @exhibit.update(exhibit)
      redirect_to my_exhibits_path, notice: '更新しました。'
    else
      render :edit
    end
  end

  def destroy(id)
    exhibit = current_user.exhibits.find(id)
    exhibit.destroy

    redirect_to my_exhibits_path, notice: '削除しました。'
  end
end
