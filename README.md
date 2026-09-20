# Molduras de live da bombombia 💖

Molduras animadas pro OBS (fonte **Navegador**), com fundo transparente. Feitas em HTML/CSS puro — sem build, sem dependências.

| Arquivo | O que é | Tamanho no OBS |
|---|---|---|
| `moldura-camera.html` | Só a moldura da câmera: anel com gradiente girando, lacinho, corações nos cantos, "AO VIVO" e etiqueta com o nome | **1200 × 780** |
| `moldura-live.html` | Moldura da tela inteira + moldura da câmera + "AO VIVO" + rodapé com as redes | **1920 × 1080** |
| `inicio.html` | Tela de início da live: contagem regressiva de 10 min, tema Seraphine Rosa de Cristal, nome e redes | **1920 × 1080** |
| `volto-ja.html` | Tela de "volto já": splash art da Seraphine, cronômetro de quanto tempo saiu, nome e redes | **1920 × 1080** |
| `index.html` | Página inicial com os links de tudo | — |

## Usar no OBS

1. **Fontes → + → Navegador**
2. Em **URL**, cole o link da moldura publicada (ex.: `https://SEU-DOMINIO/moldura-camera.html`).
   Ou marque **Arquivo local** e escolha o arquivo `.html` baixado.
3. Largura e altura conforme a tabela acima.
4. Na lista de fontes, deixe a moldura **acima** da câmera e arraste a câmera até encaixar dentro do anel.

Abrindo o link num navegador normal aparece um fundo escuro de exemplo, só pra visualizar. Dentro do OBS o fundo fica transparente automaticamente.

## Tela de início (contagem regressiva)

`inicio.html` conta 10 minutos e, no 00:00, troca pra "começando! 💖". Pra mudar o tempo sem editar o arquivo, use o link com `?min=`: `https://SEU-DOMINIO/inicio.html?min=5`.

Na fonte Navegador do OBS, marque **Atualizar o navegador quando a cena ficar ativa** — assim a contagem recomeça toda vez que você entra na cena de início.

## Tela de "volto já"

`volto-ja.html` mostra a splash art oficial da Seraphine (vinda do Data Dragon, o CDN da Riot) com um cronômetro de quanto tempo você está fora. A skin padrão é a **Hino ao Amor** (69); pra trocar, edite `CONFIG.skin` ou use o link: `volto-ja.html?skin=24`. Pra usar uma imagem sua, coloque o link dela em `CONFIG.imagem`.

Skins da Seraphine, da mais antiga pra mais nova (o número pula porque os chromas ocupam os do meio):

| nº | Skin |
|---|---|
| 0 | Clássica |
| 1 / 2 / 3 | K/DA ALL OUT (Indie / Rumo ao Estrelato / Superstar) |
| 4 | Fênix Graciosa |
| 14 | Canção do Oceano |
| 15 | Canção do Oceano de Prestígio |
| 24 | Corte das Fadas |
| 34 | Guardiã Estelar |
| 43 | Ave de Batalha |
| 50 | Meili Café |
| 59 | Fogos de Artifício |
| 68 | T1 |
| 69 | Hino ao Amor (padrão) |

Aqui também vale marcar **Atualizar o navegador quando a cena ficar ativa** no OBS, pra o cronômetro recomeçar do zero.

## Personalizar

Cada arquivo tem um bloco `CONFIG` logo no começo: nome, cores, tamanho da câmera, quantidade de corações e brilhinhos, lacinho, selo "AO VIVO"... É só editar, salvar e (se estiver publicado) fazer o deploy de novo. No OBS, botão direito na fonte → **Atualizar**.

## Publicar no Coolify

1. **Projects → New Resource → Public Repository** (ou **GitHub App**, se quiser deploy automático a cada commit) e cole a URL deste repositório.
2. **Build Pack**: `Static` (serve a pasta com nginx) — ou `Dockerfile`, que já está aqui e expõe a porta **80**.
3. Defina o domínio e clique em **Deploy**.
4. A moldura fica em `https://SEU-DOMINIO/moldura-camera.html` — é esse link que vai na fonte Navegador do OBS.
