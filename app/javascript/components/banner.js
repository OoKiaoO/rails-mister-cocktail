import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Work in progress. . ", "Go away!!", "Nothing to see here"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };