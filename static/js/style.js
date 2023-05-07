
max_quantity = window.data.max_quantity;

document.querySelector("#sumar").addEventListener("click",addKg);
document.querySelector("#restar").addEventListener("click",subKg);


function subKg(){
    
    let numero = Number(document.querySelector("#numKg").innerHTML);
    
    if (numero!=1){
        document.querySelector("#numKg").innerHTML = numero - 1;
        document.querySelector("#id_quantity").innerHTML = numero - 1;
    }
}

function addKg(){
    let numero = Number(document.querySelector("#numKg").innerHTML);
    if (numero!==max_quantity){
        document.querySelector("#numKg").innerHTML = numero + 1;
        document.querySelector("#id_quantity").value = numero + 1;
    }
}