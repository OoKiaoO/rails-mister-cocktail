import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Create your own cocktail!", "Check ingredients & recipes", "Find your favourite cocktails"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };