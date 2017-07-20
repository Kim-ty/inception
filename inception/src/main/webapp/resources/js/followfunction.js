function followchk(follower){
  if(follower == "true"){
    $('#follow').html('unfollow');
  }else{
    $('#follow').html('follow');
  }
}

function followload(loginid,followid){
	return followchk(location.href="/follow/"+loginid+"/followcheck")
}