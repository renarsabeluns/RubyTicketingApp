class AnswersController < ApplicationController
    def create 
        @Task   = Task.find(params[:task_id])
        @answer = @Task.answer.build(answers_params)
        @answer.user = current_user
        @answer.save 
        
        redirect_to tasks_url
    end

    def destroy
        @Task   = Task.find(params[:task_id])
        @answer = @Task.answer.find(params[:id]).destroy

        redirect_to tasks_url
        
    end

    private

    def answers_params
        params.permit(:content)
    end
end