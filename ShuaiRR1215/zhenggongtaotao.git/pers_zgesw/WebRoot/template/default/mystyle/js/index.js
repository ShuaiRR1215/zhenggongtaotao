//寰俊浜岀淮鐮佸脊鍑轰唬鐮�
$(function(){
	var weicode = $("#guanzhu .weiCode");
	$("#guanzhu").mouseenter(function(){
		weicode.show();
	}).mouseleave(function(){
		setTimeout(function(){
			weicode.hide();
		},300);
	});
	$(".wxFocus").click(function(){
		return false;
	});
});

// 宸︿晶鍏ㄩ儴鍒嗙被鐨勬晥鏋�
$(function(){
	$("#classification ul li").mouseover(function(){
	// var top=$(this).offset().top;//鑾峰彇浠栧埌澶撮儴鐨勮窛绂�
// var height=$(this).find(".menu").height();
// alert(top+"#"+height);
// if(top<height){
// top=0;//鎺у埗menu top鐨勫€�
// }else{
// top=-height;
// }
// $(this).find(".menu").css("top",top).show();//娣诲姞top鐨勫€硷紝骞惰偗鏄剧ずmenu
		$(this).find(".menu").show();
		$(this).addClass("classFocus");// 缁檒i娣讳腑鏍峰紡
	
	}).mouseout(function(){
		$(this).find(".menu").hide();// 闅愯棌
		$(this).removeClass("classFocus");// 绉诲嚭鏍峰紡
	});
});

// 鐒︾偣鍥惧姩鐢绘晥鏋�
$(function(){
	$.ajax({
		url: 'http://api.taoertao.com',
		type: 'POST',
		success: function(data){

			data.forEach(function(v, i){
				$('.rImg').append('<li><a href="'+v.url+'" target="_blank"><img src="'+v.image+'" alt="'+v.words+'"></a></li>')
				if(i == 0){
					$('.button').append('<li class="on"></li>')
				}else{
					$('.button').append('<li></li>')
				}
			})

			var rImg = $(".rImg li");
			var rButton = $(".button li");
			var focusMap = $(".focusMap");
			var index = 0;
			var interval = 5000;
			var t;
			var count = rImg.length;
			var prevNext = $(".focusMap span");// 涓や釜宸﹀彸鍒囨崲鐨勬寜閽�
			var prevImg = $(".focusMap .prev");
			var nextImg = $(".focusMap .next");
			
			focusMap.mouseover(function(){
				prevNext.show();
				clearInterval(t);
			}).mouseout(function(){
				prevNext.hide();
				t = setInterval(next,interval);
			});
			// 闅愯棌鍏ㄩ儴
			var hideAll = function(){
				rImg.hide();
				rButton.removeClass("on");
			};
			// 鏄剧ず褰撳墠
			var showItem = function(){
				hideAll();
				$(rImg[index]).fadeIn();
				$(rButton[index]).addClass("on");
			};
			// 涓嬩竴寮
			var next = function(){
				index += 1;
				if(index == count){
					index = 0;
				} 
				showItem();
			};
			
			t = setInterval(next,interval);
			// 涓婁竴寮
			prevImg.click(function(){
				index -= 1;
				if(index == -1){
					index = count - 1;
				}
				showItem();
			});
			// 涓嬩竴寮
			nextImg.click(function(){
				index += 1;
				if(index == count){
					index = 0;
				}
				showItem();
			});
			
			rButton.each(function(i, n) {
		        $(n).bind("click",function(){
					index = i;
					showItem();
				});
		    });
		},
		error: function(err){
			console.log(err)
		}
	})
});		

// 鏃犵紳婊氬姩鍔ㄧ敾
$(function(){
	$("#scrollImg").mouseover(function(){
		$("#scrollImg span").show();
	}).mouseout(function(){
		$("#scrollImg span").hide();
	});
});
$(function(){
    $("#box").imgScroll({
        btnPrev: "#prev",
		btnNext: "#next",
   		auto: 4000,// 鍥剧墖鍋滅暀鏃堕棿
   		scroll: 5,// 姣忔婊氬姩瑕嗙洊鐨勫浘鐗囦釜鏁�
   		speed: 1000, // 璁剧疆閫熷害锛�0鏄笉鍔ㄣ€傚叾娆″氨鏄暟瀛楄秺澶� 锛岀Щ鍔ㄨ秺鎱€€�
   		vertical: false,// 妯悜锛坱rue锛夛紝绔栧悜锛坒alse锛�
   		visible: 6, // 鏄剧ず鐨勬暟閲�
   		circular: true // 鏄惁寰幆
    });
	
});

