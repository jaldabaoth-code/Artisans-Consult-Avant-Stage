$(document).ready(function(){

    // Set up our options for the slideshow...
    var myOptions = {
        noImages: 6,
        path: "slideshow/slideshow_images/",  // Relative path with trailing slash.
        links: { // Each image number must be listed here, unless no links are required at all, then links option can be ommitted.
            1:"http://www.artisansconsult.fr/realisations/travaux-renovation-construction-maison-travaux-peinture-loiret-45.html",
            2:"http://www.artisansconsult.fr/prestations/courtier-travaux-estimation-travaux-batiment-renovation.html",
            3:"http://www.artisansconsult.fr/charte-qualite/artisans-qualifies-devis-renovation-travaux-renovation.html",
            4:"http://www.artisansconsult.fr/partenaires/partenaires-informations-artisans-consult-courtier-travaux.html",
            5:"http://www.artisansconsult.fr/partenaires/partenaires-informations-artisans-consult-courtier-travaux.html",
            6:"http://www.artisansconsult.fr/partenaires/partenaires-informations-artisans-consult-courtier-travaux.html"
        },
        linksOpen:'newWindow',
        timerInterval: 6500, // 6500 = 6.5 seconds
	randomise: false // Start with random image?
    };

    // Woo! We have a jquery slideshow plugin!
    $('#example_1_container').easySlides(myOptions);

})