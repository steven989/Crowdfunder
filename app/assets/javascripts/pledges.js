
  $(document).on('page:load', function() {

    $(".tier").click(function(event) {
      event.preventDefault();

      projectId = $(".show_project").attr("id");
      tierId = this.id;

      if ($("#backed").text() != "") {
        
        if (confirm("you already backed this project, are you sure you want to back it again?")) {


          var url = "/projects/"+projectId+"/tiers/"+tierId+"/pledges";

          $.ajax({
            url: url,
            type: "POST",
            dataType: "json",
          }).done(function(data){
            $("#raised span").text(data);
          }).fail(function() {
            alert("Pledge failed, please click again");
          });

          } else {
          // do nothing
        };
      };


    });




  });
