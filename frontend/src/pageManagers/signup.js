class SignupPage{
  constructor(container) {
    this.container = container
  }

  get staticHTML() {
    return `
    <h2>Signup</h2>
    <form>
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

  render(){
    this.container.innerHTML = this.staticHTML
  }

}