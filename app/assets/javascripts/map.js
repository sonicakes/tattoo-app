$(document).ready(function () {


console.log( locations );


  const latitude = $('#map').data('latitude');
  const longitude = $('#map').data('longitude');
  const title = $('#map').data('name');

  handler = Gmaps.build('Google');
  handler.buildMap({ provider: {}, internal: {id: 'map'}}, function(){
    const locationMarkers = [];

    for (let i = 0; i < locations.length; i++) {
      let l = locations[i];
      locationMarkers.push({
        "lat": l.latitude,
        "lng": l.longitude,
        "infowindow": name
      });
    }

    console.log( 'markers', locationMarkers )

    markers = handler.addMarkers(locationMarkers);
    console.log('added markers')
    handler.bounds.extendWith(markers);
    handler.fitMapToBounds();
  });
});
