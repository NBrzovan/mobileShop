var url=location.href;
window.onload=function(){
    podMeni();
}
if(url.indexOf("index.php")!=-1){
    slajder();
    prikazNajnovijih(false);
    $("#posalji").click(provera);
    prikaziAnketu();
    $("#rezultati").click(prikaziRezAnkete);
    $("#kontakt .disable").click(function(){alert("Morate se registrovati")});
    $("#kontakt .disableGlasao").click(function(){alert("Već ste odgovorili na ovu anketu")});
    $("#glasaj").click(upisOdgovora);
}
if(url.indexOf("registracija.php")!=-1){
    document.getElementById("posalji").addEventListener("click", registracija);
}
if(url.indexOf("login.php")!=-1){
    document.getElementById("posalji").addEventListener("click", logovanje);
}

function slideShow(){
    var aktivan=$("#slajder .vidljiv");
    var sledeci=aktivan.next().length?$(".vidljiv").next():aktivan.parent().children(":first");
    aktivan.removeClass("vidljiv").addClass("nevidljiv");
    sledeci.addClass("vidljiv").removeClass("nevidljiv");
}
function slajder(){
    setInterval(function(){
        slideShow();
}, 10000);
var strelicaDesno=$(".strelicaDesno");
var strelicaLevo=$(".strelicaLevo");
strelicaDesno.click(function(){
    slideShow();
});
strelicaLevo.click(function(){
    var aktivan=$("#slajder .vidljiv");
    var sledeci=aktivan.prev().length?$(".vidljiv").prev():aktivan.parent().children(":last");
    aktivan.removeClass("vidljiv").addClass("nevidljiv");
    sledeci.addClass("vidljiv").removeClass("nevidljiv");
})
}
function podMeni(){
    $("#bars").click(function(){
        $("#podMeni").slideToggle();
        $("#bars").toggleClass("MeniBar")
    });
}
function registracija(){
    let dobro=true;
    let btn=$("#posalji").val();
    let ime=$("#ime");
    let prezime=$("#prezime");
    let email=$("#email");
    let emailPotvrda=$("#emailPotvrda");
    let lozinka=$("#lozinka");
    let lozinkaPotvrda=$("#lozinkaPotvrda");
    let adresa=$("#adresa");
    let grad=$("#grad");
    let telefon=$("#telefon");
    let postanskiBroj=$("#postanskiBroj");

    let regExpIme=/^[A-Z][a-z]{2,19}$/;
    let regExpPrezime=/^[A-Z][a-z]{2,19}(\s[A-Z][a-z]{2,19})*$/;
    let regExpEmail=/^[^@]+@[^@]+\.[^@\.]+$/;
    let regExpTelefon=/^06\d{7,8}$/;
    let regExpAdresa=/^\w+(\s\w+)*$/;
    let regExpGrad=/^[A-Z][a-z]{1,15}(\s[A-Z][a-z]{1,15})*$/;
    let regPostanskiBroj=/^\d{4,10}$/;

    if(!regExpIme.test(ime.val())){
        ime.next().show();
        dobro=false;
    }
    else{
        ime.next().hide();
    }
    if(!regExpPrezime.test(prezime.val())){
        prezime.next().show();
        dobro=false;
    }
    else{
        prezime.next().hide();
    }
    if(!regExpEmail.test(email.val())){
        email.next().show();
        dobro=false;
    }
    else{
        email.next().hide();
    }
    if(email.val()!=emailPotvrda.val()){
        emailPotvrda.next().show();
        dobro=false;
    }
    else{
        emailPotvrda.next().hide();
    }
    if(!regExpTelefon.test(telefon.val())){
        telefon.next().show();
        dobro=false;
    }
    else{
        telefon.next().hide();
    }
    if(!regExpAdresa.test(adresa.val()) || adresa.val().length>100){
        adresa.next().show();
        dobro=false;
    }
    else{
        adresa.next().hide();
    }
    if(!regExpGrad.test(grad.val())){
        grad.next().show();
        dobro=false;
    }
    else{
        grad.next().hide();
    }
    if(!regPostanskiBroj.test(postanskiBroj.val())){
        postanskiBroj.next().show();
        dobro=false;
    }
    else{
        postanskiBroj.next().hide();
    }
    if(lozinka.val().length<6){
        lozinka.next().show();
        dobro=false;
    }
    else{
        lozinka.next().hide();
    }
    if(lozinka.val() != lozinkaPotvrda.val()){
        lozinkaPotvrda.next().show();
        dobro=false;
    }
    else{
        lozinkaPotvrda.next().hide();
    }

    if(dobro){
        ime=ime.val();
        prezime=prezime.val();
        email=email.val();
        lozinka=lozinka.val();
        adresa=adresa.val();
        grad=grad.val();
        telefon=telefon.val();
        postanskiBroj=postanskiBroj.val();
        $.ajax({
            url : "korisnik/registracija.php",
            method : "post",
            dataType : "json",
            data :{
                btn : btn,
                ime : ime,
                prezime : prezime,
                email : email,
                lozinka : lozinka,
                adresa : adresa,
                grad : grad,
                telefon : telefon,
                postanskiBroj : postanskiBroj
            },
            success : function(data){
                let ispis="";
                data.forEach(e=>{
                    ispis+=`<span>${e}</span><br/>`;
                })
                document.getElementById("poruka").innerHTML=ispis;
            },
            error : function(xhr, status, data){
                let ispis="";
                xhr.responseJSON.forEach(e=>{
                    ispis+=`<span>${e}</span><br/>`;
                })
                document.getElementById("poruka").innerHTML=ispis;
            }
        });
    }
}
function logovanje(){
    let dobro=true;
    let btn=$("#posalji").val();
    let email=$("#email");
    let lozinka=$("#lozinka");

    let regExpEmail=/^[^@]+@[^@]+\.[^@\.]+$/;

    if(!regExpEmail.test(email.val())){
        email.next().show();
        dobro=false;
    }
    else{
        email.next().hide();
    }
    if(lozinka.val().length<6){
        lozinka.next().show();
        dobro=false;
    }
    else{
        lozinka.next().hide();
    }

    if(dobro){
        email=email.val();
        lozinka=lozinka.val();
        $.ajax({
            url : "korisnik/logovanje.php",
            method : "post",
            dataType : "json",
            data :{
                btn : btn,
                email : email,
                lozinka : lozinka
            },
            success : function(data){
                window.location.href="index.php";
            },
            error : function(xhr, status, data){
                let ispis="";
                xhr.responseJSON.forEach(e=>{
                    ispis+=`<span>${e}</span><br/>`;
                })
                document.getElementById("poruka").innerHTML=ispis;
            }
        });
    }
}

