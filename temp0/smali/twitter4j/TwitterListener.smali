.class public interface abstract Ltwitter4j/TwitterListener;
.super Ljava/lang/Object;
.source "TwitterListener.java"


# static fields
.field public static final ADD_LIST_MEMBER:Ltwitter4j/TwitterMethod;

.field public static final AVAILABLE_TRENDS:Ltwitter4j/TwitterMethod;

.field public static final BLOCKING_USERS:Ltwitter4j/TwitterMethod;

.field public static final BLOCKING_USERS_IDS:Ltwitter4j/TwitterMethod;

.field public static final CHECK_LIST_MEMBERSHIP:Ltwitter4j/TwitterMethod;

.field public static final CHECK_LIST_SUBSCRIPTION:Ltwitter4j/TwitterMethod;

.field public static final CREATE_BLOCK:Ltwitter4j/TwitterMethod;

.field public static final CREATE_FAVORITE:Ltwitter4j/TwitterMethod;

.field public static final CREATE_FRIENDSHIP:Ltwitter4j/TwitterMethod;

.field public static final CREATE_USER_LIST:Ltwitter4j/TwitterMethod;

.field public static final CURRENT_TRENDS:Ltwitter4j/TwitterMethod;

.field public static final DAILY_TRENDS:Ltwitter4j/TwitterMethod;

.field public static final DELETE_LIST_MEMBER:Ltwitter4j/TwitterMethod;

.field public static final DESTROY_BLOCK:Ltwitter4j/TwitterMethod;

.field public static final DESTROY_DIRECT_MESSAGES:Ltwitter4j/TwitterMethod;

.field public static final DESTROY_FAVORITE:Ltwitter4j/TwitterMethod;

.field public static final DESTROY_FRIENDSHIP:Ltwitter4j/TwitterMethod;

.field public static final DESTROY_STATUS:Ltwitter4j/TwitterMethod;

.field public static final DIRECT_MESSAGES:Ltwitter4j/TwitterMethod;

.field public static final DISABLE_NOTIFICATION:Ltwitter4j/TwitterMethod;

.field public static final DSTROY_USER_LIST:Ltwitter4j/TwitterMethod;

.field public static final ENABLE_NOTIFICATION:Ltwitter4j/TwitterMethod;

.field public static final EXISTS_BLOCK:Ltwitter4j/TwitterMethod;

.field public static final EXISTS_FRIENDSHIP:Ltwitter4j/TwitterMethod;

.field public static final FAVORITES:Ltwitter4j/TwitterMethod;

.field public static final FOLLOWERS_IDS:Ltwitter4j/TwitterMethod;

.field public static final FOLLOWERS_STATUSES:Ltwitter4j/TwitterMethod;

.field public static final FRIENDS_IDS:Ltwitter4j/TwitterMethod;

.field public static final FRIENDS_STATUSES:Ltwitter4j/TwitterMethod;

.field public static final FRIENDS_TIMELINE:Ltwitter4j/TwitterMethod;

.field public static final GEO_DETAILS:Ltwitter4j/TwitterMethod;

.field public static final HOME_TIMELINE:Ltwitter4j/TwitterMethod;

.field public static final INCOMING_FRIENDSHIP:Ltwitter4j/TwitterMethod;

.field public static final LIST_MEMBERS:Ltwitter4j/TwitterMethod;

.field public static final LIST_SUBSCRIBERS:Ltwitter4j/TwitterMethod;

.field public static final LOCATION_TRENDS:Ltwitter4j/TwitterMethod;

.field public static final LOOKUP_USERS:Ltwitter4j/TwitterMethod;

.field public static final MENTIONS:Ltwitter4j/TwitterMethod;

.field public static final NEAR_BY_PLACES:Ltwitter4j/TwitterMethod;

.field public static final OUTGOING_FRIENDSHIPS:Ltwitter4j/TwitterMethod;

.field public static final PUBLIC_TIMELINE:Ltwitter4j/TwitterMethod;

.field public static final RATE_LIMIT_STATUS:Ltwitter4j/TwitterMethod;

