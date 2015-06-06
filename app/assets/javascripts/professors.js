
var isClicked = true;

$("#professor_full_profile").click(function() {
    if (isClicked) {
        $("#professor_profile").show().animate({'height': '600px'});
        isClicked = false;
    }else{
        $("#professor_profile").animate({'height': 0}, 'fast', function(){ $(this).hide(); });
        isClicked = true;
    }
});
$("#x").click(function() {
    $("#professor_profile").animate({'height': 0}, 'fast', function(){ $(this).hide(); });
    isClicked = true;
});
$("#close").click(function() {
    $("#professor_profile").animate({'height': 0}, 'fast', function(){ $(this).hide(); });
    isClicked = true;
});





