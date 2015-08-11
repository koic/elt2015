class My::ExhibitsController < ApplicationController
  permits :id, :title, :description, :type
  # XXX .all した結果からっぽだとしたら、まあ無駄といえば無駄なんだけど、@exhibits でまとめて view に渡して
  #     view で出し分けるっていう方法でカッコイイやりかたが思いつかないのだよな。。

  def index
    @lts   = current_user.lightning_talks.preload(:user)
    @foods = current_user.foods.preload(:user)
  end

  def edit(id)
    @exhibit = current_user.exhibits.find(id)
    @exhibits = Exhibit.subclasses.map(&:to_s)
  end

  def update(id, exhibit)
    @exhibit = Exhibit.find(id)

    if @exhibit.update(exhibit.merge(user: current_user))
      redirect_to my_exhibits_path, notice: '更新しました。'
    else
      render :edit
    end
  end
end
