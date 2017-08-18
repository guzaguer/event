$(document).ready(function(){
	$('#div2').slideUp(1000);
  $('#div1').slideDown('slow');
});

$( function() {
    $( "#tabs" ).tabs();
  } );

function contruyeMap(argumento1, argumento2, d1, d2){
  var c = d1;
  var d = d2;

  var a = argumento1;
  var b = argumento2;


  mostrar(c,d);
  var map = new google.maps.Map(document.getElementById('mapa'), {
    zoom: 13,
    center: {
      lat: a,
      lng: b
    }
  });

  var marker = new google.maps.Marker({
    map: map,
    position: {
      lat: a,
      lng: b
    }

  });

};

function mostrar(id1,id2){

	var div='#'+id1;
	var div1='#'+id2;

    $(div).slideUp(1000);
    $(div1).slideDown('slow');
}

function ocultar(id1,id2){
	var div='#'+id1;
	var div1='#'+id2;

    $(div).slideUp(1000);
    $(div1).slideDown('slow');
}


;
