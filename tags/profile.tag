<profile>
  <div class="card" style="width: 18rem;">
    <img src="https://via.placeholder.com/100" class="card-img-top" alt="...">
    <div class="card-body">
      <h5 class="card-title">{opts.userprofile.userFName}</h5>
      <p class="card-text"></p>
      <ul>
        <my-interests each={item in opts.userprofile.interest}><my-interests>
      </ul>
    </div>
  </div>
  <script>
    var tag = this;
    console.log('profile.tag');
    console.log(opts.userprofile);
  </script>


  <style>
    :scope {
      display: block;
    }
  </style>
</profile>

<my-interests>
  <li><button onclick={ toggleColor } class="{ color }">{ item }</button></li>
    <script>
      toggleColor() {
        if (this.color == "btn-primary"){
          this.color = "btn-light"
          observable.trigger("removeInterest",this.item)
        }
        else{
          this.color = "btn-primary"
          observable.trigger("addInterest",this.item)
        }
        observable.trigger("searchFriends")
      }
    </script>
</my-interests>
