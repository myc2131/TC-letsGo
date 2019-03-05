<app>

  <div class="container">

    <!-- LOG IN -->
    <div show={menuState ==="login"}>
      <form>
        <div class="form-group">
          <label for="uni">UNI:</label>
          <input type="text" class="form-control" id="uni">
        </div>
        <div class="form-group">
          <label for="pwd">Password:</label>
          <input type="password" class="form-control" id="pwd">
        </div>
        <button type="submit" class="btn btn-default">Login</button>
        <button class="btn btn-default">Sign up</button>
      </form>

    </div>

    <!-- SIGN UP -->
    <div show={menuState ==="signUp" }>
      <form>
        <div class="form-group">
          <label for="fname">First Name:</label>
          <input type="text" class="form-control" id="fname">
        </div>
        <div class="form-group">
          <label for="lname">Last Name:</label>
          <input type="text" class="form-control" id="lname">
        </div>
        <div class="form-group">
          <label for="email">Email address:</label>
          <input type="email" class="form-control" id="email">
        </div>
        <div class ="form-group">
          <input type="radio" name="enrollment" value="current"> Current Student<br>
          <input type="radio" name="enrollment" value="alumni"> Alumni<br>
        </div>

        <div class="form-group">
          <label for="school">School:</label>
          <select id="school">
            <option value="teacherscollege">Teachers College</option>
            <option value="sipa">School of Public and International Affairs</option>
            <option value="lawschool">Columbia Law School</option>
            <option value="engineering">Columbia Engineering</option>
          </select>
        </div>
        <div class="form-group">
          <label for="program">Program (please type full name with capitals):</label>
          <input type="text" class="form-control" id="program">
        </div>
        <div class="form-group">
          <p>Choose your pronoun(s):</p>
          <input type="checkbox" name="male" value="he"> He<br>
          <input type="checkbox" name="female" value="she"> She<br>
          <input type="checkbox" name="neutral" value="ze" checked> ze<br>
        </div>


    </div>

    <!-- DASHBOARD -->
    <div show={menuState === "dashboard"}>
      <div class="row">
        <div class="col-4">
          <!-- Showing user info -->
          <profile></profile>
        </div>
        <div class="col-8">
          <search></search>
        </div>
      </div>
    </div>

  </div>

  <script>
    var tag = this;
    console.log('app.tag');

    this.menuState = "signUp";
  </script>



  <style>
    :scope {
      display: block;
    }
  </style>
</app>
