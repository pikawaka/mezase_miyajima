class PathsController < ApplicationController
  def edit
  end

  def update
  end

  private

  def path_params
    params.require(:path).permit(:path)
  end
end
