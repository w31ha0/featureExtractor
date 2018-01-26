.class final Ltwitter4j/UserJSONImpl;
.super Ltwitter4j/TwitterResponseImpl;
.source "UserJSONImpl.java"

# interfaces
.implements Ltwitter4j/User;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x581124472812f726L


# instance fields
.field private createdAt:Ljava/util/Date;

.field private description:Ljava/lang/String;

.field private favouritesCount:I

.field private followersCount:I

.field private friendsCount:I

.field private id:I

.field private isContributorsEnabled:Z

.field private isGeoEnabled:Z

.field private isProtected:Z

.field private isVerified:Z

.field private lang:Ljava/lang/String;

.field private location:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private profileBackgroundColor:Ljava/lang/String;

.field private profileBackgroundImageUrl:Ljava/lang/String;

.field private profileBackgroundTiled:Z

.field private profileImageUrl:Ljava/lang/String;

.field private profileLinkColor:Ljava/lang/String;

.field private profileSidebarBorderColor:Ljava/lang/String;

.field private profileSidebarFillColor:Ljava/lang/String;

.field private profileTextColor:Ljava/lang/String;

.field private screenName:Ljava/lang/String;

.field private status:Ltwitter4j/Status;

.field private statusesCount:I

.field private timeZone:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private utcOffset:I


# direct methods
.method constructor <init>(Ltwitter4j/internal/http/HttpResponse;)V
    .locals 1
    .param p1, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0, p1}, Ltwitter4j/TwitterResponseImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    .line 79
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpResponse;->asJSONObject()Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/UserJSONImpl;->init(Ltwitter4j/internal/org/json/JSONObject;)V

    .line 80
    return-void
.end method

