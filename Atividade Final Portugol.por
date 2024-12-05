programa {
inclua biblioteca Util --> u

  //01: Crie um programa que pergunte a um aluno ou aluna o seu nome, a idade e altura. Depois de obter esses valores, apresente na tela os dados solicitados.
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

  //02: Crie um programa para solicitar ao usuário o seu nome e uma frase preferida. Você deve mostrar o nome e a frase no console da seguinte maneira: A frase preferida da(o) X é Y. (X é o valor do nome do usuário e Y é a frase digitada pelo usuário).
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

  //03: Crie um programa que calcula a área de um triângulo, onde os valores da base e altura serão fornecidos pelo usuário.
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

  //04: Crie um programa que dado um número fornecido pelo usuário, verifique se o número é par ou ímpar.
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

  //05: Crie um programa que solicite a velocidade de um carro e apresente a mensagem "MULTADO", caso a velocidade seja maior que 80.

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

  //06: Crie um programa que solicite o nome, a nota 1 e a nota 2 de um(a) aluno(a). Em seguida, o programa deve calcular a média aritmética e, se o aluno(a) ficar com nota maior ou igual a 6.0, o programa deve mostrar a mensagem "APROVADO(A)". Se a nota for menor que 6.0, o programa deve apresentar a mensagem "EM RECUPERAÇÃO".
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

  //07: Crie um programa para uma loja de sucos. O preço de cada suco é R$ 5.50, porém, se o cliente comprar mais de 10 sucos, o preço individual passa para R$ 4.50. O programa deve solicitar a quantidade de sucos desejados pelo cliente e apresentar o preço final a ser pago.
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

  //08: Crie um programa para gerenciar uma fila de atendimento. O programa deve perguntar se a pessoa precisa de atendimento prioritário ou não. Se for respondido "sim", o programa deve mostrar a mensagem "Vá para os caixas 1, 2 e 3". Caso contrário, o programa deve mostrar a mensagem "Vá para qualquer caixa, exceto os 1, 2 e 3, que são prioritários."
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

  //09: Crie um programa que solicite ao usuário um peso e uma altura, e apresente na saída o valor do IMC
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


  //10: Crie um programa que verifique se um candidato está apto a tirar a carteira de motorista do tipo D. Os requisitos são: ter idade maior que 21 anos; estar habilitado pelo menos dois anos com a carteira B ou um ano com a carteira C; não ter nenhuma infração nos últimos doze meses.
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


  //11: Crie um programa que solicite ao usuário um número entre 1 e 12 e apresente na tela o mês correspondente.
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

  //12: Crie um programa que solicite uma letra ao usuário e diga se é uma vogal ou não vogal.
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

  //13: Crie um programa que solicite ao usuário a estação do ano desejada, e o sistema deve apresentar o dia que começa a estação, são elas: outono - 20 de março, inverno - 21 junho, primavera - 22 setembro e verão - 21 de dezembro.
  funcao EstacaoDoAno()
  {
    cadeia estacao  
    escreva ("Digite a estação do ano que você deseja: ")
    leia (estacao)
    se (estacao == "Primavera" ou estacao == "primavera")
    {
      escreva ("Sua estação inicia 22 de Setembro.")
    }
    se (estacao == "Verão" ou estacao == "verão" ou estacao == "verao" ou estacao == "Verao")
    {
      escreva ("Sua estação inicia 21 de Dezembro.")
    }
    se (estacao == "Outono" ou estacao == "outono")
    {
      escreva ("Sua estação inicia 20 de Março.")
    }
    se (estacao == "Inverno" ou estacao == "inverno")
    {
      escreva ("Sua estação inicia 21 de Junho.")
    }
  }

  //14: Crie um programa que solicite 5 números e apresente na tela a soma de todos os números.
  funcao Soma ()
  {
    real numero_01
    real numero_02
    real numero_03
    real numero_04
    real numero_05

    escreva("Digite cinco números quaisquer: \n")
    leia (numero_01)
    leia (numero_02)
    leia (numero_03)
    leia (numero_04)
    leia (numero_05)

    real soma = numero_01 + numero_02 + numero_03 + numero_04 + numero_05
    escreva ("A soma desses números é: " + soma)
  }

  //15:Crie um programa para ler 10 números e no final da leitura de todos os números apresente quantos número lidos foram maiores que 50.
  funcao Ler ()
  {
    inteiro x = 10
    real number_
    inteiro contador = 0
    para(inteiro i = 0; i < x; i++)
    {       
      escreva ("Digite um número: ")
      leia (number_)
      se (number_ > 50)
      {
        contador += 1
      }
    }
    escreva ("A quantidade de números maiores que 50 é: " + contador)
  }

  //16:Crie um programa para ler 20 números e no final da leitura de todos os números apresente quantos números lidos são pares e quantos são ímpares.
  funcao LeiParImp()
  { 
    inteiro contador_par = 0
    inteiro contador_impar = 0
    inteiro x = 20

    real num_

    para (inteiro i = 0; i < x; i++)
    {
      escreva ("Digite um número: ")
      leia (num_)

      inteiro conta = num_ % 2
      se (conta == 1)
      {
        contador_impar += 1
      }
      senao
      {
        contador_par += 1
      }
    }
    escreva ("A quantidade de números ímpares é: " + contador_impar + ", e a quantidade de números pares é: " + contador_par)
  }

  //17:Crie um programa para ler N números até que a soma dos números seja maior ou igual a 100. Apresente a quantidade de números necessários para alcançar a soma maior ou igual a 100.
  funcao Cem ()
  {
    inteiro contador_ = 0
    inteiro soma = 0
    inteiro number 

    faca {
      escreva("Digite um número: ")
      leia (number)
      soma = soma + number
      contador_ += 1
    } 
    enquanto (soma < 100)
    escreva ("A quantidade de números necessários para atingir 100 foi: " + contador_)
  }

  //18: Você foi contratado para desenvolver um sistema de emissão de boletos. O cliente deve informar qual o melhor dia para o pagamento do boleto. Os dias disponíveis são 2, 5 ou 10. O sistema deve validar o dia informado pelo cliente e apresentar a mensagem “boleto registrado” caso o dia seja válido. Se o dia for inválido, o sistema deve solicitar um novo dia até que ele seja digitado corretamente.
  funcao Boletos ()
  {
    inteiro dias
    escreva ("Informe o melhor dia para o pagamento do boleto, dias disponíveis : 02, 05 e 10: ")
    leia (dias)
    
    se (dias == 02 ou dias == 2 ou dias == 05 ou dias == 5 ou dias == 10)
    {
      escreva ("Boleto registrado.")
    }
    senao {
      escreva ("Digite um dia dísponivel. \n")
      Boletos()
    }
  }

  //19: Crie um programa para fidelização de clientes de um restaurante. A cada pagamento no restaurante, o valor é armazenado na cartela de fidelização. Assim que o cliente completar as 10 posições da cartela, o sistema deve apresentar a seguinte mensagem: “Hoje o seu almoço é uma cortesia da casa, parabéns!
  funcao Clientes_Restaurantes ()
  {
    inteiro contador_pagamento = 0
    inteiro pagamento
    logico pagar

    faca {
      pagamento = u.sorteia (23, 201)
      escreva ("O pagamento deu: " + pagamento + ", pagar? ")
      leia (pagar)
      se (pagar == verdadeiro)
      {
        contador_pagamento += 1
      }
      senao {
        
      }
    }
    enquanto (contador_pagamento < 10)
    escreva ("Hoje o seu almoço é uma cortesia da casa, parabéns!")
  }

  //20: Crie um programa para armazenar a velocidade de 6 voltar de um piloto em uma pista de kart. Depois de ter armazenado as velocidades, seu programa deve apresentar as velocidades na ordem contrária da lida (a última velocidade lida será a primeira a ser exibida, e assim sucessivamente).
  funcao VELPiloto ()
  {
    inteiro x = 6, volta = 1, velocidade, contador = 5
    inteiro speed [6]

    para (inteiro i = 0; i < x; i ++)
    {
      escreva ("Insira a velocidade do piloto na volta " + volta + ": ")
      leia (velocidade)

      volta ++

      speed [i] = velocidade
    }

    para (inteiro y = 0; y < x; y++)
    {
      escreva ("A velocidade do piloto na volta" + contador + " foi: " + speed[contador] + "\n")
      contador -= 1
    }
  }

  funcao inicio() {
    
  } 
}
