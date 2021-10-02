const header1 = document.querySelector('#header1'),
      image1 = document.querySelector('#im1'),
      description1 = document.querySelector('#text1'),
      header2 = document.querySelector('#header2'),
      image2 = document.querySelector('#im2'),
      description2 = document.querySelector('#text2'),
      header3 = document.querySelector('#header3'),
      image3 = document.querySelector('#im3'),
      description3 = document.querySelector('#text3'),
      header4 = document.querySelector('#header4'),
      image4 = document.querySelector('#im4'),
      description4 = document.querySelector('#text4'),
      header5 = document.querySelector('#header5'),
      image5 = document.querySelector('#im5'),
      description5 = document.querySelector('#text5');

function getDataFromHeroku() {
    for(let num = 1; num <=5; num++){
    const request = new XMLHttpRequest();
    
    request.open('get', 'https://courseapplicati0n.herokuapp.com/swiper/'+num);

    try {

        request.onload = () => {
            const json = JSON.parse(request.responseText);
            
            if(num === 1){
            header1.innerText = json[0].header,
            description1.innerText = json[0].text,
            image1.src = json[0].image;
            }
            if(num === 2){
            header2.innerText = json[0].header,
            description2.innerText = json[0].text,
            image2.src = json[0].image;
            }
            if(num === 3){
            header3.innerText = json[0].header,
            description3.innerText = json[0].text,
            image3.src = json[0].image;
            }
            if(num === 4){
            header4.innerText = json[0].header,
            description4.innerText = json[0].text,
            image4.src = json[0].image;
            }
            if(num === 5){
            header5.innerText = json[0].header,
            description5.innerText = json[0].text,
            image5.src = json[0].image;
            }
        };

    } catch(e) {
        console.warn(e) ;
    }


    request.send();
    }
}

getDataFromHeroku();