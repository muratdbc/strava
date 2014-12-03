'use strict';

var strava_call = "https://strva.herokuapp.com/api/v1/teams"

var teamsModule = angular.module('myApp.teams', ['ngRoute']);

teamsModule.config(['$routeProvider', function($routeProvider) {
  $routeProvider.when('/teams', {
    templateUrl: 'components/teams/teams.html',
    controller: 'TeamsCtrl'
  });
}])

.controller('TeamsCtrl', ['$scope', '$templateCache','$http' , function ($scope, $templateCache, $http) {
	$scope.description = "Teams";


	returnedInfo = $http.get(strava_call).
	success(function(data, status, headers, config){
    // this callback will be called asynchronously
    // when the response is available
  	var teams_list=[]
  	for (var i = 0; i < data.length; i++){
  		teams_list.push(data[i]);
  	}

  	// console.log(teams_list);
  	$scope.teams = teams_list;
 
  	}).
  	error(function(data, status, headers, config){
    // called asynchronously if an error occurs
    // or server returns response with an error status.
    $scope.teams = "PLAYA _ PLAYAS";
  	})

    $scope.addModal = function(event){
      // var hello = $('a');
      console.log("hello");
      // // event.preventDefault();
    }

}
])

.run(function ($templateCache){
        $templateCache.put("'components/teams/teams.html'");

    });



var teams = [
    {'name': 'Spiders', 'mix' : 'Mixed', 'avgage': 26 },
    {'name': 'Chocolate Cakes', 'mix':'All-Women', 'avgage': 32},
    {'name': 'magic-magic', 'mix':'All-Men', 'avgage': 29}
  ];

// function SelectorCtrl($scope) {
//   $scope.teams = teams
//     $scope.mixIncludes = [];
    
//     $scope.includeMix = function(mix) {
//         var i = $.inArray(mix, $scope.mixIncludes);
//         if (i > -1) {
//             $scope.mixIncludes.splice(i, 1);
//         } else {
//             $scope.mixIncludes.push(mix);
//         }
//     }
    
//     $scope.mixFilter = function(teams) {
//         if ($scope.mixIncludes.length > 0) {
//             if ($.inArray(teams.mix, $scope.mixIncludes) < 0)
//                 return;
//         }
        
//         return teams;
//     }
// }


teamsModule.controller('SelectorCtrl', ['$scope', function($scope){

$scope.teams = teams
    $scope.mixIncludes = [];
    
    $scope.includeMix = function(mix) {
        var i = $.inArray(mix, $scope.mixIncludes);
        if (i > -1) {
            $scope.mixIncludes.splice(i, 1);
        } else {
            $scope.mixIncludes.push(mix);
        }
    }
    
    $scope.mixFilter = function(teams) {
        if ($scope.mixIncludes.length > 0) {
            if ($.inArray(teams.mix, $scope.mixIncludes) < 0)
                return;
        }
        
        return teams;
    }
}
]);



teamsModule.controller('SortController', ['$scope', '$filter', function($scope, $filter) {
  var orderBy = $filter('orderBy');
  $scope.teams = teams
  $scope.order = function(predicate, reverse) {
    $scope.teams = orderBy($scope.teams, predicate, reverse);
  };
  $scope.order('-age',false);
}]);




//Charts
// teamsModule.directive('bars', function ($parse) {
//       return {
//          restrict: 'E',
//          replace: true,
//          template: '<div id="chart"></div>',
//          link: function (scope, element, attrs) {
//            var data = attrs.data.split(','),
//            chart = d3.select('#chart')
//              .append("div").attr("class", "chart")
//              .selectAll('div')
//              .data(data).enter()
//              .append("div")
//              .transition().ease("elastic")
//              .style("width", function(d) { return d + "%"; })
//              .text(function(d) { return d + "%"; });
//          } 
//       };
//    });
