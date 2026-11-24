
# JOGO DE ADIVINHACAO DE PALAVRAS

palavra = "PYTHON"

letras_descobertas = []
letras_utilizadas = []

erros = 0
limite_erros = 6

print("=" * 35)
print("       JOGO DE ADIVINHACAO")
print("=" * 35)

while erros < limite_erros:

    # Exibe a palavra parcialmente descoberta
    print("\nPalavra: ", end="")

    for letra in palavra:
        if letra in letras_descobertas:
            print(letra, end=" ")
        else:
            print("_", end=" ")

    print(f"\nErros: {erros}/{limite_erros}")

    # Verificar se o jogador descobriu a palavra
    if all(letra in letras_descobertas for letra in palavra):
        break

    # Pedir o palpite
    palpite = input("Digite uma letra: ").upper()

    # Validar a entrada
    if len(palpite) != 1 or not palpite.isalpha():
        print("Digite apenas uma letra!")
        continue

    # Verificar se a letra já foi utilizada
    if palpite in letras_utilizadas:
        print("Essa letra ja foi utilizada!")
        continue

    # Adicionar a letra na lista de utilizadas
    letras_utilizadas.append(palpite)

    # Verificar se a letra existe na palavra
    if palpite in palavra:
        print("Voce acertou!")
        letras_descobertas.append(palpite)
    else:
        print("Voce errou!")
        erros += 1

# Resultado final
print("\n" + "=" * 35)

# Verificar se ganhou ou perdeu
if all(letra in letras_descobertas for letra in palavra):
    print("PARABENS! VOCE GANHOU!")
else:
    print("VOCE PERDEU!")

print(f"A palavra secreta era: {palavra}")

print("=" * 35)
