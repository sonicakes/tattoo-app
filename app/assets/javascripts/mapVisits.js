$(document).ready(function() {

  if (typeof locations === "undefined") {
    return;
  }
  console.log(locations);


  handler = Gmaps.build('Google');
  handler.buildMap({
    provider: {},
    internal: {
      id: 'map_visit'
    }
  }, function() {
    const locationMarkers = [];

    for (let i = 0; i < locations.length; i++) {
      let l = locations[i];
      locationMarkers.push({
        "lat": l.latitude,
        "lng": l.longitude,
        "infowindow": l.user.user_name
      });
    }

    console.log('markers', locationMarkers)

    markers = handler.addMarkers(locationMarkers);
    console.log('added markers')
    handler.bounds.extendWith(markers);
    handler.fitMapToBounds();
  });
});
