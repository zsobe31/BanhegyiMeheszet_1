function login(){
    var user = document.getElementById("txtFelhasznalonev").value;
    var passwd = document.getElementById("txtJelszo").value;
    var captcha = document.getElementById("captcha").value;
    $.ajax({
        url:"Controller",
        type:"post",
        data:{"username":user, "password":passwd, "captcha":captcha, "task":"login"},
        success:function(valasz){
            alert(valasz.result);
            if(valasz.success == "1"){
                window.location = "profil.html";
            }
            
           
        },
        error:function(){
            alert("login hiba");
        }
    });
}

function userdata(){   
    $.ajax({
        url:"Controller",
        type:"post",
        data:{"task":"userdata"},
        success:function(valasz){
            if(valasz.success == "1"){
                document.getElementById("udv").innerHTML = valasz.nev;
            }
            else{
                alert("Nem vagy bejelentkezve!");
                window.location = "index.html";
            }
           
        },
        error:function(){
            alert("hiba");
            window.location = "index.html";
        }
    });
    
}

function betoltA(){
    $.ajax({
        url:"Controller",
        type:"post",
        data:{"task":"betoltA"},
        success:function(valasz){
            var adatokDiv = document.getElementById("akacmez");
            for(var i = 0; i < valasz.length; i++){
                adatokDiv.innerHTML += "<div>";
//                    adatokDiv.innerHTML += "<span>" + valasz[i].id + "</span>";
//                    adatokDiv.innerHTML += "<span>" + valasz[i].nev + "</span>";
                    adatokDiv.innerHTML += "<span>" + valasz[i].mennyiseg + "</span>";
                    adatokDiv.innerHTML += "<span>" + valasz[i].ara + "</span>";
                adatokDiv.innerHTML += "</div>";
            }
            
        },
        error:function(){
            alert("Akác hiba");
        }
    });
}

function betoltH(){
    $.ajax({
        url:"Controller",
        type:"post",
        data:{"task":"betoltH"},
        success:function(valasz){
            var adatokDiv = document.getElementById("harsmez");
            for(var i = 0; i < valasz.length; i++){
                adatokDiv.innerHTML += "<div>";
//                    adatokDiv.innerHTML += "<span>" + valasz[i].id + "</span>";
//                    adatokDiv.innerHTML += "<span>" + valasz[i].nev + "</span>";
                    adatokDiv.innerHTML += "<span>" + valasz[i].mennyiseg + "</span>";
                    adatokDiv.innerHTML += "<span>" + valasz[i].ara + "</span>";
                adatokDiv.innerHTML += "</div>";
            }
            
        },
        error:function(){
            alert("Hárs hiba");
        }
    });
}

function betoltN(){
    $.ajax({
        url:"Controller",
        type:"post",
        data:{"task":"betoltN"},
        success:function(valasz){
            var adatokDiv = document.getElementById("nyarivirag");
            for(var i = 0; i < valasz.length; i++){
                adatokDiv.innerHTML += "<div>";
//                    adatokDiv.innerHTML += "<span>" + valasz[i].id + "</span>";
//                    adatokDiv.innerHTML += "<span>" + valasz[i].nev + "</span>";
                    adatokDiv.innerHTML += "<span>" + valasz[i].mennyiseg + "</span>";
                    adatokDiv.innerHTML += "<span>" + valasz[i].ara + "</span>";
                adatokDiv.innerHTML += "</div>";
            }
            
        },
        error:function(){
            alert("Nyárivirág hiba");
        }
    });
}

