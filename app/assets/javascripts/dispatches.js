$(document).on('ready turbolinks:load', function() {
    $("#dispatch_order").change(function(){
        $.ajax({
          url: "/search_od", 
          data: {id: this.value},
          dataType: 'script'
        })
      });
})