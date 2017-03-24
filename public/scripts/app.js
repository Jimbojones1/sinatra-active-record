console.log('hey this is linked')

$.ajax({
  url: '/home/bird',
  type: 'GET',
  dataType: 'JSON',
  success: function(data){
    console.log(data)
    //div with an id of whatever that hash is called
    // inside the div make an unordered list
    // of your data


    for(var prop in data){
      $('body').append('<h4>'+ data[prop] + "</h4>")
    }
  },
  error: function(err){
    console.log(err)
  }
})
