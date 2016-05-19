//var demoApp = angular.module('demoApp', ['angular-carousel'])
Sprangular.controller('DemoCtrl', function($scope, Carousel,Ad) {
    $scope.Carousel = Carousel;
    Ad.ads().then(function(ads){
      $scope.slides = ads
    })

});