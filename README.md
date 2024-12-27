## Katalogi

- docs - zrobiony zgodnie z https://docs.github.com/en/pages/setting-up-a-github-pages-site-with-jekyll/creating-a-github-pages-site-with-jekyll + theme ustawiony
    po odpalenieu lokalnie wyglada tak samo jak z gita
- jekyll - czysty jekyll
 - new - jekyll new --skip-bundle (bez skip bundle nic nie wecej nie robi, a sie chyba gem wywala)
 - mimimaDark - mimia z skin dark, trzeba bylo wersja minimma z githuba dać inaczej nie ma 3.0
 - mimimaDarkByCss - recznie zmieniony css na dark
- miminal - minimalny taki sam z github, ustawione auto przerabiania mardowni bez frontmattera


## Linki


- https://github.com/xyzBart/test-pages
- https://xyzbart.github.io/test-pages/


https://xyzbart.github.io/test-pages/withFM.html

https://docs.github.com/en/pages/quickstart


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
---
layout: default
---

lub wpiety plugin jekyll-optional-front-matter + defaultys jak jest w mimal/_config.yml
