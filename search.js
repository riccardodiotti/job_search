$(document).ready(function() {
    $('search_form').on('submit', function(event){
        event.preventDefault();
        var formData = new FormData($('form')[0]);

        $.ajax({
            xhr: function() {
                var xhr = new window.XMLHttpRequest();
                xhr.upload.addEventListener('progress', function(e){
                    if (e.lengthComputable){
                        console.log('Time elapsed': e.)
                    }
                });
                return xhr;
            },
            type: 'GET',
            url: '/',
            data: formData,
            processData: false,
            contentType: false,
            success: function() {
                alert('Data inserted!');
            }
        })
    });
});