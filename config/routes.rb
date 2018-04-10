Rails.application.routes.draw do
  post 'previous_courses/addPastCourseToStudent', to: 'students#addPastCourseToStudent'
  resources :prerequisites
  resources :previous_courses
  resources :courses
  root 'welcome#index'
  get 'welcome/index'
  resources :students
  resources :professors
end
