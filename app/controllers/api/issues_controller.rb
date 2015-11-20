class Api::IssuesController < ApplicationController

  def index
    render json: { issues: Issue.all }, include: { issue_sides: { except: :issue_id} }
  end
# , include: { issue_bullets: { except: :issue_bullet_id } }
  def show
    render json: Issue.find(params[:id]), include: { issue_sides: { except: :issue_id, include: { issue_bullets: { except: :issue_bullet_id } } } }
  end

  def create
    issue = Issue.new(issue_params)

    if issue.save
      render json: issue, include: :issue_sides, status: 201
    else
      render json: {errors: issue.errors}, status: 422
    end
  end

  def update
    issue = Issue.find(params[:id])
    issue_sides = issue_params.delete(:issue_sides)

    if issue.update(issue_params)
      render json: issue, include: :issue_sides, status: 200
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
      params.require(:issue).permit(:title, :summary, :background, :issue_sides => [:id, :title, :issue_id, :issue_bullets => [:id, :body, :issue_side_id] ] )
    end

end
