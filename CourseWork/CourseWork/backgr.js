const back = document.body.style;

function randomBack() {
    const request = new XMLHttpRequest();
    
    min = Math.ceil(1);
    max = Math.floor(11);
    let rand = Math.floor(Math.random() * (max - min)) + min;
    
    request.open('get', 'https://courseapplicati0n.herokuapp.com/back/'+rand);

    try {

        request.onload = () => {
            const json = JSON.parse(request.responseText);
            back.backgroundImage = "url("+json[0].pict+")";
        };

    } catch(e) {
        console.warn(e) ;
    }


    request.send();
    }
randomBack();



