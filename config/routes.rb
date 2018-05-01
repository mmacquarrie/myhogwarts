Rails.application.routes.draw do
  resources :registrations
  post 'intermediateRegistration', to: 'registrations#intermediateRegistration'
  get 'intermediateRegistration' => 'registrations#intermediateRegistration'
  resources :hogwarts_classes
  resources :rooms
  post 'students/addPastCourseToStudent', to: 'students#addPastCourseToStudent'
  resources :prerequisites
  post 'courses/addPrerequisite', to: 'courses#addPrerequisite'
  resources :previous_courses
  resources :hogwarts_classes
  resources :courses
  root 'welcome#index'
  get 'welcome/index'
  resources :students
  resources :professors
end