function provera(){
    let btn=document.getElementById("posalji").value;
    let ime= document.getElementById("ime").value;
    let prezime= document.getElementById("prezime").value;
    let email= document.getElementById("email").value;
    let telefon= document.getElementById("telefon").value;
    let poruka= document.getElementById("porukaForma").value;
    let razlogKontakta= document.getElementById("razlogKontakta").value;

    let regExpPrezime=/^[A-Z][a-z]{2,19}(\s[A-Z][a-z]{2,19})*$/;
    let regExpIme=/^[A-Z][a-z]{2,19}$/;
    let regExpEmail=/^[^@]+@[^@]+\.[^@\.]+$/;
    let regExpTelefon=/^06\d{7,8}$/;
    let regExpPoruka=/^[^@]+(\s[^@]+)*$/;
    let dobro=true;
    if(!regExpIme.test(ime)){
        $("#greskaIme").show();
        dobro=false;
    }else{
        $("#greskaIme").hide();
    }
    if(!regExpPrezime.test(prezime)){
        $("#greskaPrezime").show();
        dobro=false;
    }else{
        $("#greskaPrezime").hide();
    }
    if(!regExpEmail.test(email)){
        $("#greskaEmail").show();
        dobro=false;
    }else{
        $("#greskaEmail").hide();
    }
    if(!regExpTelefon.test(telefon)){
        $("#greskaTelefon").show();
        dobro=false;
    }else{
        $("#greskaTelefon").hide();
    }
    if(!regExpPoruka.test(poruka)){
        $("#greskaPoruka").show();
        dobro=false;
    }
    else{
        $("#greskaPoruka").hide();
    }
    if(razlogKontakta==0){
        $("#greskaRazlogKontakta").show();
        dobro=false;
    }
    else{
        $("#greskaRazlogKontakta").hide();
    }
    if(dobro){
        let nizRazlogKontakta=["Prodaja", "Isporuka robe", "Reklamacije", "Vaše primedbe i sugestije", "Ostala pitanja"];
        razlogKontakta=nizRazlogKontakta[razlogKontakta-1];

        $.ajax({
            url : "admin/mejl-insert.php",
            method : "post",
            dataType : "json",
            data :{
                btn : btn,
                ime : ime,
                prezime : prezime,
                email : email,
                telefon : telefon,
                razlogKontakta : razlogKontakta,
                poruka : poruka
            },
            success : function(data){
                let ispis="";
                data.forEach(e=>{
                    ispis+=`<span>${e}</span><br/>`;
                })
                document.getElementById("poruka").innerHTML=ispis;
            },
            error : function(xhr, status, data){
                let ispis="<ol>";
                xhr.responseJSON.forEach(e=>{
                    ispis+=`<li class='crveno'>${e}</li>`;
                })
                ispis+="</ol>"
                document.getElementById("poruka").innerHTML=ispis;
            }
        });
    }
}



