const formCheck = () =>  {
	$(document).ready(function(){
	  $(".tag-choice").click(function(){
	    $(this).toggleClass("active");
	  });
	});
}
module.exports = (formCheck);