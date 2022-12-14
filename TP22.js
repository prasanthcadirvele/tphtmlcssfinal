function affichage_tableau()
{
document.write("<table border=2 width=30%;>");
       for (i=0; i <=5; i++)
       {
        document.write("<tr><td>*</td><td>*</td><td>*</td></tr>")
       }
       document.write("</table>");
}

function affichage_tableau2()
{
    var ligne = prompt("Donner le nombre de lignes a afficher.");
    document.write("<table border=2 width=30%>");
         for (i=1; i <=ligne; i++)
         {
            document.write("<tr><td>"+i+"</td><td>*</td></tr>")
         }
         document.write("</table>")
}

function connexion()
{
    var id = prompt("Donnez votre nom d'utlisateur");
    var mdp = prompt("Entrez votre mot de passe");
    if (id == "admin" && mdp == "admin")
    {
        document.write("Bienvenue: "+ id);
    }
    else
    {
        alert("Accès Refusé")
    }
}

function connexion2()
{
    var i = 0;

    do{
        var id = prompt("Donnez votre nom d'utilisateur");
        var mdp = prompt("Entrez votre mot de passe");

        if (id == "admin" && mdp == "admin") 
        {
            document.write("Bienvenue :   "+ id);
            break;
        }

        else

        alert("Accès Refusé");

        i+= 1;
    } while (i<3);
    if (i == 3)
    alert("Délai dépassé");
}

function chaine_caractere()
{
var chaine=prompt("Donner un mot")
document.write(chaine.toUpperCase()+"<br>");
document.write(chaine.toLowerCase()+"<br>");
document.write("La Chaine contient  "+chaine.length+"  caracteres  "+ "<br>");
document.write("La première lettre est   "+chaine.substr(0,1)+"<br>");
}

function fun_switch()
{
    var color = prompt("Entrez une couleur");

    switch(color)
    {
        case "vert": document.body.style.background = "green";;
        break;
        case "VERT": document.body.style.background = "green";;
        break;
        case "bleu": document.body.style.background = "blue";;
        break;
        case "BLEU": document.body.style.background = "green";;
        break;
            default:alert("Couleur non définie");
    }
}

function facture()
{
    var article
    var price
    var quantity
    var res 
    var total=0;

    do{
        article = prompt("Entrez le nom de l'article");
        price = prompt("Entrez le prix de l'article");
        quantity = prompt("Quelle est la quantité ?");

        res= Number(price)*Number(quantity);
        total= total + res;

        alert("Votre Facture : " + total);

        next = prompt ("Voulez-vous continuer (OUI/STOP) ?")
    }
    while(next !=STOP)
}

