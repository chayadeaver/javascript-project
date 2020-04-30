class App {
  constructor() {
    this.adapter = new BaseAdapter("http://localhost:3000")
    this.initBindingsAndEventListers()
    this.renderPage(new SignupPage(this.pageContainer, this.adapter))

  }
  initBindingsAndEventListers() {
    this.container = document.querySelector("#app-container")
    this.alertContainer = document.querySelector("#alert-container")
    this.navbarContainer = document.querySelector("#navbar-container")
    this.pageContainer = document.querySelector("#page-container")
  }
  renderPage(page) {
    page.render()
  }
}