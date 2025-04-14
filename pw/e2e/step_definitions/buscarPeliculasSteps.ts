import { Expect } from "@playwright/test";
import { createBdd } from 'playwright-bdd';

const { Given, When, Then } = createBdd();


Given('el usuario se encuentra en la página principal de IMDb', async ({ page }) => {
    await page.goto('https://www.imdb.com/');
});

When('el usuario ingresa el nombre {string} en la barra de búsqueda', async ({ page }, texto:string) => {

});

When('presiona la tecla Enter o hace clic en el botón de búsqueda', async ({ page }) => {


});