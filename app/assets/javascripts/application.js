// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//
//= require angular
//= require angular-resource
//= require_tree .

  var statsFromStart = function() 
  {
    return {
      home : {
        score : 0,
        pases : 0,
        faltas : 0
      },
      away : {
        score : 0,
        pass : 0,
        faltas : 0
      }
    }

  }


gametracker = angular.module('gametracker', ['ngResource']);

gametracker.controller('playsController', function($scope, $http, $resource) {

  $http.defaults.headers.common['Accept'] = 'application/json';

  var Play = $resource('http://localhost:3000/games/1');

  $scope.stats = statsFromStart();
  

  
  /*
  $scope.plays = [

    { 
      description: "Gol",
      player : {
        name: "Messi"
      },
      time : "11:28",
      score : "HOME",
    }

  ];

  */

  $scope.plays = Play.query();


  $scope.statsTill = function(play)
  {
    var stats = statsFromStart();
    
    for ( playKey in $scope.plays )
    {
      if ( $scope.plays[playKey].score != 'NULL' )
      {
        if ( $scope.plays[playKey].score == 'HOME' )
          stats.home.score++;
        else if ( $scope.plays[playKey].score == 'AWAY' )
          stats.away.score++;
      }
    }

    $scope.stats = stats;
    
  };
});