function betoltT(){
    $.ajax({
        url:"Controller",
        type:"post",
        data:{"task":"betoltT"},
        success:function(valasz){
            var adatokDiv = document.getElementById("tavaszivirag");
            for(var i = 0; i < valasz.length; i++){
                adatokDiv.innerHTML += "<div>";
//                    adatokDiv.innerHTML += "<span>" + valasz[i].id + "</span>";
//                    adatokDiv.innerHTML += "<span>" + valasz[i].nev + "</span>";
                    adatokDiv.innerHTML += "<span>" + valasz[i].mennyiseg + "</span>";
                    adatokDiv.innerHTML += "<span>" + valasz[i].ara + "</span>";
                adatokDiv.innerHTML += "</div>";
            }
            
        },
        error:function(){
            alert("Tavaszivirág hiba");
        }
    });
}

function betoltR(){
    $.ajax({
        url:"Controller",
        type:"post",
        data:{"task":"betoltR"},
        success:function(valasz){
            var adatokDiv = document.getElementById("repcemez");
            for(var i = 0; i < valasz.length; i++){
                adatokDiv.innerHTML += "<div>";
//                    adatokDiv.innerHTML += "<span>" + valasz[i].id + "</span>";
//                    adatokDiv.innerHTML += "<span>" + valasz[i].nev + "</span>";
                    adatokDiv.innerHTML += "<span>" + valasz[i].mennyiseg + "</span>";
                    adatokDiv.innerHTML += "<span>" + valasz[i].ara + "</span>";
                adatokDiv.innerHTML += "</div>";
            }
            
        },
        error:function(){
            alert("Repce hiba");
        }
    });
}

function betoltF(){
    $.ajax({
        url:"Controller",
        type:"post",
        data:{"task":"betoltF"},
        success:function(valasz){
            var adatokDiv = document.getElementById("nap");
            for(var i = 0; i < valasz.length; i++){
                adatokDiv.innerHTML += "<div>";
//                    adatokDiv.innerHTML += "<span>" + valasz[i].id + "</span>";
//                    adatokDiv.innerHTML += "<span>" + valasz[i].nev + "</span>";
                    adatokDiv.innerHTML += "<span>" + valasz[i].mennyiseg + "</span>";
                    adatokDiv.innerHTML += "<span>" + valasz[i].ara + "</span>";
                adatokDiv.innerHTML += "</div>";
            }
            
        },
        error:function(){
            alert("Napraforgó hiba");
        }
    });
}

function betoltD(){
    $.ajax({
        url:"Controller",
        type:"post",
        data:{"task":"betoltD"},
        success:function(valasz){
            var adatokDiv = document.getElementById("disz");
            for(var i = 0; i < valasz.length; i++){
                adatokDiv.innerHTML += "<div>";
//                    adatokDiv.innerHTML += "<span>" + valasz[i].id + "</span>";
                    adatokDiv.innerHTML += "<span>" + valasz[i].nev + "</span>";
                    adatokDiv.innerHTML += "<span>" + valasz[i].mennyiseg + "</span>";
                    adatokDiv.innerHTML += "<span>" + valasz[i].ara + "</span>";
                adatokDiv.innerHTML += "</div>";
            }
            
        },
        error:function(){
            alert("Diszcsomag hiba");
        }
    });
}