.field public static final REPORT_SPAM:Ltwitter4j/TwitterMethod;

.field public static final RETWEETED_BY_ME:Ltwitter4j/TwitterMethod;

.field public static final RETWEETED_TO_ME:Ltwitter4j/TwitterMethod;

.field public static final RETWEETS:Ltwitter4j/TwitterMethod;

.field public static final RETWEETS_OF_ME:Ltwitter4j/TwitterMethod;

.field public static final RETWEET_STATUS:Ltwitter4j/TwitterMethod;

.field public static final REVERSE_GEO_CODE:Ltwitter4j/TwitterMethod;

.field public static final SEARCH:Ltwitter4j/TwitterMethod;

.field public static final SEARCH_USERS:Ltwitter4j/TwitterMethod;

.field public static final SEND_DIRECT_MESSAGE:Ltwitter4j/TwitterMethod;

.field public static final SENT_DIRECT_MESSAGES:Ltwitter4j/TwitterMethod;

.field public static final SHOW_FRIENDSHIP:Ltwitter4j/TwitterMethod;

.field public static final SHOW_STATUS:Ltwitter4j/TwitterMethod;

.field public static final SHOW_USER:Ltwitter4j/TwitterMethod;

.field public static final SHOW_USER_LIST:Ltwitter4j/TwitterMethod;

.field public static final SUBSCRIBE_LIST:Ltwitter4j/TwitterMethod;

.field public static final SUGGESTED_USER_CATEGORIES:Ltwitter4j/TwitterMethod;

.field public static final TEST:Ltwitter4j/TwitterMethod;

.field public static final TRENDS:Ltwitter4j/TwitterMethod;

.field public static final UNSUBSCRIBE_LIST:Ltwitter4j/TwitterMethod;

.field public static final UPDATE_DELIVERY_DEVICE:Ltwitter4j/TwitterMethod;

.field public static final UPDATE_PROFILE:Ltwitter4j/TwitterMethod;

.field public static final UPDATE_PROFILE_BACKGROUND_IMAGE:Ltwitter4j/TwitterMethod;

.field public static final UPDATE_PROFILE_COLORS:Ltwitter4j/TwitterMethod;

.field public static final UPDATE_PROFILE_IMAGE:Ltwitter4j/TwitterMethod;

.field public static final UPDATE_STATUS:Ltwitter4j/TwitterMethod;

.field public static final UPDATE_USER_LIST:Ltwitter4j/TwitterMethod;

.field public static final USER_LISTS:Ltwitter4j/TwitterMethod;

.field public static final USER_LIST_MEMBERSHIPS:Ltwitter4j/TwitterMethod;

.field public static final USER_LIST_STATUSES:Ltwitter4j/TwitterMethod;

.field public static final USER_LIST_SUBSCRIPTIONS:Ltwitter4j/TwitterMethod;

.field public static final USER_SUGGESTIONS:Ltwitter4j/TwitterMethod;

.field public static final USER_TIMELINE:Ltwitter4j/TwitterMethod;

