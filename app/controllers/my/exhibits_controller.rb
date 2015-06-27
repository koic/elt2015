class My::ExhibitsController < ApplicationController
  # XXX .all した結果からっぽだとしたら、まあ無駄といえば無駄なんだけど、@exhibits でまとめて view に渡して
  #     view で出し分けるっていう方法でカッコイイやりかたが思いつかないのだよな。。
  def index
    @lts   = current_user.lightning_talks
    @foods = current_user.foods
    @sakes = current_user.sakes
  end
end
