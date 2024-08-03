class PathsController < ApplicationController
  def edit
  end

  def update
    # pathは常に1件
    @path = Path.find(1)
    if @path.update(path_params)
      redirect_to root_path, notice: '設定が完了しました。明日の8時から適用されます。'
    else
      render :edit
    end
  end

  private

  def path_params
    params.require(:path).permit(:path)
  end
end
