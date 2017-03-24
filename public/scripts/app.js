console.log('hey this is linked')

$.ajax({
  url: '/home/user',
  type: 'GET',
  dataType: 'JSON',
  success: function(data){
    console.log(data)

    for (var i=0; i < data.length; i++){
      $('body').append("<p>" + data[i].username + "<br>" + data[i].password + "</p>")
    }
    //div with an id of whatever that hash is called
    // inside the div make an unordered list
    // of your data

  },
  error: function(err){
    console.log(err)
  }
})