.field public static final WEEKLY_TRENDS:Ltwitter4j/TwitterMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 359
    sget-object v0, Ltwitter4j/TwitterMethod;->SEARCH:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->SEARCH:Ltwitter4j/TwitterMethod;

    .line 361
    sget-object v0, Ltwitter4j/TwitterMethod;->TRENDS:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->TRENDS:Ltwitter4j/TwitterMethod;

    .line 362
    sget-object v0, Ltwitter4j/TwitterMethod;->CURRENT_TRENDS:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->CURRENT_TRENDS:Ltwitter4j/TwitterMethod;

    .line 363
    sget-object v0, Ltwitter4j/TwitterMethod;->DAILY_TRENDS:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->DAILY_TRENDS:Ltwitter4j/TwitterMethod;

    .line 364
    sget-object v0, Ltwitter4j/TwitterMethod;->WEEKLY_TRENDS:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->WEEKLY_TRENDS:Ltwitter4j/TwitterMethod;

    .line 367
    sget-object v0, Ltwitter4j/TwitterMethod;->PUBLIC_TIMELINE:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->PUBLIC_TIMELINE:Ltwitter4j/TwitterMethod;

    .line 368
    sget-object v0, Ltwitter4j/TwitterMethod;->HOME_TIMELINE:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->HOME_TIMELINE:Ltwitter4j/TwitterMethod;

    .line 369
    sget-object v0, Ltwitter4j/TwitterMethod;->FRIENDS_TIMELINE:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->FRIENDS_TIMELINE:Ltwitter4j/TwitterMethod;

    .line 370
    sget-object v0, Ltwitter4j/TwitterMethod;->USER_TIMELINE:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->USER_TIMELINE:Ltwitter4j/TwitterMethod;

    .line 371
    sget-object v0, Ltwitter4j/TwitterMethod;->MENTIONS:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->MENTIONS:Ltwitter4j/TwitterMethod;

    .line 372
    sget-object v0, Ltwitter4j/TwitterMethod;->RETWEETED_BY_ME:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->RETWEETED_BY_ME:Ltwitter4j/TwitterMethod;

    .line 373
    sget-object v0, Ltwitter4j/TwitterMethod;->RETWEETED_TO_ME:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->RETWEETED_TO_ME:Ltwitter4j/TwitterMethod;

    .line 374
    sget-object v0, Ltwitter4j/TwitterMethod;->RETWEETS_OF_ME:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->RETWEETS_OF_ME:Ltwitter4j/TwitterMethod;

    .line 377
    sget-object v0, Ltwitter4j/TwitterMethod;->SHOW_STATUS:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->SHOW_STATUS:Ltwitter4j/TwitterMethod;

    .line 378
    sget-object v0, Ltwitter4j/TwitterMethod;->UPDATE_STATUS:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->UPDATE_STATUS:Ltwitter4j/TwitterMethod;

    .line 379
    sget-object v0, Ltwitter4j/TwitterMethod;->DESTROY_STATUS:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->DESTROY_STATUS:Ltwitter4j/TwitterMethod;

    .line 380
    sget-object v0, Ltwitter4j/TwitterMethod;->RETWEET_STATUS:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->RETWEET_STATUS:Ltwitter4j/TwitterMethod;

    .line 381
    sget-object v0, Ltwitter4j/TwitterMethod;->RETWEETS:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->RETWEETS:Ltwitter4j/TwitterMethod;

    .line 384
    sget-object v0, Ltwitter4j/TwitterMethod;->SHOW_USER:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->SHOW_USER:Ltwitter4j/TwitterMethod;

    .line 385
    sget-object v0, Ltwitter4j/TwitterMethod;->LOOKUP_USERS:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->LOOKUP_USERS:Ltwitter4j/TwitterMethod;

    .line 386
    sget-object v0, Ltwitter4j/TwitterMethod;->SEARCH_USERS:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->SEARCH_USERS:Ltwitter4j/TwitterMethod;

    .line 387
    sget-object v0, Ltwitter4j/TwitterMethod;->SUGGESTED_USER_CATEGORIES:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->SUGGESTED_USER_CATEGORIES:Ltwitter4j/TwitterMethod;

    .line 388
    sget-object v0, Ltwitter4j/TwitterMethod;->USER_SUGGESTIONS:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->USER_SUGGESTIONS:Ltwitter4j/TwitterMethod;

    .line 389
    sget-object v0, Ltwitter4j/TwitterMethod;->FRIENDS_STATUSES:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->FRIENDS_STATUSES:Ltwitter4j/TwitterMethod;

    .line 390
    sget-object v0, Ltwitter4j/TwitterMethod;->FOLLOWERS_STATUSES:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->FOLLOWERS_STATUSES:Ltwitter4j/TwitterMethod;

    .line 393
    sget-object v0, Ltwitter4j/TwitterMethod;->CREATE_USER_LIST:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->CREATE_USER_LIST:Ltwitter4j/TwitterMethod;

    .line 394
    sget-object v0, Ltwitter4j/TwitterMethod;->UPDATE_USER_LIST:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->UPDATE_USER_LIST:Ltwitter4j/TwitterMethod;

    .line 395
    sget-object v0, Ltwitter4j/TwitterMethod;->USER_LISTS:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->USER_LISTS:Ltwitter4j/TwitterMethod;

    .line 396
    sget-object v0, Ltwitter4j/TwitterMethod;->SHOW_USER_LIST:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->SHOW_USER_LIST:Ltwitter4j/TwitterMethod;

    .line 397
    sget-object v0, Ltwitter4j/TwitterMethod;->DESTROY_USER_LIST:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->DSTROY_USER_LIST:Ltwitter4j/TwitterMethod;

    .line 398
    sget-object v0, Ltwitter4j/TwitterMethod;->USER_LIST_STATUSES:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->USER_LIST_STATUSES:Ltwitter4j/TwitterMethod;

    .line 399
    sget-object v0, Ltwitter4j/TwitterMethod;->USER_LIST_MEMBERSHIPS:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->USER_LIST_MEMBERSHIPS:Ltwitter4j/TwitterMethod;

    .line 400
    sget-object v0, Ltwitter4j/TwitterMethod;->USER_LIST_SUBSCRIPTIONS:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->USER_LIST_SUBSCRIPTIONS:Ltwitter4j/TwitterMethod;

    .line 403
    sget-object v0, Ltwitter4j/TwitterMethod;->LIST_MEMBERS:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->LIST_MEMBERS:Ltwitter4j/TwitterMethod;

    .line 404
    sget-object v0, Ltwitter4j/TwitterMethod;->ADD_LIST_MEMBER:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->ADD_LIST_MEMBER:Ltwitter4j/TwitterMethod;

    .line 405
    sget-object v0, Ltwitter4j/TwitterMethod;->DELETE_LIST_MEMBER:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->DELETE_LIST_MEMBER:Ltwitter4j/TwitterMethod;

    .line 406
    sget-object v0, Ltwitter4j/TwitterMethod;->CHECK_LIST_MEMBERSHIP:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->CHECK_LIST_MEMBERSHIP:Ltwitter4j/TwitterMethod;

    .line 409
    sget-object v0, Ltwitter4j/TwitterMethod;->LIST_SUBSCRIBERS:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->LIST_SUBSCRIBERS:Ltwitter4j/TwitterMethod;

    .line 410
    sget-object v0, Ltwitter4j/TwitterMethod;->SUBSCRIBE_LIST:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->SUBSCRIBE_LIST:Ltwitter4j/TwitterMethod;

    .line 411
    sget-object v0, Ltwitter4j/TwitterMethod;->UNSUBSCRIBE_LIST:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->UNSUBSCRIBE_LIST:Ltwitter4j/TwitterMethod;

    .line 412
    sget-object v0, Ltwitter4j/TwitterMethod;->CHECK_LIST_SUBSCRIPTION:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->CHECK_LIST_SUBSCRIPTION:Ltwitter4j/TwitterMethod;

    .line 415
    sget-object v0, Ltwitter4j/TwitterMethod;->DIRECT_MESSAGES:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->DIRECT_MESSAGES:Ltwitter4j/TwitterMethod;

    .line 416
    sget-object v0, Ltwitter4j/TwitterMethod;->SENT_DIRECT_MESSAGES:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->SENT_DIRECT_MESSAGES:Ltwitter4j/TwitterMethod;

    .line 417
    sget-object v0, Ltwitter4j/TwitterMethod;->SEND_DIRECT_MESSAGE:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->SEND_DIRECT_MESSAGE:Ltwitter4j/TwitterMethod;

    .line 418
    sget-object v0, Ltwitter4j/TwitterMethod;->DESTROY_DIRECT_MESSAGES:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->DESTROY_DIRECT_MESSAGES:Ltwitter4j/TwitterMethod;

    .line 421
    sget-object v0, Ltwitter4j/TwitterMethod;->CREATE_FRIENDSHIP:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->CREATE_FRIENDSHIP:Ltwitter4j/TwitterMethod;

    .line 422
    sget-object v0, Ltwitter4j/TwitterMethod;->DESTROY_FRIENDSHIP:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->DESTROY_FRIENDSHIP:Ltwitter4j/TwitterMethod;

    .line 423
    sget-object v0, Ltwitter4j/TwitterMethod;->EXISTS_FRIENDSHIP:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->EXISTS_FRIENDSHIP:Ltwitter4j/TwitterMethod;

    .line 424
    sget-object v0, Ltwitter4j/TwitterMethod;->SHOW_FRIENDSHIP:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->SHOW_FRIENDSHIP:Ltwitter4j/TwitterMethod;

    .line 425
    sget-object v0, Ltwitter4j/TwitterMethod;->INCOMING_FRIENDSHIPS:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->INCOMING_FRIENDSHIP:Ltwitter4j/TwitterMethod;

    .line 426
    sget-object v0, Ltwitter4j/TwitterMethod;->OUTGOING_FRIENDSHIPS:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->OUTGOING_FRIENDSHIPS:Ltwitter4j/TwitterMethod;

    .line 429
    sget-object v0, Ltwitter4j/TwitterMethod;->FRIENDS_IDS:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->FRIENDS_IDS:Ltwitter4j/TwitterMethod;

    .line 430
    sget-object v0, Ltwitter4j/TwitterMethod;->FOLLOWERS_IDS:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->FOLLOWERS_IDS:Ltwitter4j/TwitterMethod;

    .line 434
    sget-object v0, Ltwitter4j/TwitterMethod;->RATE_LIMIT_STATUS:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->RATE_LIMIT_STATUS:Ltwitter4j/TwitterMethod;

    .line 435
    sget-object v0, Ltwitter4j/TwitterMethod;->UPDATE_DELIVERY_DEVICE:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->UPDATE_DELIVERY_DEVICE:Ltwitter4j/TwitterMethod;

    .line 436
    sget-object v0, Ltwitter4j/TwitterMethod;->UPDATE_PROFILE_COLORS:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->UPDATE_PROFILE_COLORS:Ltwitter4j/TwitterMethod;

    .line 437
    sget-object v0, Ltwitter4j/TwitterMethod;->UPDATE_PROFILE_IMAGE:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->UPDATE_PROFILE_IMAGE:Ltwitter4j/TwitterMethod;

    .line 438
    sget-object v0, Ltwitter4j/TwitterMethod;->UPDATE_PROFILE_BACKGROUND_IMAGE:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->UPDATE_PROFILE_BACKGROUND_IMAGE:Ltwitter4j/TwitterMethod;

    .line 439
    sget-object v0, Ltwitter4j/TwitterMethod;->UPDATE_PROFILE:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->UPDATE_PROFILE:Ltwitter4j/TwitterMethod;

    .line 442
    sget-object v0, Ltwitter4j/TwitterMethod;->FAVORITES:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->FAVORITES:Ltwitter4j/TwitterMethod;

    .line 443
    sget-object v0, Ltwitter4j/TwitterMethod;->CREATE_FAVORITE:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->CREATE_FAVORITE:Ltwitter4j/TwitterMethod;

    .line 444
    sget-object v0, Ltwitter4j/TwitterMethod;->DESTROY_FAVORITE:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->DESTROY_FAVORITE:Ltwitter4j/TwitterMethod;

    .line 447
    sget-object v0, Ltwitter4j/TwitterMethod;->ENABLE_NOTIFICATION:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->ENABLE_NOTIFICATION:Ltwitter4j/TwitterMethod;

    .line 448
    sget-object v0, Ltwitter4j/TwitterMethod;->DISABLE_NOTIFICATION:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->DISABLE_NOTIFICATION:Ltwitter4j/TwitterMethod;

    .line 451
    sget-object v0, Ltwitter4j/TwitterMethod;->CREATE_BLOCK:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->CREATE_BLOCK:Ltwitter4j/TwitterMethod;

    .line 452
    sget-object v0, Ltwitter4j/TwitterMethod;->DESTROY_BLOCK:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->DESTROY_BLOCK:Ltwitter4j/TwitterMethod;

    .line 453
    sget-object v0, Ltwitter4j/TwitterMethod;->EXISTS_BLOCK:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->EXISTS_BLOCK:Ltwitter4j/TwitterMethod;

    .line 454
    sget-object v0, Ltwitter4j/TwitterMethod;->BLOCKING_USERS:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->BLOCKING_USERS:Ltwitter4j/TwitterMethod;

    .line 455
    sget-object v0, Ltwitter4j/TwitterMethod;->BLOCKING_USERS_IDS:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->BLOCKING_USERS_IDS:Ltwitter4j/TwitterMethod;

    .line 458
    sget-object v0, Ltwitter4j/TwitterMethod;->REPORT_SPAM:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->REPORT_SPAM:Ltwitter4j/TwitterMethod;

    .line 467
    sget-object v0, Ltwitter4j/TwitterMethod;->AVAILABLE_TRENDS:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->AVAILABLE_TRENDS:Ltwitter4j/TwitterMethod;

    .line 468
    sget-object v0, Ltwitter4j/TwitterMethod;->LOCATION_TRENDS:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->LOCATION_TRENDS:Ltwitter4j/TwitterMethod;

    .line 471
    sget-object v0, Ltwitter4j/TwitterMethod;->NEAR_BY_PLACES:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->NEAR_BY_PLACES:Ltwitter4j/TwitterMethod;

    .line 472
    sget-object v0, Ltwitter4j/TwitterMethod;->REVERSE_GEO_CODE:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->REVERSE_GEO_CODE:Ltwitter4j/TwitterMethod;

    .line 473
    sget-object v0, Ltwitter4j/TwitterMethod;->GEO_DETAILS:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->GEO_DETAILS:Ltwitter4j/TwitterMethod;

    .line 476
    sget-object v0, Ltwitter4j/TwitterMethod;->TEST:Ltwitter4j/TwitterMethod;

    sput-object v0, Ltwitter4j/TwitterListener;->TEST:Ltwitter4j/TwitterMethod;

    return-void
