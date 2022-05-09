function clicar() {
    var descricao = document.getElementById('descricao');
    var valor = document.getElementById('valor');
    var data_venc = document.getElementById('data_venc');

    var mensagem = window.document.getElementById('mensagem-validacao');
    mensagem.innerHTML = "";

    if ((descricao.value.length < 2) || (checarCaractereEspecial(descricao.value)))
        mensagem.innerHTML = "<br>*Descriçao invalida! Deve conter mais que duas letras e não conter caracter especial.";
        
    if (valor.value < 2 || valor.value > 10000)
        mensagem.innerHTML += "<br>*O valor deve ser entre R$ 2,00 e R$10.000,00 !";
     
    if ((data_venc.value.length == 0) || !checarData(new Date(data_venc.value)))
        mensagem.innerHTML += "<br>*Data inválida!";

    return;
}

function checarData(data) {
    if (data instanceof Date && !isNaN(data)) {
        if (data.getUTCFullYear() < 2015 || data.getUTCFullYear()> 2022)
            return false
    }

    return true
}

function checarCaractereEspecial(textoValidar) {
    const specialChars = /[`!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?~]/;
    return specialChars.test(textoValidar);
}

