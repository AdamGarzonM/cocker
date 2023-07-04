
function jumpscare(){
    alert('boneees');
    var scripts = document.getElementsByTagName('script');
    var lastScript = scripts[scripts.length-1];
    var scriptName = lastScript;
    alert('boneasdasdadasdasdasdees');
    var img = new Image();
    img.src = scriptName.getAttribute('url');
    img.style.visibility= "hidden";
}