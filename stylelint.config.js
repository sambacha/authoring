'use strict';

module.exports = {
  extends: [
    require.resolve('stylelint-config-standard'),
    require.resolve('stylelint-no-unsupported-browser-features'),
    require.resolve('stylelint-config-rational-order'),
    require.resolve('./rules/possible-errors'),
    require.resolve('./rules/limit-language-features'),
    require.resolve('./rules/stylistic-issues'),
    require.resolve('./plugins/prettier'),
    require.resolve('./plugins/scss'),
  ],
};
