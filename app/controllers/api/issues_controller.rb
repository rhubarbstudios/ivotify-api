class Api::IssuesController < ApplicationController

  def index
    render json: {issues: Issue.all }, include: { issue_bullets: { except: :side_id } }
  end

  def show
    render json: Issue.find(params[:id])
  end

  def create
    issue = Issue.new(issue_params)
    if issue.save
      render json: issue, status: 201
    else
      render json: {errors: issue.errors}, status: 422
    end
  end

  def update
    issue = Issue.find(params[:id])
    if issue.update(issue_params)
      render json: issue, status: 200
    else
      render json: {errors: issue.errors}, status: 422
    end
  end

  def destroy
    issue = Issue.find(params[:id])
    issue.destroy
    head 204
  end

  private
    def issue_params
      params.require(:issue).permit(:title, :summary)
    end
end
