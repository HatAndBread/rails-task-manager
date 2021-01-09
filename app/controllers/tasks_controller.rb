class TasksController < ApplicationController
    def index
        @tasks = Task.all
        @tasks
    end
    def show
        @task = Task.find(params[:id])
    end
    
    private
    def task_params
        params.require(:task).permit(:completed, :title, :rating)
    end
end
