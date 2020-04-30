class SignupPage extends PageManager{
  
  initBindingsAndEventListeners() {
    this.form = this.container.querySelector('#signup-form')

    this.form.addEventListener('submit', this.handleSubmit.bind(this))
  }

  handleSubmit(e) {
    e.preventDefault()
    const inputs = Array.from(e.target.querySelectorAll("input"))
    const [name, email, password] = inputs.map(input => input.value)
    const params = {
      user: {
        name, email, password
      }
    }
    this.adapter.signup(params)
  }



  get staticHTML() {
    return `
    <h2>Signup</h2>
    <form id="signup-form">
  <div class="form-row">
  <div class="form-group col-md-6">
      <label for="name">Name</label>
      <input type="name" class="form-control" id="name" placeholder="Name" required>
    </div>
    <div class="form-group col-md-6">
      <label for="email">Email</label>
      <input type="email" class="form-control" id="email" placeholder="Email" required>
    </div>
    <div class="form-group col-md-6">
      <label for="password">Password</label>
      <input type="password" class="form-control" id="password" placeholder="Password" required>
    </div>
  </div>
  
  <button type="submit" class="btn btn-primary">Sign in</button>
</form>`
  }


}