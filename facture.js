function remplir() {
    const tabDesc = new Array("Portable" , "Bureau" , "Ram 8go" , "Clef USB 16go" , "Souris" , "Ecran 17 pouce" ,"Clavier" , "Proces");
    var listeprix = document.getElementsByClassName("prix");
    var listeqte = document.getElementsByClassName("qte");
    var listeDesc = document.getElementsByClassName("Desc");
    console.log(listeprix.length);

    for (var i = 0; i < tabDesc.length; i++) {

        var iDesc = Math.floor(tabDesc.length *Math.random());
        listeDesc[i].value = tabDesc[iDesc]

        var qte = Math.floor(10* Math.random()+1);
        var prix  = Math.floor(100* Math.random()+1);

        listeqte[i].value = qte;
        listeprix[i].value = prix;
        console.log(listeprix);
    }
}
function Ajouterligne() {

    const table = document.getElementById('table')

    table.innerHTML += `<tr class="row" id="modeleligne"> 
    <td> <input type="text" class="Desc" id="Desc"> </td> 
    <td> <input type="text"  class="input qte" name="qte" id="t1"> </td> 
    <td> <input type="text" class="prix" name="prix" id="t2"> </td> 
    <td> <input type="text" name="total" class="totalLigne" readonly="readonly" value="0.00"> </li> </td> 
</tr>`
    

}   
function calculs()
{
    var total = 0;
    var listeprix = document.getElementsByClassName("prix");
    var listeTlt = document.getElementsByClassName("totalLigne");
    var listeqte = document.getElementsByClassName("qte");

    for (let i = 0; i < listeprix.length; i++) {
        listeTlt[i].value = (listeqte[i].value) * (listeprix[i].value);
        total = total + (listeTlt[i].value);

    }
    var total = document.getElementsByClassName("totalLigne");
    let result = 0

    for (let i = 0; i< total.length; i++) {
        result += Number(total[i].value)
    }
    var soustotal = document.getElementById("soustotal")
    soustotal.value = result

    var c = document.getElementsByClassName("soustotal")
    var d = document.getElementById("remise")
    var remise = c * d / 2
    remise.value = remise 
    

}  