.end method


# virtual methods
.method public abstract addedUserListMember(Ltwitter4j/UserList;)V
.end method

.method public abstract checkedUserListMembership(Ltwitter4j/User;)V
.end method

.method public abstract checkedUserListSubscription(Ltwitter4j/User;)V
.end method

.method public abstract createdBlock(Ltwitter4j/User;)V
.end method

.method public abstract createdFavorite(Ltwitter4j/Status;)V
.end method

.method public abstract createdFriendship(Ltwitter4j/User;)V
.end method

.method public abstract createdUserList(Ltwitter4j/UserList;)V
.end method

.method public abstract deletedUserListMember(Ltwitter4j/UserList;)V
.end method

.method public abstract destroyedBlock(Ltwitter4j/User;)V
.end method

.method public abstract destroyedDirectMessage(Ltwitter4j/DirectMessage;)V
.end method

.method public abstract destroyedFavorite(Ltwitter4j/Status;)V
.end method

.method public abstract destroyedFriendship(Ltwitter4j/User;)V
.end method

.method public abstract destroyedStatus(Ltwitter4j/Status;)V
.end method

.method public abstract destroyedUserList(Ltwitter4j/UserList;)V
.end method

.method public abstract disabledNotification(Ltwitter4j/User;)V
.end method

.method public abstract enabledNotification(Ltwitter4j/User;)V
.end method

