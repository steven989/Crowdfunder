// $(document).ready(function()
$(document).on('page:load', function() {

  $(".tier").click(function(event) {
    event.preventDefault();

    projectId = $(".show_project").attr("id");
    tierId = this.id;

    var url = "/projects/"+projectId+"/tiers/"+tierId+"/pledges";

    $.ajax({
      url: url,
      type: "POST",
      dataType: "json",
    }).done(function(data){
      console.log(data)
      $("#raised span").text(data);
    }).fail(function() {
      console.log(data);
      alert("Pledge failed, please click again");
    });
  });



});