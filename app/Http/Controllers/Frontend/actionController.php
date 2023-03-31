<?php

namespace App\Http\Controllers\Frontend;

use App\Models\likeData;
use App\Models\commentData;
use Illuminate\Http\Request;
use App\Helpers\CommonHelper;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class actionController extends Controller
{
  public function likedTweet(Request $request)
  {
    $like_tweet_id = $request->like;
    $userid = Auth::user()->id;
    $likedata = new likeData;
    $likedata->user_id = $userid;
    $likedata->tweet_id = $like_tweet_id;
    $likedata->save();

    echo `<div class="tmp d-none">
        ` + CommonHelper::LikeCount($like_tweet_id) + `            
   </div>`;
  }
  public function unlikedTweet(Request $request)
  {
    $like_tweet_id = $request->like;
    $userid = Auth::user()->id;
    $res = likeData::where('user_id', $userid)->where('tweet_id', $like_tweet_id)->delete();
    echo `<div class="tmp d-none">
        ` + CommonHelper::LikeCount($like_tweet_id) + `            
   </div>`;
  }

  public function comment(Request $request)
  {
    //this is the tweet id on which comment is done

    $tweeter_id = $request->tweet_cmnt;

    $comment = DB::table('comment')

      ->select('comment.comment',)
      ->where('comment.comment_id', '=', $tweeter_id)
      ->get();

    // $comment = commentData::where('comment_id', $tweeter_id);
    // ';
    // foreach ($comment as $comments) {
    //   echo "<tr>
    //  <td>" . $comments['comment'] . "</td></tr>";
    // }
    // '
    echo '  <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Comment</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
      <input class="comment-text comment_input" type="text" placeholder="Add Comment.." />
    
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary getcomment" data-tweet=' . $tweeter_id . '>Comment</button>
      </div>';
  }

  public function storeComment(Request $request)
  {
    $comment_id = $request->commentId;
    $comment_text = $request->comment;
    $userid = Auth::user()->id;

    $commentdata = new commentData();

    $commentdata->user_id = $userid;
    $commentdata->comment_id = $comment_id;
    $commentdata->comment = $comment_text;
    $commentdata->save();
    echo `<div class="tmp d-none">
      ` + CommonHelper::commentCount($comment_id) + `            
 </div>`;
  }

  public function getComment()
  {
  }
}
