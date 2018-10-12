
module.exports = {
  run(context) {
    return context.runWithDriver((driver) => {
      // Go to Wikipedias login URL
      return driver.get('<ENTER_BASEURL>')
        .then(() => {

          // we fetch the selenium webdriver from context
          const webdriver = context.webdriver;
          // and get hold of some goodies we want to use
          const until = webdriver.until;
          const By = webdriver.By;

          // before you start, make your username and password
          const userName = '<ENTER_USERNAME>';
          const password = '<ENTER_PASSWORD>';
          driver.wait(until.elementLocated(By.id('email')),3600);
          driver.findElement(By.id('email')).sendKeys(userName);
          driver.findElement(By.id('password')).sendKeys(password);
          const loginButton = driver.findElement(webdriver.By.xpath("//button[contains(.,'Login')]"));
          loginButton.click();
        });
    })
  }
};
