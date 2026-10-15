  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - name: Installer Node.js
        uses: actions/setup-node@v4
        with:
          node-version: '18'
      - name: Installer et compiler
        run: |
          npm ci
          npm run build --if-present
