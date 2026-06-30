---
layout: default
title: GitHub Pages pro netrpelive lidi
---

# GitHub Pages pro netrpelive lidi

GitHub Pages je zpusob, jak z repozitare udelat web. Vezmes Markdown, trochu ho prolinkujes, GitHub zamicha build kvedlackou a venku je stranka.

## Co tady najdes

- [Rychly start](rychly-start.md) - kam kliknout, aby se z repa stal web.
- [Jak to funguje](jak-to-funguje.md) - kratke vysvetleni bez prednaskove mlhy.
- [Caste prusvihy](caste-prusvihy.md) - kdyz se web tvari, ze neexistuje.

<style>
  .doc-chat-launch {
    margin: 8px 0 12px;
  }

  .doc-chat-launch__button {
    display: inline-flex;
    align-items: center;
    justify-content: center;
    min-height: 40px;
    border: 0;
    border-radius: 4px;
    padding: 0 16px;
    background: #1f6feb;
    color: #fff;
    font: inherit;
    font-weight: 600;
    cursor: pointer;
  }

  .doc-chat-launch__button:hover {
    background: #1a5fc8;
  }

  .doc-chat-launch__button:focus-visible {
    outline: 3px solid rgba(31, 111, 235, 0.32);
    outline-offset: 3px;
  }
</style>

<div class="doc-chat-launch">
  <button type="button" class="doc-chat-launch__button" onclick="window.openKrameriusDocChat()">🤖 Zeptat se AI</button>
</div>

<kramerius-doc-chat api-url="https://vasearch.inovatika.dev/kramerius-doc-api" use-mock-response=true></kramerius-doc-chat>
<script>
  window.openKrameriusDocChat = function () {
    if (!window.krameriusDocChat) {
      throw new Error('Kramerius doc chat neni nacteny.');
    }

    window.krameriusDocChat.open();
  };
</script>
<script type="module" src="assets/kramerius-doc-chat-ui/doc-chat-ui.js"></script>

## Minimalni recept

1. Dej Markdown souborum jmena, ktera davaji smysl.
2. Propoj je odkazy.
3. Zapni GitHub Pages v nastaveni repa.
4. Pockej, nez se GitHub prestane tvarit zaneprazdnene.

Hotovo. Web je na svete a zadny server jsi nemusel krmit.
