'use strict';
define(['directives'], function(directives) {
  return directives.directive('board', function() {
    return {
      restrict: 'A',
      link: function(scope, element, attrs) {
        var contextoTablero,
          _this = this;
        contextoTablero = element[0].getContext("2d");
        scope.dibujarTablero = function(x, y) {
          var i, _i;
          contextoTablero.fillStyle = "#999";
          contextoTablero.fillRect(x, y, 30, 300);
          for (i = _i = 1; _i <= 9; i = ++_i) {
            contextoTablero.moveTo(i * 30, 0);
            contextoTablero.lineTo(i * 30, 300);
            contextoTablero.moveTo(0, i * 30);
            contextoTablero.lineTo(300, i * 30);
          }
          contextoTablero.strokeStyle = "#eee";
          return contextoTablero.stroke();
        };
        scope.dibujarTablero(attrs.x, attrs.y);
        return scope.lanzarBomba = function(x, y) {
          alert('bombardeado..');
          contextoTablero.font = 'bold 20px sans-serif';
          contextoTablero.fillStyle = '#000';
          return contextoTablero.fillText('x', x * 30 - 21, y * 30 - 11);
        };
      }
    };
  });
});
