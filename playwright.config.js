const { defineConfig } = require('playwright/test');

module.exports = defineConfig({
  testDir: './tests',
  timeout: 60_000,
  expect: { timeout: 10_000 },
  use: {
    baseURL: process.env.OPERO_AJO_BASE_URL || 'https://hekse.github.io/index.html/opero-ajo/',
    trace: 'retain-on-failure',
    screenshot: 'only-on-failure',
    video: 'retain-on-failure'
  },
  reporter: [['list'], ['html', { open: 'never', outputFolder: 'output/playwright/opero-ajo-report' }]]
});