function betoltV(){
    $.ajax({
        url:"Controller",
        type:"post",
        data:{"task":"betoltV"},
        success:function(valasz){
            var adatokDiv = document.getElementById("velemeny1");
                adatokDiv.innerHTML += "<div>";
                    adatokDiv.innerHTML += "<p>" + valasz[0].leiras + "</p>";
                    adatokDiv.innerHTML += "<p>" + valasz[0].szerzo + "</p>";
                adatokDiv.innerHTML += "</div>";
                
            var adatokDiv = document.getElementById("velemeny2");
                adatokDiv.innerHTML += "<div>";
                    adatokDiv.innerHTML += "<p>" + valasz[1].leiras + "</p>";
                    adatokDiv.innerHTML += "<p>" + valasz[1].szerzo + "</p>";
                adatokDiv.innerHTML += "</div>";
                
            var adatokDiv = document.getElementById("velemeny3");
                adatokDiv.innerHTML += "<div>";
                    adatokDiv.innerHTML += "<p>" + valasz[2].leiras + "</p>";
                    adatokDiv.innerHTML += "<p>" + valasz[2].szerzo + "</p>";
                adatokDiv.innerHTML += "</div>";
                
            var adatokDiv = document.getElementById("velemeny4");
                adatokDiv.innerHTML += "<div>";
                    adatokDiv.innerHTML += "<p>" + valasz[3].leiras + "</p>";
                    adatokDiv.innerHTML += "<p>" + valasz[3].szerzo + "</p>";
                adatokDiv.innerHTML += "</div>";
                
            var adatokDiv = document.getElementById("velemeny5");
                adatokDiv.innerHTML += "<div>";
                    adatokDiv.innerHTML += "<p>" + valasz[4].leiras + "</p>";
                    adatokDiv.innerHTML += "<p>" + valasz[4].szerzo + "</p>";
                adatokDiv.innerHTML += "</div>";
            
            
        },
        error:function(){
            alert("Vélemények hiba");
        }
    });
}

function betoltP(){
    $.ajax({
        url:"Controller",
        type:"post",
        data:{"task":"betoltP"},
        success:function(valasz){
            var adatokDiv = document.getElementById("partner01");
                    adatokDiv.innerHTML += "<h5>" + valasz[0].nev + "</h5>";
            var urlDiv = document.getElementById("url01");
                    urlDiv.innerHTML += "<p>" + valasz[0].url + "</p>";
            var iconDiv = document.getElementById("icon01");
                    iconDiv.innerHTML += "<p>" + valasz[0].icon + "</p>";
                    
            var adatokDiv = document.getElementById("partner02");
                    adatokDiv.innerHTML += "<h5>" + valasz[1].nev + "</h5>";
            var urlDiv = document.getElementById("url02");
                    urlDiv.innerHTML += "<p>" + valasz[1].url + "</p>";
            var iconDiv = document.getElementById("icon02");
                    iconDiv.innerHTML += "<p>" + valasz[1].icon + "</p>";
                    
            var adatokDiv = document.getElementById("partner03");
                    adatokDiv.innerHTML += "<h5>" + valasz[2].nev + "</h5>";
            var urlDiv = document.getElementById("url03");
                    urlDiv.innerHTML += "<p>" + valasz[2].url + "</p>";
            var iconDiv = document.getElementById("icon03");
                    iconDiv.innerHTML += "<p>" + valasz[2].icon + "</p>";
                    
        },
        error:function(){
            alert("Partnerek hiba");
        }
    });
}

function betoltE(){
    $.ajax({
        url:"Controller",
        type:"post",
        data:{"task":"betoltE"},
        success:function(valasz){
            
            var urlDiv = document.getElementById("url10");
                    urlDiv.innerHTML += "<p>" + valasz[0].url + "</p>";
            var iconDiv = document.getElementById("icon10");
                    iconDiv.innerHTML += "<p>" + valasz[0].icon + "</p>";
                    
            
            var urlDiv = document.getElementById("url11");
                    urlDiv.innerHTML += "<p>" + valasz[1].url + "</p>";
            var iconDiv = document.getElementById("icon11");
                    iconDiv.innerHTML += "<p>" + valasz[1].icon + "</p>";
                    
            
            var urlDiv = document.getElementById("url12");
                    urlDiv.innerHTML += "<p>" + valasz[2].url + "</p>";
            var iconDiv = document.getElementById("icon12");
                    iconDiv.innerHTML += "<p>" + valasz[2].icon + "</p>";
                    
            
            var urlDiv = document.getElementById("url13");
                    urlDiv.innerHTML += "<p>" + valasz[3].url + "</p>";
            var iconDiv = document.getElementById("icon13");
                    iconDiv.innerHTML += "<p>" + valasz[3].icon + "</p>";
                    
        },
        error:function(){
            alert("Elerhetőségek hiba");
        }
    });
}





