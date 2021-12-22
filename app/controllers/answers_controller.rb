class AnswersController < ApplicationController
    def create 
        @Task   = Task.find(params[:task_id])
        @answer = @task.answers.build(answers_params)
        @answer.user = current_user
        @answer.after_save 
        
        redirect_to questions_url
    end

    def 
        @Task   = Task.find(params[:task_id])
        @answer = @task.answers.build(answers_params)

        redirect_to questions_url
        
    end

    private

    def answers_params
        params.require(:answer).permit(:content)
    end