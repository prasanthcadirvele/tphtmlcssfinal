function calcul_moyenne()
{
    var note1=prompt("donner la première note");
    var note2=prompt("donner la deuxième note");
    var note3=prompt("donner la troisième note")

    var somme=Number(note1)+Number(note2)+Number(note3);

    document.write ("Voici la somme:"+somme+"<br>");
    var moyenne=somme/3

    document.write("Voici la moyennne:" +moyenne+"<br>")
if
    (moyenne<10)
  document.write("Vous etes redoublant");
  
 else
  document.write("Vous etes admis");
  
}

function test_age()
{
    var age=prompt("Donner votre age");
    if (age <18)
    {
    document.write("Vous etes mineur");
    document.body.style.background="red"
    }
    else
    {
    document.write("Vous etes majeur");
    document.body.style.background="blue"
    }
}

function simple_affichage()
{
    var nom=prompt("donner votre nom")
    var prenom=prompt("donner votre prénom")

    document.write("<div style='margin:auto; width:300px; border:2px solid blue;'>");
    document.write("Bonjour  "+prenom+"  "+nom);
    document.write("</div");
}

function test_couleur()
{
    var c=prompt("Donner une couleur")
    if (c=="rouge" || c=="ROUGE" || c=="R")
    document.body.style.background="red"
}

function somme()
{
    var a=document.getElementById("T1").value;
    var b=document.getElementById("T2").value;
    var c=Number(a)+Number(b);

    T3.value=c;

}

function soustraction()
{
    var a=document.getElementById("T1").value;
    var b=document.getElementById("T2").value;
    var c=Number(a)-Number(b);

    T3.value=c;

}

function multiplication()
{
    var a=document.getElementById("T1").value;
    var b=document.getElementById("T2").value;
    var c=Number(a)*Number(b);

    T3.value=c;

}

function division()
{
    var a=document.getElementById("T1").value;
    var b=document.getElementById("T2").value;
    var c=Number(a)/Number(b);

    T3.value=c;

}

function parite()
{
    var v=Number(document.getElementById("T1").value);
    if (v%2==0)

    alert("Pair")

    else

    alert("Impair")
}

function permuter()
{
    var V3="";
    a=document.getElementById("T1").value;
    b=document.getElementById("T2").value;
    V3=a;
    a=b;
    b=V3;

    T1.value=a;
    T2.value=b;
}

