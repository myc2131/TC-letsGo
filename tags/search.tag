<search>
  <h1>Find your best match</h1>
  <div class="row">
  <search-results each = {item in friends}></search-results>
  </div>
  <script>

    var tag = this;
    console.log('search.tag');
    console.log(opts.userlist);
    var interestsArray =  []; //store the intersts that have been selected
    this.friends = [];
    // Listen when user deselect the interest and remove the interest from interestsArray
    observable.on("removeInterest",function(e){
      var index = interestsArray.indexOf(e);
      if (index > -1){
        interestsArray.splice(index, 1);
      }
      console.log(interestsArray);
      filter();
      tag.update();
    })

    //Listen when user select the interests and add the interests to the interestsArray
    observable.on("addInterest",function(e){
    interestsArray.splice(interestsArray.length,0,e)
    console.log(interestsArray);
    filter();
    tag.update();
    })

    //Find out friends that have same interests that have been selected
     function match(selectedIns,friendsIns){
       for(var i = 0, len = selectedIns.length; i < len; i++){
         console.log("test");
      if($.inArray(selectedIns[i], friendsIns) == -1) return false;
   }
   return true;
 }

    // Add the friends that have same interests to the friends []
    function filter(){
      tag.friends = [];
      for (i of opts.userlist){
        if (match(interestsArray, i.interest)){
          tag.friends.push(i);
          tag.update();
        }
        tag.update();
      }
    }


  </script>

  <style>
    :scope {
      display: block;
    }
  </style>
</search>

<search-results>
  <div class="col-2">
  <div class="card" style="width: 18rem;">
    <img src="https://via.placeholder.com/100" class="card-img-top" alt="...">
    <div class="card-body">
      <h5 class="card-title">{item.userName}</h5>
      <p class="card-text">UNI:{item.uni}</p>
    </div>
  </div>
</div>
</search-results>
