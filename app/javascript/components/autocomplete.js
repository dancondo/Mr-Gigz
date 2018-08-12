function autocomplete() {
  document.addEventListener("DOMContentLoaded", function() {
    var barAddress = document.getElementById('bar_address');

    if (barAddress) {
      var autocomplete = new google.maps.places.Autocomplete(barAddress, { types: [ 'geocode' ] });
      google.maps.event.addDomListener(barAddress, 'keydown', function(e) {
        if (e.key === "Enter") {
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }
  });
}

export { autocomplete };
