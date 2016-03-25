'use strict'

var app = angular.module('SachaP', ['ui.router', 'ngResource']);

app.config(function($stateProvider, $urlRouterProvider) {
  //
  // For any unmatched url, redirect to /state1
  $urlRouterProvider.otherwise("/");
  //
  // Now set up the states
  $stateProvider
    .state('home', {
      url: "/",
      templateUrl: "views/home.html",
      controller: 'MainController',
      controllerAs: 'vm'
    })
    .state('admin', {
      url: "/admin",
      templateUrl: "views/admin/admin.html",
      controller: 'AdminController',
      controllerAs: 'vm'
    });
});
