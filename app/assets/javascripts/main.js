window.last = null;
$(document).on('turbolinks:load', function() {

    $("body").on('click'," [data-do='like']",function (e) {
        e.preventDefault();
        var that = this;
        console.log($(that).data);
        $.ajax({
            type:'POST',
            url:'/favoris',
            data: {
                picture_id: $(that).data('picture')
            },
            success:function(data){
              location.reload();
            }
          });
    });

    $("body").on('click'," [data-do='unlike']",function (e) {
        e.preventDefault();
        var that = this;
        console.log($(that).data);
        $.ajax({
            type:'DELETE',
            url:'/favoris/' + $(that).data('id'),
          success:function(data){
            location.reload();
          }
        });
  });
})
