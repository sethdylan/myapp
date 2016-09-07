$(document).on('turbolinks:load', function(){
  $('.rating').raty( { path: '/assets', scorename: 'comment[rating]'});
  $('.rated').raty({ path: '/assets',
    readOnly: true,
    score: function() {
      return $(this).attr('data-score');
    }
  });
});
