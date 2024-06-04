# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"
pin "@rails/actioncable", to: "actioncable.esm.js"
pin_all_from "app/javascript/channels", under: "channels"
pin "react", to: "https://ga.jspm.io/npm:react@17.0.2/umd/react.production.min.js"
pin "react-dom", to: "https://ga.jspm.io/npm:react-dom@17.0.2/umd/react-dom.production.min.js"
