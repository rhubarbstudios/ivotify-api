class Api::CandidatesController < ApplicationController

  def index
    render json: {candidates: Candidate.all}, methods: :full_name, include: { quotes: { except: :candidate_id } }
  end

  def show
    render json: Candidate.find(params[:id]), methods: :full_name, include: { quotes: { except: :candidate_id } }
  end

  def create
    candidate = Candidate.new(candidate_params)
    if candidate.save
      render json: candidate, methods: :full_name, include: :quotes, status: 201
    else
      render json: {errors: candidate.errors}, status: 422
    end
  end

  def update
    candidate = Candidate.find(params[:id])
    if candidate.update(candidate_params)
      render json: candidate, methods: :full_name, include: :quotes, status: 200
    else
      render json: {errors: candidate.errors}, status: 422
    end
  end

  def destroy
    candidate = Candidate.find(params[:id])
    candidate.destroy
    head 204
  end

  private
    def candidate_params
      candidate_params = params.require(:candidate).permit(:first_name, :last_name, :bio, { quotes: [:id, :issue_id, :body, :source] })
      if candidate_params[:quotes]
        candidate_params[:quotes_attributes] = candidate_params.delete :quotes
      end
      candidate_params
    end
end

