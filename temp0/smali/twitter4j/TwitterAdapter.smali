.class public Ltwitter4j/TwitterAdapter;
.super Ljava/lang/Object;
.source "TwitterAdapter.java"

# interfaces
.implements Ltwitter4j/TwitterListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method public addedUserListMember(Ltwitter4j/UserList;)V
    .locals 0
    .param p1, "userList"    # Ltwitter4j/UserList;

    .prologue
    .line 193
    return-void
.end method

.method public checkedUserListMembership(Ltwitter4j/User;)V
    .locals 0
    .param p1, "user"    # Ltwitter4j/User;

    .prologue
    .line 201
    return-void
.end method

.method public checkedUserListSubscription(Ltwitter4j/User;)V
    .locals 0
    .param p1, "user"    # Ltwitter4j/User;

    .prologue
    .line 219
    return-void
.end method

.method public createdBlock(Ltwitter4j/User;)V
    .locals 0
    .param p1, "user"    # Ltwitter4j/User;

    .prologue
    .line 323
    return-void
.end method

.method public createdFavorite(Ltwitter4j/Status;)V
    .locals 0
    .param p1, "status"    # Ltwitter4j/Status;

    .prologue
    .line 303
    return-void
.end method

.method public createdFriendship(Ltwitter4j/User;)V
    .locals 0
    .param p1, "user"    # Ltwitter4j/User;

    .prologue
    .line 239
    return-void
.end method

.method public createdUserList(Ltwitter4j/UserList;)V
    .locals 0
    .param p1, "userList"    # Ltwitter4j/UserList;

    .prologue
    .line 155
    return-void
.end method

.method public deletedUserListMember(Ltwitter4j/UserList;)V
    .locals 0
    .param p1, "userList"    # Ltwitter4j/UserList;

    .prologue
    .line 197
    return-void
.end method

.method public destroyedBlock(Ltwitter4j/User;)V
    .locals 0
    .param p1, "user"    # Ltwitter4j/User;

    .prologue
    .line 328
    return-void
.end method

.method public destroyedDirectMessage(Ltwitter4j/DirectMessage;)V
    .locals 0
    .param p1, "message"    # Ltwitter4j/DirectMessage;

    .prologue
    .line 232
    return-void
.end method

.method public destroyedFavorite(Ltwitter4j/Status;)V
    .locals 0
    .param p1, "status"    # Ltwitter4j/Status;

    .prologue
    .line 305
    return-void
.end method

.method public destroyedFriendship(Ltwitter4j/User;)V
    .locals 0
    .param p1, "user"    # Ltwitter4j/User;

    .prologue
    .line 244
    return-void
.end method

.method public destroyedStatus(Ltwitter4j/Status;)V
    .locals 0
    .param p1, "destroyedStatus"    # Ltwitter4j/Status;

    .prologue
    .line 108
    return-void
.end method

.method public destroyedUserList(Ltwitter4j/UserList;)V
    .locals 0
    .param p1, "userList"    # Ltwitter4j/UserList;

    .prologue
    .line 171
    return-void
.end method

.method public disabledNotification(Ltwitter4j/User;)V
    .locals 0
    .param p1, "user"    # Ltwitter4j/User;

    .prologue
    .line 317
    return-void
.end method

.method public enabledNotification(Ltwitter4j/User;)V
    .locals 0
    .param p1, "user"    # Ltwitter4j/User;

    .prologue
    .line 312
    return-void
.end method

