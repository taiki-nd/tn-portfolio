$(function(){
  /*=================================================
  スクロール時の画像フェード表示
  ===================================================*/
  // スクロール時のイベント
  $(window).scroll(function() {
    // fadeinクラスに対して順に処理を行う
    $('.fadein_left').each(function() {
      // スクロールした距離
      let scroll = $(window).scrollTop();
      // fadeinクラスの要素までの距離
      let target = $(this).offset().top;
      // 画面の高さ
      let windowHeight = $(window).height();
      // fadeinクラスの要素が画面下にきてから200px通過した
      // したタイミングで要素を表示
      if (scroll > target - windowHeight + 200) {
        $(this).css('opacity','1');
        $(this).css('transform','translateY(0)');
      }
    });
  });

  $(window).scroll(function() {
    // fadeinクラスに対して順に処理を行う
    $('.fadein_right').each(function() {
      // スクロールした距離
      let scroll = $(window).scrollTop();
      // fadeinクラスの要素までの距離
      let target = $(this).offset().top;
      // 画面の高さ
      let windowHeight = $(window).height();
      // fadeinクラスの要素が画面下にきてから200px通過した
      // したタイミングで要素を表示
      if (scroll > target - windowHeight + 200) {
        $(this).css('opacity','1');
        $(this).css('transform','translateY(0)');
      }
    });
  });



  // アニメーションさせたいクラス
  var container = $(".title_word");
  // アニメーションスピード
  var speed = 80;

  // テキストの間にスペースを入れます
  var content = container.html();
  var text = $.trim(content);
  var newHtml = "";

  // スペースで区切ったテキストを、テキストの数だけspanで囲む
  text.split("").forEach(function(v) {
    newHtml += '<span>' + v + '</span>';
  });

  // spanで囲んだテキスト群をHTMLに戻す
  container.html(newHtml);

  // 1文字ずつ表示
  var txtNum = 0;
  container.css({opacity: 1});
  setInterval(function() {
    container.find('span').eq(txtNum).css({opacity: 1});
    txtNum++
  }, speed);

});