$ ->
  $('.fancybox').fancybox({openEffect: 'elastic', closeEffect: 'elastic', openSpeed: 'slow'})
  $('.new_rsvp').submit ->
    $.fancybox.close();