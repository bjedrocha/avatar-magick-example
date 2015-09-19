var ready = function() {
    $( '.btn-file :file' ).on( 'fileselect', function( event, numFiles, label ) {
        
        var input = $( this ).parents( '.input-group' ).find( ':text' );
        input.val( label );
                
    });
};

$(document).ready( ready );
$(document).on( 'page:load', ready );