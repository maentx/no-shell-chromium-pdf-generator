import puppeteer from 'puppeteer';

const browserOptions = {
    executablePath: '/usr/lib/chromium/chrome',
    args: ['--no-sandbox']
}
const browser = await puppeteer.launch(browserOptions);
const page = await browser.newPage();    
await page.goto('file:///share/example.html');    
await page.pdf({path: 'container-printout-puppeteer.pdf'});
browser.close()
