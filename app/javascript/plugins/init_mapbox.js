import mapboxgl from '/home/simon/code/simboutin/rails-simple-airbnb/node_modules/mapbox-gl/dist/mapbox-gl';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';
 
const buildMap = (mapElement) => {
  mapboxgl.accessToken = 'pk.eyJ1IjoiYm9zaW0iLCJhIjoiY2trNzdrZ3M0MGJjYzJvbXZ0OHhzeTNlaSJ9.R7hR4oTfBI1e6rYZzeNfgw';
  return new mapboxgl.Map({
  container: mapElement,
  style: 'mapbox://styles/mapbox/streets-v11'
  });
};

const addMarkersToMap = (map, markers) => {
  markers.forEach((marker) => {
    new mapboxgl.Marker()
      .setLngLat([ marker.lng, marker.lat ])
      .addTo(map);
  });
};

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
};

const initMapbox = () => {
  const mapElement = document.getElementById('map');
  if (mapElement) {
    const map = buildMap(mapElement);
    const markers = JSON.parse(mapElement.dataset.markers);
    addMarkersToMap(map, markers);
    fitMapToMarkers(map, markers);
    map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken,
      mapboxgl: mapboxgl }));
  }
};

export { initMapbox };