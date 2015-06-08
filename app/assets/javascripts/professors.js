
var isClicked = true;

$("#professor-full-profile").click(function() {
    if (isClicked) {
        $("#professor-profile").show().animate({'height': '600px'});
        isClicked = false;
    }else{
        $("#professor-profile").animate({'height': 0}, 'fast', function(){ $(this).hide(); });
        isClicked = true;
    }
});
$("#x").click(function() {
    $("#professor-profile").animate({'height': 0}, 'fast', function(){ $(this).hide(); });
    isClicked = true;
});
$("#close").click(function() {
    $("#professor-profile").animate({'height': 0}, 'fast', function(){ $(this).hide(); });
    isClicked = true;
});