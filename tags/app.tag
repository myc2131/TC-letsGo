<app>

  <div class="container">

    <!-- LOG IN -->
    <div show={menuState ==="login"}>
      <div class="jumbotron">
       <div class="text-center">
         <img src="./images/tc.jpg" alt="TC Pic" style="width:600px;height:400px;">
         </div>
      </div>

      <div class= "row">
        <div class="col-6">
          <div class="card">
              <img class="card-img-top img-responsive text-right" src="./images/tc-letsgo.png" alt="TCletsgo">

          </div>
          </div>
          <div class="col-6">
          <div class="card">
          <img src="./images/title_gif.gif" style="height:120px" alt="title">
            </div>
          </div>
       </div>
      <form>
        <div class="form-group">
          <label for="uni">UNI:</label>
          <input type="text" class="form-control" id="uni">
        </div>
        <div class="form-group">
          <label for="pwd">Password:</label>
          <input type="password" class="form-control" id="pwd">
        </div>
        <p>Click Sign-Up for demo purpose</p>
        <button type="submit" class="btn btn-default" onclick={ dashboard }>Login</button>
        <button class="btn btn-default" onclick={ signUp }>Sign up</button>
      </form>
    </div>

    <!-- SIGN UP -->
    <div show={menuState ==="signUp" }>
      <form id="signupForm">
        <div class="form-group">
          <label for="fname">First Name:</label>
          <input type="text" class="form-control" id="fname">
        </div>
        <div class="form-group">
          <label for="lname">Last Name:</label>
          <input type="text" class="form-control" id="lname">
        </div>
        <div class="form-group">
          <label for="inputUNI">UNI:</label>
          <input type="text" class="form-control" id="inputUNI">
        </div>
        <div class="form-group">
          <label for="email">Email address:</label>
          <input type="email" class="form-control" id="email">
        </div>
        <div class="form-group">
          <input type="radio" name="enrollment" value="current"> Current Student<br>
          <input type="radio" name="enrollment" value="alumni"> Alumni<br>
        </div>
        <div class="form-group">
          <label for="gradYear">Year of Graduation or Expected Graduation:</label>
          <input type="text" class="form-control" id="gradYear">
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
          <div>
            <input type="checkbox" id="signup01" name="male" value="he">
            <label for="signup01">He</label>
          </div>
          <div>
            <input type="checkbox" id="signup02" name="female" value="she">
            <label for="signup02">She</label>
          </div>
          <div>
            <input type="checkbox" id="signup03" name="neutral" value="ze">
            <label for="signup03">Ze</label>
          </div>
          <button class="btn btn-default" onclick={ interests }>Submit</button>
        </div>
    </div>

    <!-- SELECT INTERESTS -->
    <div show = { menuState === "select interests"}>
      <div class="row">
        <div class="col, form-group">
          <p>Select your interests:</p>
          <div>
            <input type="checkbox" id="interest01" name="basketball" value="basketball">
            <label for="interest01">basketball</label>
          </div>
          <div>
            <input type="checkbox" id="interest02" name="mexicanfood" value="mexicanfood">
            <label for="interest02">Mexican food</label>
          </div>
          <div>
            <input type="checkbox" id="interest03" name="entrepreneurship" value="entrepreneurship">
            <label for="interest03">entrepreneurship</label>
          </div>
          <div>
            <input type="checkbox" id="interest04" name="hiking" value="hiking">
            <label for="interest04">hiking</label>
          </div>
          <div>
            <input type="checkbox" id="interest05" name="movies" value="movies">
            <label for="interest05">movies</label>
          </div>
          <div>
            <input type="checkbox" id="interest06" name="virtualreality" value="virtualreality">
            <label for="interest06">virtual reality</label>
          </div>

          <button class="btn btn-default" onclick={ dashboard }>Submit</button>
        </div>
      </div>
    </div>

    <!-- DASHBOARD -->
    <div show={menuState === "dashboard"}>
      <div class="row">
        <div class="col-2">
          <!-- Showing user info -->
          <profile userprofile = {user}></profile>
        </div>
        <div class="col-2"></div>
        <div class="col-8">
          <!-- Showing search tag info -->
          <search userlist = {userArray}></search>
        </div>
      </div>
    </div>

  </div>

  <script>
    var tag = this;
    console.log('app.tag');
    this.menuState = "login";

    this.user = {
      userFName: "Ricky",
      userLName: "Smith",
      gradStatus: "alumni",
      year:2019,
      uni:345643,
      interest:["basketball","entrepreneurship","cognitive-science","coding"]
    }; // Dani working on passing the newly sign-up data to this variable

    //Dummy data for tesing purpose
    this.userArray = [
      {
        userFName: "Daniel",
        userLName: "Jones",
        gradStatus: "current",
        year: 2019,
        uni:123456,
        interest:["basketball","dancing"]
      },
      {
        userFName: "Marcus",
        userLName: "Brown",
        gradStatus: "alumni",
        year: 2019,
        uni:134563,
        interest:["entrepreneurship","fishing"]
      },
      {
        userFName: "Yesika",
        userLName: "Simpson",
        gradStatus: "current",
        year: 2019,
        uni:097399,
        interest:["dessert","entrepreneurship","movies"]
      },
      {
        userFName: "Nathan Holbert",
        userLName: "Holbert",
        gradStatus: "current",
        year: 2019,
        uni:097399,
        interest:["cognitive-science"]
      },
      {
        userFName: "Jin",
        userLName: "",
        gradStatus: "current",
        year: 2019,
        uni:097399,
        interest:["coding"]
      }


    ]

    signUp = function(event) {
      this.menuState = "signUp";
      event.preventDefault();
    }

    interests = function(event) {
      event.preventDefault();
      this.user.userFName = document.getElementById("fname").value;
      this.user.userLName = document.getElementById("lname").value;
      var radios = document.getElementsByName('enrollment');
      for (var i = 0, length = radios.length; i < length; i++) {
        if (radios[i].checked) {
          this.user.gradStatus = radios[i].value;
          break;
        }
      }
      this.user.year = document.getElementById("gradYear").value;
      this.user.uni = document.getElementById("inputUNI").value;
      this.userArray.push(this.user);
      this.menuState = "select interests";
    }

    dashboard = function(event) {
      event.preventDefault();
      this.menuState = "dashboard";
    }

  </script>



  <style>
    :scope {
      display: block;
    }
  </style>
</app>
