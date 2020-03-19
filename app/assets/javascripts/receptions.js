$(document).on('ready turbolinks:load', function() {
    $("#purchase_order").change(function(){
        $.ajax({
          url: "/search_details", 
          data: {id: this.value},
          dataType: 'script'
        })
      });
})