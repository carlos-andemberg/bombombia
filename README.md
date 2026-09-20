# Molduras de live da Bombombia 💖

Molduras animadas pro OBS (fonte **Navegador**), com fundo transparente. Feitas em HTML/CSS puro — sem build, sem dependências.

| Arquivo | O que é | Tamanho no OBS |
|---|---|---|
| `moldura-camera.html` | Só a moldura da câmera: anel com gradiente girando, lacinho, corações nos cantos, "AO VIVO" e etiqueta com o nome | **1200 × 780** |
| `moldura-live.html` | Moldura da tela inteira + moldura da câmera + "AO VIVO" + rodapé com as redes | **1920 × 1080** |
| `index.html` | Página inicial com os links das duas | — |

## Usar no OBS

1. **Fontes → + → Navegador**
2. Em **URL**, cole o link da moldura publicada (ex.: `https://SEU-DOMINIO/moldura-camera.html`).
   Ou marque **Arquivo local** e escolha o arquivo `.html` baixado.
3. Largura e altura conforme a tabela acima.
4. Na lista de fontes, deixe a moldura **acima** da câmera e arraste a câmera até encaixar dentro do anel.

Abrindo o link num navegador normal aparece um fundo escuro de exemplo, só pra visualizar. Dentro do OBS o fundo fica transparente automaticamente.

## Personalizar

Cada arquivo tem um bloco `CONFIG` logo no começo: nome, cores, tamanho da câmera, quantidade de corações e brilhinhos, lacinho, selo "AO VIVO"... É só editar, salvar e (se estiver publicado) fazer o deploy de novo. No OBS, botão direito na fonte → **Atualizar**.

## Publicar no Coolify

1. **Projects → New Resource → Public Repository** (ou **GitHub App**, se quiser deploy automático a cada commit) e cole a URL deste repositório.
2. **Build Pack**: `Static` (serve a pasta com nginx) — ou `Dockerfile`, que já está aqui e expõe a porta **80**.
3. Defina o domínio e clique em **Deploy**.
4. A moldura fica em `https://SEU-DOMINIO/moldura-camera.html` — é esse link que vai na fonte Navegador do OBS.
