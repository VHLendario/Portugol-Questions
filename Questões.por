programa {

  //01
  funcao Aluno()
  {
    inteiro idade
    cadeia nome
    real altura

    escreva ("Digite seu nome: ")
    leia (nome)

    escreva("Digite sua idade: ")
    leia (idade)

    escreva("Digite sua altura: ")
    leia (altura)

    escreva("Parabéns, seu nome é ", nome, ", sua idade é ", idade, " e sua altura é: ", altura)
  }

  //02
  funcao Preferido()
  {
    cadeia nome
    cadeia frase_preferida

    escreva("Escreva seu nome: ")
    leia (nome)

    escreva ("Agora escreva sua frase preferida: ")
    leia(frase_preferida)

    escreva("A frase preferida de ", nome, " é ", frase_preferida, ".")
  }

  //03
  funcao Triangulo ()
  {
    inteiro base
    inteiro altura
    real area

    escreva("Defina a altura do seu triângulo: ")
    leia (altura)

    escreva ("Defina a base do seu triângulo: ")
    leia (base)

    area = (base * altura) / 2
    escreva ("A área do seu triângulo é: ", area)
  }

  //04  
  funcao Par_Ou_Impar ()
  {
    inteiro numero

    escreva ("Digite seu número preferido: ")
    leia (numero)

    inteiro prova = numero % 2
    se (prova == 1)
    {
      escreva("seu número é ímpar")
    }
    senao{
      escreva("seu número é par")
    }
  }

  //05
  funcao Multa ()
  {
    inteiro velocidade
    escreva ("Você estava dirigindo a quantos km/h? ")
    leia (velocidade)

    se (velocidade > 80)
    {
      escreva ("MULTADO, pois sua velocidade era ", velocidade, "km/h")
    }
    senao {
      escreva ("Liberado. Pois sua velocidade era ", velocidade, "km/h")
    }
  }

  //06
  funcao Media () {
    inteiro nota_01
    inteiro nota_02
    real media

    escreva ("Qual foi sua nota na primeira avaliação? ")
    leia (nota_01)

    escreva ("Qual foi sua nota na segunda avaliação? ")
    leia (nota_02) 

    media = (nota_01 + nota_02) / 2

    se (media >= 6)
    {
      escreva ("APROVADO, pois sua média ", media, " atingiu o valor esperado de 6.")
    }

    senao {
      escreva ("RECUPERAÇÃO, pois sua média ", media, " não atingiu 6.")
    }
  }

  //07
  funcao Loja ()
  {
    //add depois: forma de pagamento, dinheiro ou cartao

    //Cliente
    real carteira
    real troco
    inteiro quantidade
    //Loja
    real preco
    real preco_final

    //Atendimento
    escreva ("Olá, bem-vindo a minha loja de sucos, quantos sucos o senhor deseja? ")
    leia (quantidade)

    se (quantidade > 10)
    {
      preco = 4.50
      preco_final = preco * quantidade

      escreva ("Ficou em ", preco_final, " R$, insira o dinheiro: ")
      leia (carteira)

      se (preco_final <= carteira)
      {
        troco = carteira - preco_final
        escreva ("Aqui está seu troco: ", troco, " R$. Obrigado por comprar na loja!")
      }
      senao {
        escreva ("Impossível realizar o pagamento, dinheiro insuficiente.")
      }
    }
    senao {
      preco = 5.50
      preco_final = preco * quantidade

      escreva ("Ficou em ", preco_final, " R$, insira o dinheiro: ")
      leia (carteira)

      se (preco_final <= carteira)
      {
        troco = carteira - preco_final
        escreva ("Aqui está seu troco: ", troco, " R$. Obrigado por comprar na loja!")
      }
      senao {
        escreva ("Impossível realizar o pagamento, dinheiro insuficiente.")
      }
    }
  }

  //08
  funcao Atendimento ()
  {
    logico prioritario 

    escreva ("Bem-vindo, você necessita de atendimento prioritário? ")
    leia (prioritario)

    se (prioritario == verdadeiro)
    {
      escreva ("Vá para os caixas 1, 2 ou 3")
    }

    senao{
      escreva ("Vá para qualquer caixa, menos o 1, 2 e 3")
    }
  }

  //09
  funcao IMC ()
  {
    real altura
    real peso
    real imc 
    logico calcular 

    escreva ("Quer calcular seu Índice de massa corporal? ")
    leia (calcular)
    se (calcular == verdadeiro)
    {
      escreva ("Muito bem, qual sua altura? ")
      leia (altura)
      escreva ("E seu peso corporal? ")
      leia (peso)

      imc = peso / (altura * altura)
      se (imc < 18.5)
      {
        escreva ("Seu índice se encontra em estado de: magreza.")
      }
      se (imc < 24.9 e imc >= 18.5)
      {
        escreva ("Seu índice se encontra em estado: normal.")
      }
      se (imc <= 30 e imc > 24.9)
      {
        escreva ("Seu índice se encontra em estado de: sobrepeso.")
      }
      se (imc > 30)
      {
        escreva ("Seu índice se encontra em estado de: Obesidade.")
      }
    }
    senao {
      escreva ("Tudo bem, tenha um bom dia.")
    }
  }


  //10
  funcao CNH ()
  {
    logico responder
    logico carteira_B
    logico carteira_C
    inteiro idade

    escreva ("Bom dia, o senhor gostaria de realizar a inscrição para carteira tipo D? ")
    leia (responder)

    se (responder == verdadeiro)
    {
      escreva ("Certo, qual sua idade? ")
      leia (idade)
      se (idade > 21)
      {
        escreva ("Você possui habilitação da carteira B de pelos menos dois anos? ")
        leia (carteira_B)
        escreva ("Você possui habilitação da carteira C de pelos menos um ano? ")
        leia (carteira_C)

        se (carteira_B == verdadeiro ou carteira_C == verdadeiro)
        {
          escreva ("Certo, então você está apto para realizar a inscrição.")
        }
        se (carteira_B == falso e carteira_C == falso) {
          escreva ("Lamento, você não está apto para fazer a inscrição, pois você não possui o tempo necessário nem na carteira B nem na carteira C.")
        }
      }
      senao {
        escreva ("Lamento, mas para realizar essa inscrição é necessário ter idade maior que 21 anos.")
      }
    }
    senao {
      escreva ("Tudo bem, tenha um bom dia.")
    }
  }


  //11
  funcao Numero ()
  {
    inteiro numero

    escreva ("Escolha um número de 1 a 12: ")
    leia (numero)

    se (numero == 1)
    {
      escreva ("Seu mês é Janeiro")
    }
    se (numero == 2)
    {
      escreva ("Seu mês é Fevereiro")
    }
    se (numero == 3)
    {
      escreva ("Seu mês é Março")
    }
    se (numero == 4)
    {
      escreva ("Seu mês é Abril")
    }
    se (numero == 5)
    {
      escreva ("Seu mês é Maior")
    }
    se (numero == 6)
    {
      escreva ("Seu mês é Junho")
    }
    se (numero == 7)
    {
      escreva ("Seu mês é Julho")
    }
    se (numero == 8)
    {
      escreva ("Seu mês é Agosto")
    }
    se (numero == 9)
    {
      escreva ("Seu mês é Setembro")
    }
    se (numero == 10)
    {
      escreva ("Seu mês é Outubro")
    }
    se (numero == 11)
    {
      escreva ("Seu mês é Novembro")
    }
    se (numero == 12)
    {
      escreva ("Seu mês é Dezembro")
    }
  }

  //12
  funcao Vogal ()
  {
    caracter letra
    escreva ("Escolha uma letra: ")
    leia (letra)

    se (letra == "a" ou letra == "A" ou letra == "e" ou letra == "E" ou letra == "i" ou letra == "I" ou letra == "o" ou letra == "O" ou letra == "u" ou letra == "U")
    {
      escreva ("Sua letra é uma vogal!")
    }
    senao {
      escreva ("Sua letra é uma consoante!")
    }
  }

  funcao inicio() {
    
  } 
}
