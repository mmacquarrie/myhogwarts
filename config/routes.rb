Rails.application.routes.draw do
  resources :rooms
  post 'students/addPastCourseToStudent', to: 'students#addPastCourseToStudent'
  resources :prerequisites
  resources :previous_courses
  resources :courses
  root 'welcome#index'
  get 'welcome/index'
  resources :students
  resources :professors
end
