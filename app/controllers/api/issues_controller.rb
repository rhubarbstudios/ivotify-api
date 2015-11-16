class Api::IssuesController < ApplicationController

  def index
    render json: { issues: Issue.all }, include: { issue_sides: { except: :issue_id, include: { issue_bullets: { except: :issue_bullet_id } } } }
  end

  def show
    render json: Issue.find(params[:id]), include: { issue_bullets: { except: :issue_id } }
  end

  def create
    issue = Issue.new(issue_params)
    if issue.save
      render json: issue, include: :issue_bullets, status: 201
    else
      render json: {errors: issue.errors}, status: 422
    end
  end

  def update
    issue = Issue.find(params[:id])
    if issue.update(issue_params)
      render json: issue, include: :issue_bullets, status: 200
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
      issue_params = params.require(:issue).permit(:title, :summary, :background, { issue_bullets: [:id, :issue_id, :body, :side_id] })
      if issue_params[:issue_bullets]
        issue_params[:issue_bullets_attributes] = issue_params.delete :issue_bullets
      end
      issue_params
    end
end
