# zola-scp-action

Like [deploy-via-scp](https://github.com/horochx/deploy-via-scp), just add zola build step before that

```yaml
uses: chux0519/zola-scp-action
with:
  local: localPath # eg: dist/*
  remote: ${{ secrets.REMOTE }} # eg: /home/github-action/www
  host: ${{ secrets.HOST }} # eg: example.com
  port: ${{ secrets.PORT }} # eg: 22
  user: ${{ secrets.USER }} # eg: github-action
  key: ${{ secrets.KEY }} # eg: -----BEGIN OPENSSH PRIVATE KEY-----\nHEIiyzh5cT7hN...
```

