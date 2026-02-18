# zola-build

Like [zola-scp-action](https://github.com/chux0519/zola-scp-action), but with only the build step not the deployment

### Uses Zola version 0.21.0

## Example usage in github action:

```yaml
uses: crowselectromusic/zola-build
with:
  directory: '.' # optional, the root directory of your zola project
```

