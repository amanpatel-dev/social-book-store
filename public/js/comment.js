$(function(){
    $(document).on('click','.comment',function(){
        var tweet_id =$(this).data('tweet');
        $.post('/comment',{tweet_cmnt:tweet_id},function(data){
            $('.popUpComment').html(data);

        })
    })

    $(document).on('click','.getcomment',function(){
        
    })


})