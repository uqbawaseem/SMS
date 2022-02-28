// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "bootstrap"
//= require jquery
//= require jquery_ujs
//= require jquery3
//= require popper
//= require bootstrap

//validador jquery
$('#new_student').validate({
    rules: {
      'student[password]': {
        required: true,
        maxlength: 100
      },
      'student[email]': {
        required: true, 
        email: true, 
        maxlength: 150
      }
    },
    messages: {
      'student[password]': {
          required: "Required Field",
          maxlength: "Name too big, max size 100"
      },
      'student[email]': {
          required: "Required Field",
          email: "Invalid email",
          maxlength: "Email too big, max size 150"
      }
    }
  });

import Rails from "@rails/ujs";
Rails.start();
