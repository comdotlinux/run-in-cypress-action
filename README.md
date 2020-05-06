# run-in-cypress-action
Github Action for Running Code in cypress dockerhub images

## Inputs

### `port-to-run-on`

**Required** The port where the internal server will run. Default `3000`.

### `source-directory`

**Required** The directory where source code resides. Default `src`.

### `browser-to-use`

**Required** The browser to run tests on [electron, chrome]. Default `chrome`.

## Example usage

```yml
uses: comdotlinux/run-in-cypress-action@v1
with:
  port-to-run-on: '3000'
  source-directory: 'src'
  browser-to-use: 'chrome'
```
