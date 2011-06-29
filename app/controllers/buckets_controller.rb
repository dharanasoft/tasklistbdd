class BucketsController < ApplicationController
  def index
    @buckets = Bucket.all
  end
  def new
    @bucket = Bucket.new
  end
  def create
    @bucket = Bucket.new(params[:bucket])
    if(@bucket.save)
      redirect_to buckets_path, :notice=>"Bucket created successfully"
    else
      render :action=>:new
    end
  end
end
