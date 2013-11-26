$(document).ready(function () {
    var file = null;
    $('#photo').photobooth().on("image", function (event, dataUrl) {
        file = dataURLtoBlob(dataUrl);
        var size = file.size;
        alert("Picture size: " + size);
        uploadImage(file);
        $("#gallery").append('<img src="' + dataUrl + '" >');
    });
});

function dataURLtoBlob(dataUrl) {
    // Decode the dataURL    
    var binary = atob(dataUrl.split(',')[1]);

    // Create 8-bit unsigned array
    var array = [];
    for (var i = 0; i < binary.length; i++) {
        array.push(binary.charCodeAt(i));
    }

    // Return our Blob object
    return new Blob([new Uint8Array(array)], {
        type: 'image/png'
    });
}

function uploadImage(file) {
    var fd = new FormData();
    // Append our Canvas image file to the form data
    fd.append("files", file);
    fd.append("album", "<insert your Lambda album name");
    fd.append("albumkey", "<insert your Lambda album key>");
    // And send it
    $.ajax({
        url: "<insert Mashape Lambda face recognition API url here>",
        type: "POST",
        data: fd,
        processData: false,
        contentType: false,
        beforeSend: function (xhr) {
            xhr.setRequestHeader("X-Mashape-Authorization", "<insert your Mashape key here>");
        }
    }).done(function (result) {
        alert("Received response..");
        var resultObject = JSON.stringify(result);
        alert(resultObject);
    });
}