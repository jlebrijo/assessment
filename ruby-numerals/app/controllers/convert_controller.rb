require 'integer'
class ConvertController < ApplicationController

  def to_english
    if params[:number]
      @result = params[:number].to_i.to_english
    end

  end

end