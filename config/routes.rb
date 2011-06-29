Tasklistbdd::Application.routes.draw do
  resources :buckets, :shallow=>true do
    resources :tasks
  end
end
