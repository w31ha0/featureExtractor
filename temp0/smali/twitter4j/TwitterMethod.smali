.class public final Ltwitter4j/TwitterMethod;
.super Ljava/lang/Object;
.source "TwitterMethod.java"

# interfaces
.implements Ljava/io/Serializable;


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

.field public static final DESTROY_USER_LIST:Ltwitter4j/TwitterMethod;

.field public static final DIRECT_MESSAGES:Ltwitter4j/TwitterMethod;

.field public static final DISABLE_NOTIFICATION:Ltwitter4j/TwitterMethod;

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

.field public static final INCOMING_FRIENDSHIPS:Ltwitter4j/TwitterMethod;

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

.field private static final instances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ltwitter4j/TwitterMethod;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x502ab97a9adf6632L


# instance fields
.field name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ltwitter4j/TwitterMethod;->instances:Ljava/util/Map;

    .line 89
    const-string v0, "SEARCH"

    invoke-static {v0}, Ltwitter4j/TwitterMethod;->getInstance(Ljava/lang/String;)Ltwitter4j/TwitterMethod;

    move-result-object v0

    sput-object v0, Ltwitter4j/TwitterMethod;->SEARCH:Ltwitter4j/TwitterMethod;

    .line 91
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "TRENDS"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->TRENDS:Ltwitter4j/TwitterMethod;

    .line 92
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "CURRENT_TRENDS"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->CURRENT_TRENDS:Ltwitter4j/TwitterMethod;

    .line 93
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "DAILY_TRENDS"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->DAILY_TRENDS:Ltwitter4j/TwitterMethod;

    .line 94
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "WEEKLY_TRENDS"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->WEEKLY_TRENDS:Ltwitter4j/TwitterMethod;

    .line 97
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "PUBLIC_TIMELINE"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->PUBLIC_TIMELINE:Ltwitter4j/TwitterMethod;

    .line 98
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "HOME_TIMELINE"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->HOME_TIMELINE:Ltwitter4j/TwitterMethod;

    .line 99
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "FRIENDS_TIMELINE"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->FRIENDS_TIMELINE:Ltwitter4j/TwitterMethod;

    .line 100
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "USER_TIMELINE"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->USER_TIMELINE:Ltwitter4j/TwitterMethod;

    .line 101
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "MENTIONS"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->MENTIONS:Ltwitter4j/TwitterMethod;

    .line 102
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "RETWEETED_BY_ME"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->RETWEETED_BY_ME:Ltwitter4j/TwitterMethod;

    .line 103
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "RETWEETED_TO_ME"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->RETWEETED_TO_ME:Ltwitter4j/TwitterMethod;

    .line 104
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "RETWEETS_OF_ME"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->RETWEETS_OF_ME:Ltwitter4j/TwitterMethod;

    .line 107
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "SHOW_STATUS"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->SHOW_STATUS:Ltwitter4j/TwitterMethod;

    .line 108
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "UPDATE_STATUS"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->UPDATE_STATUS:Ltwitter4j/TwitterMethod;

    .line 109
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "DESTROY_STATUS"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->DESTROY_STATUS:Ltwitter4j/TwitterMethod;

    .line 110
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "RETWEET_STATUS"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->RETWEET_STATUS:Ltwitter4j/TwitterMethod;

    .line 111
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "RETWEETS"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->RETWEETS:Ltwitter4j/TwitterMethod;

    .line 114
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "SHOW_USER"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->SHOW_USER:Ltwitter4j/TwitterMethod;

    .line 115
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "LOOKUP_USERS"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->LOOKUP_USERS:Ltwitter4j/TwitterMethod;

    .line 116
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "SEARCH_USERS"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->SEARCH_USERS:Ltwitter4j/TwitterMethod;

    .line 117
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "SUGGESTED_USER_CATEGORIES"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->SUGGESTED_USER_CATEGORIES:Ltwitter4j/TwitterMethod;

    .line 118
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "USER_SUGGESTIONS"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->USER_SUGGESTIONS:Ltwitter4j/TwitterMethod;

    .line 119
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "FRIENDS_STATUSES"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->FRIENDS_STATUSES:Ltwitter4j/TwitterMethod;

    .line 120
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "FOLLOWERS_STATUSES"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->FOLLOWERS_STATUSES:Ltwitter4j/TwitterMethod;

    .line 123
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "CREATE_USER_LIST"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->CREATE_USER_LIST:Ltwitter4j/TwitterMethod;

    .line 124
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "UPDATE_USER_LIST"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->UPDATE_USER_LIST:Ltwitter4j/TwitterMethod;

    .line 125
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "USER_LISTS"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->USER_LISTS:Ltwitter4j/TwitterMethod;

    .line 126
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "SHOW_USER_LIST"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->SHOW_USER_LIST:Ltwitter4j/TwitterMethod;

    .line 127
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "DELETE_USER_LIST"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->DESTROY_USER_LIST:Ltwitter4j/TwitterMethod;

    .line 128
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "USER_LIST_STATUSES"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->USER_LIST_STATUSES:Ltwitter4j/TwitterMethod;

    .line 129
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "USER_LIST_MEMBERSHIPS"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->USER_LIST_MEMBERSHIPS:Ltwitter4j/TwitterMethod;

    .line 130
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "USER_LIST_SUBSCRIPTIONS"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->USER_LIST_SUBSCRIPTIONS:Ltwitter4j/TwitterMethod;

    .line 133
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "LIST_MEMBERS"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->LIST_MEMBERS:Ltwitter4j/TwitterMethod;

    .line 134
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "ADD_LIST_MEMBER"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->ADD_LIST_MEMBER:Ltwitter4j/TwitterMethod;

    .line 135
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "DELETE_LIST_MEMBER"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->DELETE_LIST_MEMBER:Ltwitter4j/TwitterMethod;

    .line 136
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "CHECK_LIST_MEMBERSHIP"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->CHECK_LIST_MEMBERSHIP:Ltwitter4j/TwitterMethod;

    .line 139
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "LIST_SUBSCRIBERS"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->LIST_SUBSCRIBERS:Ltwitter4j/TwitterMethod;

    .line 140
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "SUBSCRIBE_LIST"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->SUBSCRIBE_LIST:Ltwitter4j/TwitterMethod;

    .line 141
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "UNSUBSCRIBE_LIST"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->UNSUBSCRIBE_LIST:Ltwitter4j/TwitterMethod;

    .line 142
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "CHECK_LIST_SUBSCRIPTION"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->CHECK_LIST_SUBSCRIPTION:Ltwitter4j/TwitterMethod;

    .line 145
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "DIRECT_MESSAGES"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->DIRECT_MESSAGES:Ltwitter4j/TwitterMethod;

    .line 146
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "SENT_DIRECT_MESSAGES"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->SENT_DIRECT_MESSAGES:Ltwitter4j/TwitterMethod;

    .line 147
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "SEND_DIRECT_MESSAGE"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->SEND_DIRECT_MESSAGE:Ltwitter4j/TwitterMethod;

    .line 148
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "DESTROY_DIRECT_MESSAGES"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->DESTROY_DIRECT_MESSAGES:Ltwitter4j/TwitterMethod;

    .line 151
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "CREATE_FRIENDSHIP"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->CREATE_FRIENDSHIP:Ltwitter4j/TwitterMethod;

    .line 152
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "DESTROY_FRIENDSHIP"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->DESTROY_FRIENDSHIP:Ltwitter4j/TwitterMethod;

    .line 153
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "EXISTS_FRIENDSHIP"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->EXISTS_FRIENDSHIP:Ltwitter4j/TwitterMethod;

    .line 154
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "SHOW_FRIENDSHIP"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->SHOW_FRIENDSHIP:Ltwitter4j/TwitterMethod;

    .line 155
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "INCOMING_FRIENDSHIPS"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->INCOMING_FRIENDSHIPS:Ltwitter4j/TwitterMethod;

    .line 156
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "OUTGOING_FRIENDSHIPS"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->OUTGOING_FRIENDSHIPS:Ltwitter4j/TwitterMethod;

    .line 159
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "FRIENDS_IDS"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->FRIENDS_IDS:Ltwitter4j/TwitterMethod;

    .line 160
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "FOLLOWERS_IDS"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->FOLLOWERS_IDS:Ltwitter4j/TwitterMethod;

    .line 164
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "RATE_LIMIT_STATUS"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->RATE_LIMIT_STATUS:Ltwitter4j/TwitterMethod;

    .line 165
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "UPDATE_DELIVERY_DEVICE"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->UPDATE_DELIVERY_DEVICE:Ltwitter4j/TwitterMethod;

    .line 166
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "UPDATE_PROFILE_COLORS"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->UPDATE_PROFILE_COLORS:Ltwitter4j/TwitterMethod;

    .line 167
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "UPDATE_PROFILE_IMAGE"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->UPDATE_PROFILE_IMAGE:Ltwitter4j/TwitterMethod;

    .line 168
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "UPDATE_PROFILE_BACKGROUND_IMAGE"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->UPDATE_PROFILE_BACKGROUND_IMAGE:Ltwitter4j/TwitterMethod;

    .line 169
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "UPDATE_PROFILE"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->UPDATE_PROFILE:Ltwitter4j/TwitterMethod;

    .line 172
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "FAVORITES"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->FAVORITES:Ltwitter4j/TwitterMethod;

    .line 173
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "CREATE_FAVORITE"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->CREATE_FAVORITE:Ltwitter4j/TwitterMethod;

    .line 174
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "DESTROY_FAVORITE"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->DESTROY_FAVORITE:Ltwitter4j/TwitterMethod;

    .line 177
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "ENABLE_NOTIFICATION"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->ENABLE_NOTIFICATION:Ltwitter4j/TwitterMethod;

    .line 178
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "DISABLE_NOTIFICATION"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->DISABLE_NOTIFICATION:Ltwitter4j/TwitterMethod;

    .line 181
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "CREATE_BLOCK"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->CREATE_BLOCK:Ltwitter4j/TwitterMethod;

    .line 182
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "DESTROY_BLOCK"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->DESTROY_BLOCK:Ltwitter4j/TwitterMethod;

    .line 183
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "EXISTS_BLOCK"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->EXISTS_BLOCK:Ltwitter4j/TwitterMethod;

    .line 184
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "BLOCKING_USERS"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->BLOCKING_USERS:Ltwitter4j/TwitterMethod;

    .line 185
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "BLOCKING_USERS_IDS"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->BLOCKING_USERS_IDS:Ltwitter4j/TwitterMethod;

    .line 188
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "REPORT_SPAM"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->REPORT_SPAM:Ltwitter4j/TwitterMethod;

    .line 197
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "AVAILABLE_TRENDS"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->AVAILABLE_TRENDS:Ltwitter4j/TwitterMethod;

    .line 198
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "LOCATION_TRENDS"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->LOCATION_TRENDS:Ltwitter4j/TwitterMethod;

    .line 201
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "NEAR_BY_PLACES"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->NEAR_BY_PLACES:Ltwitter4j/TwitterMethod;

    .line 202
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "REVERSE_GEO_CODE"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->REVERSE_GEO_CODE:Ltwitter4j/TwitterMethod;

    .line 203
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "GEO_DETAILS"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->GEO_DETAILS:Ltwitter4j/TwitterMethod;

    .line 206
    new-instance v0, Ltwitter4j/TwitterMethod;

    const-string v1, "TEST"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/TwitterMethod;->TEST:Ltwitter4j/TwitterMethod;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Ltwitter4j/TwitterMethod;->name:Ljava/lang/String;

    .line 46
    sget-object v0, Ltwitter4j/TwitterMethod;->instances:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    return-void
.end method

.method private static getInstance(Ljava/lang/String;)Ltwitter4j/TwitterMethod;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 80
    sget-object v0, Ltwitter4j/TwitterMethod;->instances:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltwitter4j/TwitterMethod;

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Ltwitter4j/TwitterMethod;->name:Ljava/lang/String;

    invoke-static {v0}, Ltwitter4j/TwitterMethod;->getInstance(Ljava/lang/String;)Ltwitter4j/TwitterMethod;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 57
    if-ne p0, p1, :cond_1

    .line 64
    :cond_0
    :goto_0
    return v1

    .line 58
    :cond_1
    instance-of v3, p1, Ltwitter4j/TwitterMethod;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 60
    check-cast v0, Ltwitter4j/TwitterMethod;

    .line 62
    .local v0, "that":Ltwitter4j/TwitterMethod;
    iget-object v3, p0, Ltwitter4j/TwitterMethod;->name:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/TwitterMethod;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Ltwitter4j/TwitterMethod;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Ltwitter4j/TwitterMethod;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Method{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterMethod;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
