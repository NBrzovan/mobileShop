function dodajAnketu() {
    let odgovorId = $("#id_odgovor").val();
    $.ajax({
        "url" : BASE_URL + "/anketa",
        method : "POST",
        data : {
            'id_odgovor' : odgovorId,
            '_method' : "POST",
            '_token' : TOKEN
        },
        type : 'json',
        success : function(data) {
            prikaziPoruku();
        },
        error : function(error)
        {
            console.log("Something went wrong....");
        }
    });
}

function prikaziPoruku()
{
    console.log('uspesno dodata anketa');
    $("#poruka").html("<div>Anketa uspesno popunjena!</div>");
    $("#anketa").css('display', 'none');
    $("#feedback").html("<div>Anketa uspesno popunjena!</div>");
}
