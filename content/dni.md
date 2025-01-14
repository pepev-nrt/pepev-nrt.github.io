---
title: 'Generador de DNI'
ShowReadingTime: false
---

{{< rawhtml >}}
<button type="button" onclick="newDNI()" style="background-color: rgb(50, 50, 55); border-radius: 5px;">Nuevo DNI</button>
{{< /rawhtml >}}

## Último DNI generado
{{< rawhtml >}}
<pre tabindex="0"><code class="code">
</code><button class="copy-code">copy</button></pre>
{{< /rawhtml >}}

## Historial de DNI generados
{{< rawhtml >}}
<pre tabindex="0"><code class="list">
</code><button class="copy-code">copy</button></pre>
{{< /rawhtml >}}



{{< rawhtml >}}
<script>
    function newDNI() {

    const letras = "TRWAGMYFPDXBNJZSQVHLCKE";
    
    let numero = Math.floor(Math.random() * 100000000);
    let letra = letras.charAt(numero % 23);
    let dni = numero.toString().padStart(8, '0') + letra;
    
    const ul = document.querySelector('.list');
    const li = document.createElement('p');
    li.textContent = dni + "\n";
    ul.appendChild(li);

    const code = document.querySelector('.code');
    code.innerHTML = dni + "\n";
}
</script>
{{< /rawhtml >}}

