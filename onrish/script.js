$(document).ready(function(){

    $('.delete').click(function(){
        var el = this;
        var id = this.id;
        var splitid = id.split("_");

        // Delete id
        var deleteid = splitid[1];
        
        // AJAX Request
        $.ajax({
            url: 'act.php',
            type: 'POST',
            data: { id:deleteid },
            
            success: function(){
          
            $("#bunty").load(" #bunty");
                
            },
        });
    });
});