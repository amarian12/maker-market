$(function(){

  $(".btn.category").on("click", function(e){
    // Change active selection
    $(".btn.category").removeClass('active');
    $(this).toggleClass('active');

    // Hide all selected-content (use class="hidden")
    $(".selected-category").addClass('hidden');

    // Show target category-content (use class="hidden")
    categoryTarget =  $(this).attr('data-target');
    $(categoryTarget).removeClass('hidden');
  });

});
