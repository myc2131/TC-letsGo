<app>

  <div class="container">

    <!-- LOG IN -->
    <div show={menuState ==="login" }>TEST: login</div>

    <!-- SIGN UP -->
    <div show={menuState ==="signUp" }>TEST:signUp</div>

    <!-- CREATE PROFILE -->
    <div show={menuState === "createProfile"}>TEST: createProfile</div>

    <!-- DASHBOARD -->
    <div show={menuState === "dashboard"}>
      <div class="row">
        <div class="col-4">
          <profile></profile>
          <interest></interest>
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

    this.menuState = "dashboard"
  </script>



  <style>
    :scope {
      display: block;
    }
  </style>
</app>