(function($) {
    $.fn.imgScroll = function(o) {
        o = $.extend({
            btnPrev: null, btnNext: null, btnGo: null, mouseWheel: false, auto: null, speed: 200, easing: null, vertical: false, circular: true, visible: 3, start: 0, scroll: 1, beforeStart: null, play: true,
            afterEnd: null
        }, o || {});
        return this.each(function() {
            var b = false, animCss = o.vertical ? "top" : "left", sizeCss = o.vertical ? "height" : "width";
            var c = $(this), ul = $("ul", c), tLi = $("li", ul), tl = tLi.size(), v = o.visible;
            ul.bind("mouseover", function() {
                if (o.play) {
                    o.play = false;
                }
            })
            ul.bind("mouseout", function() {
                if (!o.play) {
                    o.play = true;
                }
            })
            if (o.circular) {
                ul.prepend(tLi.slice(tl - v - 1 + 1).clone()).append(tLi.slice(0, v).clone());
                o.start += v
            }
            var f = $("li", ul), itemLength = f.size(), curr = o.start; c.css("visibility", "visible");
            f.css({ overflow: "hidden", float: o.vertical ? "none" : "left" });
            ul.css({ margin: "0", padding: "0", position: "relative", "list-style-type": "none", "z-index": "1" });
            c.css({ overflow: "hidden", position: "relative", "z-index": "2", left: "0px" });
            var g = o.vertical ? height(f) : width(f);
            var h = g * itemLength;
            var j = g * v; f.css({ width: f.width(), height: f.height() });
            ul.css(sizeCss, h + "px").css(animCss, -(curr * g));
            c.css(sizeCss, j + "px");
            if (o.btnPrev) $(o.btnPrev).click(function() {
                return go(curr - o.scroll)
            });
            if (o.btnNext) $(o.btnNext).click(function() {
                return go(curr + o.scroll)
            });
            if (o.btnGo) $.each(o.btnGo, function(i, a) {
                $(a).click(function() { return go(o.circular ? o.visible + i : i) })
            });
            if (o.mouseWheel && c.mousewheel) c.mousewheel(function(e, d) {
                return d > 0 ? go(curr - o.scroll) : go(curr + o.scroll)
            });
            if (o.auto) {
                setInterval(AutoPlay, o.auto + o.speed);
            }
            function vis() {
                return f.slice(curr).slice(0, v)
            };
            function AutoPlay() { if (o.play) { go(curr + o.scroll); } };
            function go(a) {
                if (!b) {
                    if (o.beforeStart) o.beforeStart.call(this, vis());
                    if (o.circular) {
                        if (a <= o.start - v - 1) {
                            ul.css(animCss, -((itemLength - (v * 2)) * g) + "px");
                            curr = a == o.start - v - 1 ? itemLength - (v * 2) - 1 : itemLength - (v * 2) - o.scroll
                        }
                        else if (a >= itemLength - v + 1) {
                            ul.css(animCss, -((v) * g) + "px");
                            curr = a == itemLength - v + 1 ? v + 1 : v + o.scroll
                        }
                        else
                            curr = a
                    }
                    else {
                        if (a < 0 || a > itemLength - v)
                            return;
                        else curr = a
                    }
                    b = true;
                    ul.animate(animCss == "left" ? { left: -(curr * g)} : { top: -(curr * g) }, o.speed, o.easing, function() {
                        if (o.afterEnd) o.afterEnd.call(this, vis()); b = false
                    });
                    if (!o.circular) {
                        $(o.btnPrev + "," + o.btnNext).removeClass("disabled");
                        $((curr - o.scroll < 0 && o.btnPrev) || (curr + o.scroll > itemLength - v && o.btnNext) || []).addClass("disabled")
                    }
                } return false
            }
        })
    };
    function css(a, b) { return parseInt($.css(a[0], b)) || 0 };
    function width(a) { return a[0].offsetWidth + css(a, 'marginLeft') + css(a, 'marginRight') };
    function height(a) { return a[0].offsetHeight + css(a, 'marginTop') + css(a, 'marginBottom') }

})(jQuery);



// 鍥為《閮ㄧ壒鏁堜唬鐮�
$(function(){
	var goBtn = $("#go-top a");
	var goBox = $("#go-top");
	$(window).on("scroll",function(){
		var st = $(document).scrollTop();
		if(st > 100){
			goBox.show();
		}else{
			goBox.hide();
		}
	});
	
	goBtn.mouseover(function(){
		goBtn.addClass("hover");
	}).mouseout(function(){
		goBtn.removeClass("hover");
	});
	
	goBtn.on('click',function(){
		$('html,body').animate({scrollTop:'0'},500);
	});
});
















