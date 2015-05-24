$(document).ready(function(){
	$('.search_city_field').geocomplete({ details: ".search_city_form" });
	$('.search_city_button').click(function(){
		$('.search_city_field').trigger('geocode');
	});
});