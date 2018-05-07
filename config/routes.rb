Rails.application.routes.draw do
  resources :registrations
  post 'registrations/registerStudentForCourse', to: 'registrations#registerStudentForCourse'
  post 'studentRegistration', to: 'registrations#studentRegistration'
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
