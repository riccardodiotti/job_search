const form = document.getElementById('search');

async function post(e) {
  const form = document.forms.search;
  const keyword = form.keyword.value;

  try {
    const res = await fetch(baseUrl + "website?key=hello", {
      method: "POST",
      body: JSON.stringify({
        keyword,
     }),
     headers: { "Content-Type": "application/json" },
   });

  // handle the response here
 } catch (error) {
  // handle error here
 }
}

form.addEventListener('submit', post, false);

var get_water_level = function() {
  $.get( "/waterlevel", function( data ) {
    $( "#water" ).html( data['waterlevel'] );
  });
};
var interval = 1000 * 60 * X; // where X is your every X minutes

setInterval(get_water_level, interval);

window.addEventListener("load", () => {
  const loader = document.querySelector(".loader");

loader.classList.add("loader-hidden");
loader.addEventListener("transitionend", () => {
  document.body.removeChild("loader");
})
})