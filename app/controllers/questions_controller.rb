class QuestionsController < ApplicationController
  

  def new
    @question = Question.new
  end

  def create
    @question = current_user.build_question(question_params)

    if @question.save
      redirect_to root_path, notice: "Your information was saved!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def question_params
    params.require(:question).permit(:age, :weight, :gender, :goal)
  end

end

