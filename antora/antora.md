
## Commands

```bash

# In antora/site

npm init -y
npm install @antora/cli @antora/site-generator-default

NODE_TLS_REJECT_UNAUTHORIZED=0 npx antora --stacktrace antora-playbook.yml


npm install -g serve
cd build/site/
serve -l 3000


```
