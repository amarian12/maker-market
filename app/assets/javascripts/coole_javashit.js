$(function(){

  $(".btn.category").on("click", function(e){
    // Change active selection
    $(".btn.category").removeClass('btn-primary');
    $(this).toggleClass('btn-primary');

    // Hide all selected-content (use class="hidden")
    $(".selected-category").addClass('hidden');

    // Show target category-content (use class="hidden")
    categoryTarget =  $(this).attr('data-target');
    $(categoryTarget).removeClass('hidden');
  });

});
