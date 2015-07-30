class My::ExhibitsController < ApplicationController
  # XXX .all した結果からっぽだとしたら、まあ無駄といえば無駄なんだけど、@exhibits でまとめて view に渡して
  #     view で出し分けるっていう方法でカッコイイやりかたが思いつかないのだよな。。
  def index
    @lts   = current_user.lightning_talks.preload(:user)
    @foods = current_user.foods.preload(:user)
  end
end
