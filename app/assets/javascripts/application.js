//= require clipboard
//= require jquery
//= require jquery_ujs
//= require action_cable

"use strict";

(function() {
  window.App || (window.App = {});

  App.cable = ActionCable.createConsumer("/cable");

  App.subscribeToTopics = function (secret) {
    window.App.cable.subscriptions.create({
      channel: "TopicsChannel",
      secret: secret
    }, {
      connected: function() {
        console.log("CONNECTED");
      },
      disconnected: function() {
        console.log("DISCONNECTED");
      },
      received: function(event) {
        console.log("Got a new question: " + event.question);
        App.updateQuestion(event.question);
      }
    });
  }

  App.updateQuestion = function(question) {
    console.log(question);
    var element = $('[data-behavior=question]');
    var button = $('[data-behavior=moar-button]');

    button.addClass('disabled');
    element.html(question).addClass('question--highlighted');
    setTimeout(function () {
      element.removeClass('question--highlighted');
      button.removeClass('disabled');
    }, 500);
  }
})();