.method public abstract gotAvailableTrends(Ltwitter4j/ResponseList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Location;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract gotBlockingUsers(Ltwitter4j/ResponseList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract gotBlockingUsersIDs(Ltwitter4j/IDs;)V
.end method

.method public abstract gotCurrentTrends(Ltwitter4j/Trends;)V
.end method

.method public abstract gotDailyTrends(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Trends;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract gotDirectMessages(Ltwitter4j/ResponseList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/DirectMessage;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract gotExistsBlock(Z)V
.end method

.method public abstract gotExistsFriendship(Z)V
.end method

.method public abstract gotFavorites(Ltwitter4j/ResponseList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract gotFollowersIDs(Ltwitter4j/IDs;)V
.end method

.method public abstract gotFollowersStatuses(Ltwitter4j/PagableResponseList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract gotFriendsIDs(Ltwitter4j/IDs;)V
.end method

.method public abstract gotFriendsStatuses(Ltwitter4j/PagableResponseList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract gotFriendsTimeline(Ltwitter4j/ResponseList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract gotGeoDetails(Ltwitter4j/Place;)V
.end method

.method public abstract gotHomeTimeline(Ltwitter4j/ResponseList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract gotIncomingFriendships(Ltwitter4j/IDs;)V
.end method

.method public abstract gotLocationTrends(Ltwitter4j/Trends;)V
.end method

.method public abstract gotMentions(Ltwitter4j/ResponseList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract gotNearByPlaces(Ltwitter4j/ResponseList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Place;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract gotOutgoingFriendships(Ltwitter4j/IDs;)V
.end method

.method public abstract gotPublicTimeline(Ltwitter4j/ResponseList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract gotRateLimitStatus(Ltwitter4j/RateLimitStatus;)V
.end method

.method public abstract gotRetweetedByMe(Ltwitter4j/ResponseList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract gotRetweetedToMe(Ltwitter4j/ResponseList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract gotRetweets(Ltwitter4j/ResponseList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract gotRetweetsOfMe(Ltwitter4j/ResponseList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract gotReverseGeoCode(Ltwitter4j/ResponseList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Place;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract gotSentDirectMessages(Ltwitter4j/ResponseList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/DirectMessage;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract gotShowFriendship(Ltwitter4j/Relationship;)V
.end method

.method public abstract gotShowStatus(Ltwitter4j/Status;)V
.end method

.method public abstract gotShowUserList(Ltwitter4j/UserList;)V
.end method

.method public abstract gotSuggestedUserCategories(Ltwitter4j/ResponseList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Category;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract gotTrends(Ltwitter4j/Trends;)V
.end method

.method public abstract gotUserDetail(Ltwitter4j/User;)V
.end method

.method public abstract gotUserListMembers(Ltwitter4j/PagableResponseList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract gotUserListMemberships(Ltwitter4j/PagableResponseList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/UserList;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract gotUserListStatuses(Ltwitter4j/ResponseList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract gotUserListSubscribers(Ltwitter4j/PagableResponseList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract gotUserListSubscriptions(Ltwitter4j/PagableResponseList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/UserList;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract gotUserLists(Ltwitter4j/PagableResponseList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/UserList;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract gotUserSuggestions(Ltwitter4j/ResponseList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract gotUserTimeline(Ltwitter4j/ResponseList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract gotWeeklyTrends(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Trends;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract lookedupUsers(Ltwitter4j/ResponseList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onException(Ltwitter4j/TwitterException;Ltwitter4j/TwitterMethod;)V
.end method

.method public abstract reportedSpam(Ltwitter4j/User;)V
.end method

.method public abstract retweetedStatus(Ltwitter4j/Status;)V
.end method

.method public abstract searched(Ltwitter4j/QueryResult;)V
.end method

.method public abstract searchedUser(Ltwitter4j/ResponseList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sentDirectMessage(Ltwitter4j/DirectMessage;)V
.end method

.method public abstract subscribedUserList(Ltwitter4j/UserList;)V
.end method

.method public abstract tested(Z)V
.end method

.method public abstract unsubscribedUserList(Ltwitter4j/UserList;)V
.end method

.method public abstract updatedDeliveryDevice(Ltwitter4j/User;)V
.end method

.method public abstract updatedProfile(Ltwitter4j/User;)V
.end method

.method public abstract updatedProfileBackgroundImage(Ltwitter4j/User;)V
.end method

.method public abstract updatedProfileColors(Ltwitter4j/User;)V
.end method

.method public abstract updatedProfileImage(Ltwitter4j/User;)V
.end method

.method public abstract updatedStatus(Ltwitter4j/Status;)V
.end method

.method public abstract updatedUserList(Ltwitter4j/UserList;)V
.end method