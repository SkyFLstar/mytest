function jquery_tab(tab_name,tab_con,mouse_sj)
{
	var tab_bq=$(tab_name);
	var tab_nr=$(tab_con);
	tab_bq.eq(0).addClass('active');
	tab_nr.eq(0).show();
	var sj=mouse_sj=='click'?sj='click':sj='hover';
	//三目（三元）运算
	tab_bq[sj](function(){
		$(this).addClass('active').siblings().removeClass('active');
		tab_nr.eq(tab_bq.index(this)).show().siblings().hide();
	});
}
/*弹出层*/
$(document).ready(function() {
$(".colse_gb,#div_zhezhao").click(function(){
	$(".tanchu_divzz").stop().fadeOut(100);
	$(".tanchu_div").stop().fadeOut(100);
});
});
function tanchu_div(div_cs1,div_cs2)
{
	$("#"+div_cs1).css({ 'height': $(document).height() });
	$("#"+div_cs1).stop().show();
	$("#"+div_cs2).tanchu_ctyle();
	$("#"+div_cs2).stop().show();
}
jQuery.fn.tanchu_ctyle=function(loaded) {
var tanchu_obj01 = this;
body_width01 = parseInt($(window).width());
body_height01 = parseInt($(window).height());
block_width01 = parseInt(tanchu_obj01.width());
block_height02 = parseInt(tanchu_obj01.height());
left_position01 = parseInt((body_width01/2) - (block_width01/2)  + $(window).scrollLeft());
if (body_width01<block_width01) { left_position01 = 0 + $(window).scrollLeft(); };
top_position = parseInt((body_height01/2) - (block_height02/2) + $(window).scrollTop());
if (body_height01<block_height02) { top_position = 0 + $(window).scrollTop(); };
if(!loaded) {
tanchu_obj01.css({'position': 'absolute'});
tanchu_obj01.css({ 'top': top_position, 'left': left_position01 });
$(window).bind('resize', function() { 
tanchu_obj01.tanchu_ctyle(!loaded);
});
$(window).bind('scroll', function() { 
tanchu_obj01.tanchu_ctyle(!loaded);
});
}
else
{
	tanchu_obj01.stop();
	tanchu_obj01.css({'position':'absolute'});
	tanchu_obj01.animate({'top':top_position },0,'linear');
	tanchu_obj01.animate({'left':left_position01 },0,'linear');
}
}
/*多选单选*/
$.fn.danxuan_no = function(options) {
	var $labels = $('label', this).click(function(event) {
		$labels.removeClass("danxuan_Checked");
	$(this).addClass("danxuan_Checked");
		event.stopPropagation();
	}).addClass('danxuan');
}