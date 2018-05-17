class HomeController < ApplicationController
  def index
    @slacks = Slack.all
  end

  def create

    return render json: {}, status: 403 unless valid_slack_token?
    @slack = Slack.new
    @slack.token = params[:token]
    @slack.user_name = params[:user_name]
    @slack.content = params[:content]

      if @slack.user_name == "davidkunin"
    @slack.save
      else
      end

    redirect_to '/home/index'
  end

  private

    def valid_slack_token?
      params[:token] == ENV[""]
    end

end