.method public gotAvailableTrends(Ltwitter4j/ResponseList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Location;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 366
    .local p1, "locations":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/Location;>;"
    return-void
.end method

.method public gotBlockingUsers(Ltwitter4j/ResponseList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 339
    .local p1, "blockingUsers":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/User;>;"
    return-void
.end method

.method public gotBlockingUsersIDs(Ltwitter4j/IDs;)V
    .locals 0
    .param p1, "blockingUsersIDs"    # Ltwitter4j/IDs;

    .prologue
    .line 345
    return-void
.end method

.method public gotCurrentTrends(Ltwitter4j/Trends;)V
    .locals 0
    .param p1, "trends"    # Ltwitter4j/Trends;

    .prologue
    .line 52
    return-void
.end method

.method public gotDailyTrends(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Trends;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "trendsList":Ljava/util/List;, "Ljava/util/List<Ltwitter4j/Trends;>;"
    return-void
.end method

.method public gotDirectMessages(Ltwitter4j/ResponseList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/DirectMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p1, "messages":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/DirectMessage;>;"
    return-void
.end method

.method public gotExistsBlock(Z)V
    .locals 0
    .param p1, "blockExists"    # Z

    .prologue
    .line 333
    return-void
.end method

.method public gotExistsFriendship(Z)V
    .locals 0
    .param p1, "exists"    # Z

    .prologue
    .line 249
    return-void
.end method

.method public gotFavorites(Ltwitter4j/ResponseList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 301
    .local p1, "statuses":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    return-void
.end method

.method public gotFollowersIDs(Ltwitter4j/IDs;)V
    .locals 0
    .param p1, "ids"    # Ltwitter4j/IDs;

    .prologue
    .line 272
    return-void
.end method

.method public gotFollowersStatuses(Ltwitter4j/PagableResponseList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, "users":Ltwitter4j/PagableResponseList;, "Ltwitter4j/PagableResponseList<Ltwitter4j/User;>;"
    return-void
.end method

.method public gotFriendsIDs(Ltwitter4j/IDs;)V
    .locals 0
    .param p1, "ids"    # Ltwitter4j/IDs;

    .prologue
    .line 269
    return-void
.end method

.method public gotFriendsStatuses(Ltwitter4j/PagableResponseList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p1, "users":Ltwitter4j/PagableResponseList;, "Ltwitter4j/PagableResponseList<Ltwitter4j/User;>;"
    return-void
.end method

.method public gotFriendsTimeline(Ltwitter4j/ResponseList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "statuses":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    return-void
.end method

.method public gotGeoDetails(Ltwitter4j/Place;)V
    .locals 0
    .param p1, "place"    # Ltwitter4j/Place;

    .prologue
    .line 381
    return-void
.end method

.method public gotHomeTimeline(Ltwitter4j/ResponseList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, "statuses":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    return-void
.end method

.method public gotIncomingFriendships(Ltwitter4j/IDs;)V
    .locals 0
    .param p1, "ids"    # Ltwitter4j/IDs;

    .prologue
    .line 259
    return-void
.end method

.method public gotLocationTrends(Ltwitter4j/Trends;)V
    .locals 0
    .param p1, "trends"    # Ltwitter4j/Trends;

    .prologue
    .line 373
    return-void
.end method

.method public gotMentions(Ltwitter4j/ResponseList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "statuses":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    return-void
.end method

.method public gotNearByPlaces(Ltwitter4j/ResponseList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Place;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 377
    .local p1, "places":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/Place;>;"
    return-void
.end method

.method public gotOutgoingFriendships(Ltwitter4j/IDs;)V
    .locals 0
    .param p1, "ids"    # Ltwitter4j/IDs;

    .prologue
    .line 264
    return-void
.end method

.method public gotPublicTimeline(Ltwitter4j/ResponseList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "statuses":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    return-void
.end method

.method public gotRateLimitStatus(Ltwitter4j/RateLimitStatus;)V
    .locals 0
    .param p1, "status"    # Ltwitter4j/RateLimitStatus;

    .prologue
    .line 277
    return-void
.end method

.method public gotRetweetedByMe(Ltwitter4j/ResponseList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "statuses":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    return-void
.end method

.method public gotRetweetedToMe(Ltwitter4j/ResponseList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, "statuses":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    return-void
.end method

.method public gotRetweets(Ltwitter4j/ResponseList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "retweets":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    return-void
.end method

.method public gotRetweetsOfMe(Ltwitter4j/ResponseList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, "statuses":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    return-void
.end method

.method public gotReverseGeoCode(Ltwitter4j/ResponseList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Place;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 379
    .local p1, "places":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/Place;>;"
    return-void
.end method

.method public gotSentDirectMessages(Ltwitter4j/ResponseList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/DirectMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 225
    .local p1, "messages":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/DirectMessage;>;"
    return-void
.end method

.method public gotShowFriendship(Ltwitter4j/Relationship;)V
    .locals 0
    .param p1, "relationship"    # Ltwitter4j/Relationship;

    .prologue
    .line 254
    return-void
.end method

.method public gotShowStatus(Ltwitter4j/Status;)V
    .locals 0
    .param p1, "statuses"    # Ltwitter4j/Status;

    .prologue
    .line 104
    return-void
.end method

.method public gotShowUserList(Ltwitter4j/UserList;)V
    .locals 0
    .param p1, "userList"    # Ltwitter4j/UserList;

    .prologue
    .line 167
    return-void
.end method

.method public gotSuggestedUserCategories(Ltwitter4j/ResponseList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Category;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, "categories":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/Category;>;"
    return-void
.end method

.method public gotTrends(Ltwitter4j/Trends;)V
    .locals 0
    .param p1, "trends"    # Ltwitter4j/Trends;

    .prologue
    .line 47
    return-void
.end method

.method public gotUserDetail(Ltwitter4j/User;)V
    .locals 0
    .param p1, "user"    # Ltwitter4j/User;

    .prologue
    .line 122
    return-void
.end method

.method public gotUserListMembers(Ltwitter4j/PagableResponseList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 189
    .local p1, "users":Ltwitter4j/PagableResponseList;, "Ltwitter4j/PagableResponseList<Ltwitter4j/User;>;"
    return-void
.end method

.method public gotUserListMemberships(Ltwitter4j/PagableResponseList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/UserList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 179
    .local p1, "userLists":Ltwitter4j/PagableResponseList;, "Ltwitter4j/PagableResponseList<Ltwitter4j/UserList;>;"
    return-void
.end method

.method public gotUserListStatuses(Ltwitter4j/ResponseList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 175
    .local p1, "statuses":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    return-void
.end method

.method public gotUserListSubscribers(Ltwitter4j/PagableResponseList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 207
    .local p1, "users":Ltwitter4j/PagableResponseList;, "Ltwitter4j/PagableResponseList<Ltwitter4j/User;>;"
    return-void
.end method

.method public gotUserListSubscriptions(Ltwitter4j/PagableResponseList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/UserList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p1, "userLists":Ltwitter4j/PagableResponseList;, "Ltwitter4j/PagableResponseList<Ltwitter4j/UserList;>;"
    return-void
.end method

.method public gotUserLists(Ltwitter4j/PagableResponseList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/UserList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, "userLists":Ltwitter4j/PagableResponseList;, "Ltwitter4j/PagableResponseList<Ltwitter4j/UserList;>;"
    return-void
.end method

.method public gotUserSuggestions(Ltwitter4j/ResponseList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, "users":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/User;>;"
    return-void
.end method

.method public gotUserTimeline(Ltwitter4j/ResponseList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "statuses":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    return-void
.end method

.method public gotWeeklyTrends(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Trends;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "trendsList":Ljava/util/List;, "Ljava/util/List<Ltwitter4j/Trends;>;"
    return-void
.end method

.method public lookedupUsers(Ltwitter4j/ResponseList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, "users":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/User;>;"
    return-void
.end method

.method public onException(Ltwitter4j/TwitterException;Ltwitter4j/TwitterMethod;)V
    .locals 0
    .param p1, "ex"    # Ltwitter4j/TwitterException;
    .param p2, "method"    # Ltwitter4j/TwitterMethod;

    .prologue
    .line 392
    return-void
.end method

.method public reportedSpam(Ltwitter4j/User;)V
    .locals 0
    .param p1, "reportedSpammer"    # Ltwitter4j/User;

    .prologue
    .line 350
    return-void
.end method

.method public retweetedStatus(Ltwitter4j/Status;)V
    .locals 0
    .param p1, "retweetedStatus"    # Ltwitter4j/Status;

    .prologue
    .line 113
    return-void
.end method

.method public searched(Ltwitter4j/QueryResult;)V
    .locals 0
    .param p1, "result"    # Ltwitter4j/QueryResult;

    .prologue
    .line 42
    return-void
.end method

.method public searchedUser(Ltwitter4j/ResponseList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, "userList":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/User;>;"
    return-void
.end method

.method public sentDirectMessage(Ltwitter4j/DirectMessage;)V
    .locals 0
    .param p1, "message"    # Ltwitter4j/DirectMessage;

    .prologue
    .line 227
    return-void
.end method

.method public subscribedUserList(Ltwitter4j/UserList;)V
    .locals 0
    .param p1, "userList"    # Ltwitter4j/UserList;

    .prologue
    .line 211
    return-void
.end method

.method public tested(Z)V
    .locals 0
    .param p1, "test"    # Z

    .prologue
    .line 385
    return-void
.end method

.method public unsubscribedUserList(Ltwitter4j/UserList;)V
    .locals 0
    .param p1, "userList"    # Ltwitter4j/UserList;

    .prologue
    .line 215
    return-void
.end method

.method public updatedDeliveryDevice(Ltwitter4j/User;)V
    .locals 0
    .param p1, "user"    # Ltwitter4j/User;

    .prologue
    .line 280
    return-void
.end method

.method public updatedProfile(Ltwitter4j/User;)V
    .locals 0
    .param p1, "user"    # Ltwitter4j/User;

    .prologue
    .line 298
    return-void
.end method

.method public updatedProfileBackgroundImage(Ltwitter4j/User;)V
    .locals 0
    .param p1, "user"    # Ltwitter4j/User;

    .prologue
    .line 293
    return-void
.end method

.method public updatedProfileColors(Ltwitter4j/User;)V
    .locals 0
    .param p1, "user"    # Ltwitter4j/User;

    .prologue
    .line 283
    return-void
.end method

.method public updatedProfileImage(Ltwitter4j/User;)V
    .locals 0
    .param p1, "user"    # Ltwitter4j/User;

    .prologue
    .line 288
    return-void
.end method

.method public updatedStatus(Ltwitter4j/Status;)V
    .locals 0
    .param p1, "statuses"    # Ltwitter4j/Status;

    .prologue
    .line 106
    return-void
.end method

.method public updatedUserList(Ltwitter4j/UserList;)V
    .locals 0
    .param p1, "userList"    # Ltwitter4j/UserList;

    .prologue
    .line 159
    return-void
.end method
