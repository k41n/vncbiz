jQuery(function(){
  jQuery('.show-timeline').on('click', function() {
    $issueId = jQuery(this).data('issue-id');
    jQuery.ajax({
      url: '/issue_histories/' + $issueId,
      success: function(result) {
        jQuery('.vncbiz-layout').remove();
        jQuery('.timeline').remove();
        jQuery('body').prepend(result);
        jQuery('.timeline').timelify();
        jQuery('span.close').on('click', function(){
          jQuery('.vncbiz-layout').remove();
          jQuery('.timeline').remove();
        });
        setTimeout(function(){
          jQuery(window).scrollTop(1);
        }, 0);
      }
    });
  });
});
