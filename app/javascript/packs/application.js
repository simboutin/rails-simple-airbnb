// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs";
import Turbolinks from "turbolinks";
import "channels";
import 'bootstrap';

import { initAutocomplete } from '../plugins/init_autocomplete'
import { initMapbox } from '../plugins/init_mapbox'

Rails.start();
Turbolinks.start();

document.addEventListener('turbolinks:load', () => {
  // Call your JS functions here
  initAutocomplete();
  initMapbox();
});