.method constructor <init>(Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 0
    .param p1, "json"    # Ltwitter4j/internal/org/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0}, Ltwitter4j/TwitterResponseImpl;-><init>()V

    .line 84
    invoke-direct {p0, p1}, Ltwitter4j/UserJSONImpl;->init(Ltwitter4j/internal/org/json/JSONObject;)V

    .line 85
    return-void
.end method

.method static createPagableUserList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/PagableResponseList;
    .locals 9
    .param p0, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/internal/http/HttpResponse;",
            ")",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 389
    :try_start_0
    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->asJSONObject()Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v1

    .line 390
    .local v1, "json":Ltwitter4j/internal/org/json/JSONObject;
    const-string v7, "users"

    invoke-virtual {v1, v7}, Ltwitter4j/internal/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v3

    .line 391
    .local v3, "list":Ltwitter4j/internal/org/json/JSONArray;
    invoke-virtual {v3}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v4

    .line 392
    .local v4, "size":I
    new-instance v6, Ltwitter4j/PagableResponseList;

    invoke-direct {v6, v4, v1, p0}, Ltwitter4j/PagableResponseList;-><init>(ILtwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/http/HttpResponse;)V

    .line 394
    .local v6, "users":Ltwitter4j/PagableResponseList;, "Ltwitter4j/PagableResponseList<Ltwitter4j/User;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 395
    new-instance v7, Ltwitter4j/UserJSONImpl;

    invoke-virtual {v3, v0}, Ltwitter4j/internal/org/json/JSONArray;->getJSONObject(I)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v8

    invoke-direct {v7, v8}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    invoke-virtual {v6, v7}, Ltwitter4j/PagableResponseList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_1

    .line 394
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 398
    .end local v0    # "i":I
    .end local v1    # "json":Ltwitter4j/internal/org/json/JSONObject;
    .end local v3    # "list":Ltwitter4j/internal/org/json/JSONArray;
    .end local v4    # "size":I
    .end local v6    # "users":Ltwitter4j/PagableResponseList;, "Ltwitter4j/PagableResponseList<Ltwitter4j/User;>;"
    :catch_0
    move-exception v2

    .line 399
    .local v2, "jsone":Ltwitter4j/internal/org/json/JSONException;
    new-instance v7, Ltwitter4j/TwitterException;

    invoke-direct {v7, v2}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v7

    .line 400
    .end local v2    # "jsone":Ltwitter4j/internal/org/json/JSONException;
    :catch_1
    move-exception v5

    .line 401
    .local v5, "te":Ltwitter4j/TwitterException;
    throw v5

    .line 397
    .end local v5    # "te":Ltwitter4j/TwitterException;
    .restart local v0    # "i":I
    .restart local v1    # "json":Ltwitter4j/internal/org/json/JSONObject;
    .restart local v3    # "list":Ltwitter4j/internal/org/json/JSONArray;
    .restart local v4    # "size":I
    .restart local v6    # "users":Ltwitter4j/PagableResponseList;, "Ltwitter4j/PagableResponseList<Ltwitter4j/User;>;"
    :cond_0
    return-object v6
.end method

.method static createUserList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;
    .locals 1
    .param p0, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/internal/http/HttpResponse;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 405
    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->asJSONArray()Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v0

    invoke-static {v0, p0}, Ltwitter4j/UserJSONImpl;->createUserList(Ltwitter4j/internal/org/json/JSONArray;Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method static createUserList(Ltwitter4j/internal/org/json/JSONArray;Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;
    .locals 7
    .param p0, "list"    # Ltwitter4j/internal/org/json/JSONArray;
    .param p1, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/internal/org/json/JSONArray;",
            "Ltwitter4j/internal/http/HttpResponse;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 410
    :try_start_0
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v2

    .line 411
    .local v2, "size":I
    new-instance v4, Ltwitter4j/ResponseList;

    invoke-direct {v4, v2, p1}, Ltwitter4j/ResponseList;-><init>(ILtwitter4j/internal/http/HttpResponse;)V

    .line 413
    .local v4, "users":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/User;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 414
    new-instance v5, Ltwitter4j/UserJSONImpl;

    invoke-virtual {p0, v0}, Ltwitter4j/internal/org/json/JSONArray;->getJSONObject(I)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v6

    invoke-direct {v5, v6}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    invoke-virtual {v4, v5}, Ltwitter4j/ResponseList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_1

    .line 413
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 417
    .end local v0    # "i":I
    .end local v2    # "size":I
    .end local v4    # "users":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/User;>;"
    :catch_0
    move-exception v1

    .line 418
    .local v1, "jsone":Ltwitter4j/internal/org/json/JSONException;
    new-instance v5, Ltwitter4j/TwitterException;

    invoke-direct {v5, v1}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v5

    .line 419
    .end local v1    # "jsone":Ltwitter4j/internal/org/json/JSONException;
    :catch_1
    move-exception v3

    .line 420
    .local v3, "te":Ltwitter4j/TwitterException;
    throw v3

    .line 416
    .end local v3    # "te":Ltwitter4j/TwitterException;
    .restart local v0    # "i":I
    .restart local v2    # "size":I
    .restart local v4    # "users":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/User;>;"
    :cond_0
    return-object v4
.end method

.method private init(Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 5
    .param p1, "json"    # Ltwitter4j/internal/org/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 89
    :try_start_0
    const-string v2, "id"

    invoke-static {v2, p1}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)I

    move-result v2

    iput v2, p0, Ltwitter4j/UserJSONImpl;->id:I

    .line 90
    const-string v2, "name"

    invoke-static {v2, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/UserJSONImpl;->name:Ljava/lang/String;

    .line 91
    const-string v2, "screen_name"

    invoke-static {v2, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/UserJSONImpl;->screenName:Ljava/lang/String;

    .line 92
    const-string v2, "location"

    invoke-static {v2, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/UserJSONImpl;->location:Ljava/lang/String;

    .line 93
    const-string v2, "description"

    invoke-static {v2, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/UserJSONImpl;->description:Ljava/lang/String;

    .line 94
    const-string v2, "contributors_enabled"

    invoke-static {v2, p1}, Ltwitter4j/ParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Z

    move-result v2

    iput-boolean v2, p0, Ltwitter4j/UserJSONImpl;->isContributorsEnabled:Z

    .line 95
    const-string v2, "profile_image_url"

    invoke-static {v2, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/UserJSONImpl;->profileImageUrl:Ljava/lang/String;

    .line 96
    const-string v2, "url"

    invoke-static {v2, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/UserJSONImpl;->url:Ljava/lang/String;

    .line 97
    const-string v2, "protected"

    invoke-static {v2, p1}, Ltwitter4j/ParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Z

    move-result v2

    iput-boolean v2, p0, Ltwitter4j/UserJSONImpl;->isProtected:Z

    .line 98
    const-string v2, "geo_enabled"

    invoke-static {v2, p1}, Ltwitter4j/ParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Z

    move-result v2

    iput-boolean v2, p0, Ltwitter4j/UserJSONImpl;->isGeoEnabled:Z

    .line 99
    const-string v2, "verified"

    invoke-static {v2, p1}, Ltwitter4j/ParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Z

    move-result v2

    iput-boolean v2, p0, Ltwitter4j/UserJSONImpl;->isVerified:Z

    .line 100
    const-string v2, "followers_count"

    invoke-static {v2, p1}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)I

    move-result v2

    iput v2, p0, Ltwitter4j/UserJSONImpl;->followersCount:I

    .line 102
    const-string v2, "profile_background_color"

    invoke-static {v2, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/UserJSONImpl;->profileBackgroundColor:Ljava/lang/String;

    .line 103
    const-string v2, "profile_text_color"

    invoke-static {v2, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/UserJSONImpl;->profileTextColor:Ljava/lang/String;

    .line 104
    const-string v2, "profile_link_color"

    invoke-static {v2, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/UserJSONImpl;->profileLinkColor:Ljava/lang/String;

    .line 105
    const-string v2, "profile_sidebar_fill_color"

    invoke-static {v2, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/UserJSONImpl;->profileSidebarFillColor:Ljava/lang/String;

    .line 106
    const-string v2, "profile_sidebar_border_color"

    invoke-static {v2, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/UserJSONImpl;->profileSidebarBorderColor:Ljava/lang/String;

    .line 107
    const-string v2, "friends_count"

    invoke-static {v2, p1}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)I

    move-result v2

    iput v2, p0, Ltwitter4j/UserJSONImpl;->friendsCount:I

    .line 108
    const-string v2, "created_at"

    const-string v3, "EEE MMM dd HH:mm:ss z yyyy"

    invoke-static {v2, p1, v3}, Ltwitter4j/ParseUtil;->getDate(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/UserJSONImpl;->createdAt:Ljava/util/Date;

    .line 109
    const-string v2, "favourites_count"

    invoke-static {v2, p1}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)I

    move-result v2

    iput v2, p0, Ltwitter4j/UserJSONImpl;->favouritesCount:I

    .line 110
    const-string v2, "utc_offset"

    invoke-static {v2, p1}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)I

    move-result v2

    iput v2, p0, Ltwitter4j/UserJSONImpl;->utcOffset:I

    .line 111
    const-string v2, "time_zone"

    invoke-static {v2, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/UserJSONImpl;->timeZone:Ljava/lang/String;

    .line 112
    const-string v2, "profile_background_image_url"

    invoke-static {v2, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/UserJSONImpl;->profileBackgroundImageUrl:Ljava/lang/String;

    .line 113
    const-string v2, "profile_background_tile"

    invoke-static {v2, p1}, Ltwitter4j/ParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Z

    move-result v2

    iput-boolean v2, p0, Ltwitter4j/UserJSONImpl;->profileBackgroundTiled:Z

    .line 114
    const-string v2, "lang"

    invoke-static {v2, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/UserJSONImpl;->lang:Ljava/lang/String;

    .line 115
    const-string v2, "statuses_count"

    invoke-static {v2, p1}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)I

    move-result v2

    iput v2, p0, Ltwitter4j/UserJSONImpl;->statusesCount:I

    .line 116
    const-string v2, "status"

    invoke-virtual {p1, v2}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 117
    const-string v2, "status"

    invoke-virtual {p1, v2}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v1

    .line 118
    .local v1, "statusJSON":Ltwitter4j/internal/org/json/JSONObject;
    new-instance v2, Ltwitter4j/StatusJSONImpl;

    invoke-direct {v2, v1}, Ltwitter4j/StatusJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    iput-object v2, p0, Ltwitter4j/UserJSONImpl;->status:Ltwitter4j/Status;
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v1    # "statusJSON":Ltwitter4j/internal/org/json/JSONObject;
    :cond_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "jsone":Ltwitter4j/internal/org/json/JSONException;
    new-instance v2, Ltwitter4j/TwitterException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Ltwitter4j/internal/org/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p1}, Ltwitter4j/internal/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 44
    check-cast p1, Ltwitter4j/User;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ltwitter4j/UserJSONImpl;->compareTo(Ltwitter4j/User;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ltwitter4j/User;)I
    .locals 2
    .param p1, "that"    # Ltwitter4j/User;

    .prologue
    .line 126
    iget v0, p0, Ltwitter4j/UserJSONImpl;->id:I

    invoke-interface {p1}, Ltwitter4j/User;->getId()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 431
    if-nez p1, :cond_1

    move v0, v1

    .line 437
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 434
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    if-eq p0, p1, :cond_0

    .line 437
    instance-of v2, p1, Ltwitter4j/User;

    if-eqz v2, :cond_2

    check-cast p1, Ltwitter4j/User;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-interface {p1}, Ltwitter4j/User;->getId()I

    move-result v2

    iget v3, p0, Ltwitter4j/UserJSONImpl;->id:I

    if-eq v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFavouritesCount()I
    .locals 1

    .prologue
    .line 328
    iget v0, p0, Ltwitter4j/UserJSONImpl;->favouritesCount:I

    return v0
.end method

.method public getFollowersCount()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Ltwitter4j/UserJSONImpl;->followersCount:I

    return v0
.end method

.method public getFriendsCount()I
    .locals 1

    .prologue
    .line 306
    iget v0, p0, Ltwitter4j/UserJSONImpl;->friendsCount:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Ltwitter4j/UserJSONImpl;->id:I

    return v0
.end method

.method public getLang()Ljava/lang/String;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->lang:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileBackgroundColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->profileBackgroundColor:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileBackgroundImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->profileBackgroundImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileImageURL()Ljava/net/URL;
    .locals 3

    .prologue
    .line 176
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Ltwitter4j/UserJSONImpl;->profileImageUrl:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_0
    return-object v1

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "ex":Ljava/net/MalformedURLException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getProfileLinkColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->profileLinkColor:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileSidebarBorderColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->profileSidebarBorderColor:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileSidebarFillColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->profileSidebarFillColor:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileTextColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->profileTextColor:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->screenName:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ltwitter4j/Status;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->status:Ltwitter4j/Status;

    return-object v0
.end method

.method public getStatusCreatedAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->status:Ltwitter4j/Status;

    invoke-interface {v0}, Ltwitter4j/Status;->getCreatedAt()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getStatusId()J
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->status:Ltwitter4j/Status;

    invoke-interface {v0}, Ltwitter4j/Status;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStatusInReplyToScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->status:Ltwitter4j/Status;

    invoke-interface {v0}, Ltwitter4j/Status;->getInReplyToScreenName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatusInReplyToStatusId()J
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->status:Ltwitter4j/Status;

    invoke-interface {v0}, Ltwitter4j/Status;->getInReplyToStatusId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStatusInReplyToUserId()I
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->status:Ltwitter4j/Status;

    invoke-interface {v0}, Ltwitter4j/Status;->getInReplyToUserId()I

    move-result v0

    return v0
.end method

.method public getStatusSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->status:Ltwitter4j/Status;

    invoke-interface {v0}, Ltwitter4j/Status;->getSource()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatusText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->status:Ltwitter4j/Status;

    invoke-interface {v0}, Ltwitter4j/Status;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatusesCount()I
    .locals 1

    .prologue
    .line 370
    iget v0, p0, Ltwitter4j/UserJSONImpl;->statusesCount:I

    return v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->timeZone:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 3

    .prologue
    .line 187
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Ltwitter4j/UserJSONImpl;->url:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_0
    return-object v1

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "ex":Ljava/net/MalformedURLException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUtcOffset()I
    .locals 1

    .prologue
    .line 335
    iget v0, p0, Ltwitter4j/UserJSONImpl;->utcOffset:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 426
    iget v0, p0, Ltwitter4j/UserJSONImpl;->id:I

    return v0
.end method

.method public isContributorsEnabled()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Ltwitter4j/UserJSONImpl;->isContributorsEnabled:Z

    return v0
.end method

.method public isGeoEnabled()Z
    .locals 1

    .prologue
    .line 377
    iget-boolean v0, p0, Ltwitter4j/UserJSONImpl;->isGeoEnabled:Z

    return v0
.end method

.method public isProfileBackgroundTiled()Z
    .locals 1

    .prologue
    .line 356
    iget-boolean v0, p0, Ltwitter4j/UserJSONImpl;->profileBackgroundTiled:Z

    return v0
.end method

.method public isProtected()Z
    .locals 1

    .prologue
    .line 197
    iget-boolean v0, p0, Ltwitter4j/UserJSONImpl;->isProtected:Z

    return v0
.end method

.method public isStatusFavorited()Z
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->status:Ltwitter4j/Status;

    invoke-interface {v0}, Ltwitter4j/Status;->isFavorited()Z

    move-result v0

    return v0
.end method

.method public isStatusTruncated()Z
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->status:Ltwitter4j/Status;

    invoke-interface {v0}, Ltwitter4j/Status;->isTruncated()Z

    move-result v0

    return v0
.end method

.method public isVerified()Z
    .locals 1

    .prologue
    .line 384
    iget-boolean v0, p0, Ltwitter4j/UserJSONImpl;->isVerified:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 442
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "UserJSONImpl{, id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/UserJSONImpl;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/UserJSONImpl;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", screenName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/UserJSONImpl;->screenName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", location=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/UserJSONImpl;->location:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", description=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/UserJSONImpl;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", profileImageUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/UserJSONImpl;->profileImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/UserJSONImpl;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", isProtected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/UserJSONImpl;->isProtected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", followersCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/UserJSONImpl;->followersCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/UserJSONImpl;->status:Ltwitter4j/Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", profileBackgroundColor=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/UserJSONImpl;->profileBackgroundColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", profileTextColor=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/UserJSONImpl;->profileTextColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", profileLinkColor=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/UserJSONImpl;->profileLinkColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", profileSidebarFillColor=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/UserJSONImpl;->profileSidebarFillColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", profileSidebarBorderColor=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/UserJSONImpl;->profileSidebarBorderColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", friendsCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/UserJSONImpl;->friendsCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/UserJSONImpl;->createdAt:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", favouritesCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/UserJSONImpl;->favouritesCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", utcOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/UserJSONImpl;->utcOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", timeZone=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/UserJSONImpl;->timeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", profileBackgroundImageUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/UserJSONImpl;->profileBackgroundImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", profileBackgroundTile=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/UserJSONImpl;->profileBackgroundTiled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", statusesCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/UserJSONImpl;->statusesCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", geoEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/UserJSONImpl;->isGeoEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", verified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/UserJSONImpl;->isVerified:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
