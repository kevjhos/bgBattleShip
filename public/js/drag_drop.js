/**
 * Created by root on 04-08-14.
 */

function componer(e){

}

function descomponer(comp){
    for(var i=0;i<comp.childNodes.length;i++){
        var node = comp.childNodes[i];
        if (node.nodeType == 3 && !/\S/.test(node.nodeValue))
            node.parentNode.removeChild(node);

    }
    //alert(comp.childNodes.length);ç
    var img=Array();
    for(var i=0;i<comp.childNodes.length;i++){
        img[i]=comp.childNodes[i].innerHTML;
    }
    return img;
}

function empezar_drag(e){
    e.dataTransfer.effecAllowes ='move';
    e.dataTransfer.setData('Data', e.target.id);

    e.dataTransfer.setDragImage(e.target,40,30);
    e.target.style.opacity='0.4';
}

function terminar_drag(e){
    e.target.style.opacity='';
    e.dataTransfer.clearData("Data");


}

function sobre(e){
    var barco= e.dataTransfer.getData("Data");
    var id = e.target.id;

    if (id=="11"){
        return false;
    }
    if (id=="12"){
        return false;
    }
    if (id=="13"){
        return false;
    }
    if (id=="21"){
        return false;
    }
    if (id=="22"){
        return false;
    }
    if (id=="23"){
        return false;
    }
}

function entrar(e){
    e.target.style.border="3px dotted #555";
}

function dejar(e){
    e.target.style.border="";
}

function soltar(e){
    //alert("suelto");
    var barco= e.dataTransfer.getData("Data");
    var elemento=document.getElementById(barco);

    var base=elemento.getAttribute("data-tam");
    var posicion=parseInt(e.target.id);
    var valores=descomponer(elemento);
    for(var i=0;i<base;i++){

        document.getElementById(posicion.toString()).innerHTML=valores[i];
        e.target.style.border="";
        posicion++;
    }


    /**for(var j=0;j<valores.length;j++){
                alert(valores[j]);
            }**/
        //e.target.appendChild(elemento);
    e.target.style.border="";


    /*for(var i=0;i<5;i++){

     }*/
    /*tam_cont_x=$("#"+e.target.id).width();
     tam_cont_y=$("#"+e.target.id).height();
     ;
     tam_elem_x=$("#"+barco).width();
     tam_elem_y=$("#"+barco).height();

     post_x_cont=$("#"+e.target).position().left;
     post_y_cont=$("#"+e.target).position().top;
     alert("que nos pasa");
     x = e.layerX;
     y = e.layerY;

     if(post_x_cont+tam_cont_x<=x+tam_elem_x) {
     x = post_x_cont + tam_cont_x - tam_elem_x;
     alert("x");
     }

     if(post_y_cont+tam_cont_y<=y+tam_elem_y) {
     y = post_y_cont + tam_cont_y - tam_elem_y;
     alert("y");
     }

     document.getElementById(barco).style.position="absolute";
     document.getElementById(barco).style.left=x+"px";
     document.getElementById(barco).style.top=y+"px";
     //e.target.style.border="";*/

}