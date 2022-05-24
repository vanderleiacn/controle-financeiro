function clicar() {
    var descricao = document.getElementById("descricao");
    var valor = document.getElementById("valor");
    var data_venc = document.getElementById("data_venc");

    var mensagem = document.getElementById("mensagem-validacao");
    mensagem.innerHTML = "";

    var validacaoDescricao = document.getElementById("validacao_descricao");
    validacaoDescricao.innerHTML = "";
    if ((descricao.value.trim().length < 2) || (checarCaractereEspecial(descricao.value)))
        validacaoDescricao.innerHTML = "Descriçao invalida! Deve conter mais que duas letras e não conter caracter especial.";

    var validacaoValor = document.getElementById("validacao_valor");
    validacaoValor.innerHTML = "";
    if (valor.value < 2 || valor.value > 10000)
        validacaoValor.innerHTML = "O valor deve ser entre R$ 2,00 e R$10.000,00 !";

    var validacaoDataVenc = document.getElementById("validacao_data_venc");
    validacaoDataVenc.innerHTML = "";
    if ((data_venc.value.length == 0) || !checarData(new Date(data_venc.value)))
        validacaoDataVenc.innerHTML = "Data inválida!";
    
    return;
}

function checarData(data) {
    if (data instanceof Date && !isNaN(data)) {
        if (data.getUTCFullYear() < 2015 || data.getUTCFullYear() > 2022)
            return false
    }

    return true
}

function checarCaractereEspecial(textoValidar) {
    const specialChars = /[`!@#$%^&*()_+\-=\[\]{};":"\\|,.<>\/?~]/;
    return specialChars.test(textoValidar);
}

/*function isSpecialChar(textoValidar){
    for(let letra of textoValidar){
        if(letra != ' ' && letra.toLowerCase()=== letra.toUpperCase()){
            return true;
        }
    }
}*/
