function followchk(follower){
  if(follower == "true"){
    $('#follow').html('unfollow');
  }else{
    $('#follow').html('follow');
  }
}

function followload(loginid){
	if(loginid == 0){
		alert('follow');
		return 'follow';
	}else{
		alert('unfollow');
		return 'unfollow';
	}
		
}