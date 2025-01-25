## Summary

Jekyll nie ma templatu, który by auto budowal sensowe menu + toc bez frontmatera + dark mode. Tylko jakieś połowiczne rozwiązania. Generalnie wszystkie themy słabo wyglądają (jekyll-theme-minimal - defaultowy theme githuba).


## Katalogi


- new - template via jekyll new --skip-bundle (bez skip bundle nic nie wecej nie robi, a sie chyba gem wywala)
- mimimaDark - mimia z skin dark, trzeba bylo wersja minimma z githuba dać inaczej nie ma 3.0
- mimimaDarkByCss - recznie zmieniony css na dark
- justTheDocs
- miminal - minimalny taki sam z github, ustawione auto przerabiania mardowni bez frontmattera


## Komendy
- docker run -it --rm -v ~/checks/test-pages/:/test-pages -p 4000:4000 jekyll/builder bash - toolbox nie dziala, bo leci z usera jekyll
- jekyll new --skip-bundle .
- bundle install
- jekyll build --future
- bundle add webrick - czysty jekyll nie pojdzie bez tego
- jekyll server

bundle install

## Front matter

Minimalne co jest wymagane aby zrobil transformate na html, przeciwnie kopiuje jako MD:

```yaml
---
layout: default
---
```
lub wpiety plugin jekyll-optional-front-matter + defaultys jak jest w mimal/_config.yml


## Just the docs
- Jest autobudowanie lewego menu, musi być title w FM
- Jest dark mode
- jest TOC, ale tylko w miejscu wskazna, nie ma outlinu z lewej strony bez kombinacji

## Docsy
- trzeba ręcznie dodawać do menu (_data/toc.yml), autobudowanie wymaga mocnych kombinacji. W Hugo jest to lepiej rozwiązane [chat](https://chatgpt.com/g/g-p-676d8f5e01088191882435a1d67e4be9-jekyll/c/676ec1f8-8fb8-8006-b57e-0f6af33b3e13)
- nie wspiera dark mode przez config
- outline jest, nie próbowane
s