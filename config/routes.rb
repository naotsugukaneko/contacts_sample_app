Rails.application.routes.draw do
    mount LetterOpenerWeb::Engine, at: "/letter_opener" it Rails.env.development?
    root "homes#index"
end
