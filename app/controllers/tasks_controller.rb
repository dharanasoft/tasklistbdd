class TasksController < ApplicationController
  def index
    @bucket=Bucket.find(params[:bucket_id])
    @pending= @bucket.tasks.pending
    @done = @bucket.tasks.done
  end
  def new
    @bucket=Bucket.find(params[:bucket_id])
    @task = @bucket.tasks.build
  end
  def create
    @bucket=Bucket.find(params[:bucket_id])
    @task = Task.new(params[:task])
    @task.bucket = @bucket
    if(@task.save)
      redirect_to bucket_tasks_path(@bucket), :notice=>"Task created succesfully"
    else
      render :action=>:new
    end
  end
end
