.class final Ltwitter4j/StatusJSONImpl;
.super Ltwitter4j/TwitterResponseImpl;
.source "StatusJSONImpl.java"

# interfaces
.implements Ltwitter4j/Status;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1650c3edbf9bb2a0L


# instance fields
.field private contributors:[Ljava/lang/String;

.field private createdAt:Ljava/util/Date;

.field private geoLocation:Ltwitter4j/GeoLocation;

.field private id:J

.field private inReplyToScreenName:Ljava/lang/String;

.field private inReplyToStatusId:J

.field private inReplyToUserId:I

.field private isFavorited:Z

.field private isTruncated:Z

.field private place:Ltwitter4j/Place;

.field private retweetedStatus:Ltwitter4j/Status;

.field private source:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private user:Ltwitter4j/User;


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
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1}, Ltwitter4j/TwitterResponseImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    .line 58
    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    .line 59
    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->place:Ltwitter4j/Place;

    .line 217
    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->user:Ltwitter4j/User;

    .line 68
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpResponse;->asJSONObject()Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/StatusJSONImpl;->init(Ltwitter4j/internal/org/json/JSONObject;)V

    .line 69
    return-void
.end method

.method constructor <init>(Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 1
    .param p1, "json"    # Ltwitter4j/internal/org/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;,
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Ltwitter4j/TwitterResponseImpl;-><init>()V

    .line 58
    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    .line 59
    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->place:Ltwitter4j/Place;

    .line 217
    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->user:Ltwitter4j/User;

    .line 73
    invoke-direct {p0, p1}, Ltwitter4j/StatusJSONImpl;->init(Ltwitter4j/internal/org/json/JSONObject;)V

    .line 74
    return-void
.end method

.method static createStatusList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;
    .locals 8
    .param p0, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/internal/http/HttpResponse;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 242
    :try_start_0
    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->asJSONArray()Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v2

    .line 243
    .local v2, "list":Ltwitter4j/internal/org/json/JSONArray;
    invoke-virtual {v2}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v3

    .line 244
    .local v3, "size":I
    new-instance v4, Ltwitter4j/ResponseList;

    invoke-direct {v4, v3, p0}, Ltwitter4j/ResponseList;-><init>(ILtwitter4j/internal/http/HttpResponse;)V

    .line 245
    .local v4, "statuses":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 246
    new-instance v6, Ltwitter4j/StatusJSONImpl;

    invoke-virtual {v2, v0}, Ltwitter4j/internal/org/json/JSONArray;->getJSONObject(I)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v7

    invoke-direct {v6, v7}, Ltwitter4j/StatusJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    invoke-virtual {v4, v6}, Ltwitter4j/ResponseList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_1

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 249
    .end local v0    # "i":I
    .end local v2    # "list":Ltwitter4j/internal/org/json/JSONArray;
    .end local v3    # "size":I
    .end local v4    # "statuses":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    :catch_0
    move-exception v1

    .line 250
    .local v1, "jsone":Ltwitter4j/internal/org/json/JSONException;
    new-instance v6, Ltwitter4j/TwitterException;

    invoke-direct {v6, v1}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v6

    .line 251
    .end local v1    # "jsone":Ltwitter4j/internal/org/json/JSONException;
    :catch_1
    move-exception v5

    .line 252
    .local v5, "te":Ltwitter4j/TwitterException;
    throw v5

    .line 248
    .end local v5    # "te":Ltwitter4j/TwitterException;
    .restart local v0    # "i":I
    .restart local v2    # "list":Ltwitter4j/internal/org/json/JSONArray;
    .restart local v3    # "size":I
    .restart local v4    # "statuses":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    :cond_0
    return-object v4
.end method

.method private init(Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 7
    .param p1, "json"    # Ltwitter4j/internal/org/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 77
    const-string v3, "id"

    invoke-static {v3, p1}, Ltwitter4j/ParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)J

    move-result-wide v3

    iput-wide v3, p0, Ltwitter4j/StatusJSONImpl;->id:J

    .line 78
    const-string v3, "text"

    invoke-static {v3, p1}, Ltwitter4j/ParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ltwitter4j/StatusJSONImpl;->text:Ljava/lang/String;

    .line 79
    const-string v3, "source"

    invoke-static {v3, p1}, Ltwitter4j/ParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ltwitter4j/StatusJSONImpl;->source:Ljava/lang/String;

    .line 80
    const-string v3, "created_at"

    invoke-static {v3, p1}, Ltwitter4j/ParseUtil;->getDate(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Ltwitter4j/StatusJSONImpl;->createdAt:Ljava/util/Date;

    .line 81
    const-string v3, "truncated"

    invoke-static {v3, p1}, Ltwitter4j/ParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Z

    move-result v3

    iput-boolean v3, p0, Ltwitter4j/StatusJSONImpl;->isTruncated:Z

    .line 82
    const-string v3, "in_reply_to_status_id"

    invoke-static {v3, p1}, Ltwitter4j/ParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)J

    move-result-wide v3

    iput-wide v3, p0, Ltwitter4j/StatusJSONImpl;->inReplyToStatusId:J

    .line 83
    const-string v3, "in_reply_to_user_id"

    invoke-static {v3, p1}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)I

    move-result v3

    iput v3, p0, Ltwitter4j/StatusJSONImpl;->inReplyToUserId:I

    .line 84
    const-string v3, "favorited"

    invoke-static {v3, p1}, Ltwitter4j/ParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Z

    move-result v3

    iput-boolean v3, p0, Ltwitter4j/StatusJSONImpl;->isFavorited:Z

    .line 85
    const-string v3, "in_reply_to_screen_name"

    invoke-static {v3, p1}, Ltwitter4j/ParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ltwitter4j/StatusJSONImpl;->inReplyToScreenName:Ljava/lang/String;

    .line 87
    :try_start_0
    const-string v3, "user"

    invoke-virtual {p1, v3}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 88
    new-instance v3, Ltwitter4j/UserJSONImpl;

    const-string v4, "user"

    invoke-virtual {p1, v4}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    iput-object v3, p0, Ltwitter4j/StatusJSONImpl;->user:Ltwitter4j/User;
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :cond_0
    invoke-static {p1}, Ltwitter4j/GeoLocation;->getInstance(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/GeoLocation;

    move-result-object v3

    iput-object v3, p0, Ltwitter4j/StatusJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    .line 94
    const-string v3, "place"

    invoke-virtual {p1, v3}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 96
    :try_start_1
    new-instance v3, Ltwitter4j/PlaceJSONImpl;

    const-string v4, "place"

    invoke-virtual {p1, v4}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ltwitter4j/PlaceJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/http/HttpResponse;)V

    iput-object v3, p0, Ltwitter4j/StatusJSONImpl;->place:Ltwitter4j/Place;
    :try_end_1
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    .line 101
    :cond_1
    :goto_0
    const-string v3, "retweeted_status"

    invoke-virtual {p1, v3}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 103
    :try_start_2
    new-instance v3, Ltwitter4j/StatusJSONImpl;

    const-string v4, "retweeted_status"

    invoke-virtual {p1, v4}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Ltwitter4j/StatusJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    iput-object v3, p0, Ltwitter4j/StatusJSONImpl;->retweetedStatus:Ltwitter4j/Status;
    :try_end_2
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 107
    :cond_2
    :goto_1
    const-string v3, "contributors"

    invoke-virtual {p1, v3}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 109
    :try_start_3
    const-string v3, "contributors"

    invoke-virtual {p1, v3}, Ltwitter4j/internal/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v0

    .line 110
    .local v0, "contributorsArray":Ltwitter4j/internal/org/json/JSONArray;
    invoke-virtual {v0}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Ltwitter4j/StatusJSONImpl;->contributors:[Ljava/lang/String;

    .line 111
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {v0}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 112
    iget-object v3, p0, Ltwitter4j/StatusJSONImpl;->contributors:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ltwitter4j/internal/org/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1
    :try_end_3
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 90
    .end local v0    # "contributorsArray":Ltwitter4j/internal/org/json/JSONArray;
    .end local v1    # "i":I
    :catch_0
    move-exception v2

    .line 91
    .local v2, "jsone":Ltwitter4j/internal/org/json/JSONException;
    new-instance v3, Ltwitter4j/TwitterException;

    invoke-direct {v3, v2}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 117
    .end local v2    # "jsone":Ltwitter4j/internal/org/json/JSONException;
    :cond_3
    iput-object v6, p0, Ltwitter4j/StatusJSONImpl;->contributors:[Ljava/lang/String;

    .line 119
    :cond_4
    :goto_3
    return-void

    .line 114
    :catch_1
    move-exception v3

    goto :goto_3

    .line 104
    :catch_2
    move-exception v3

    goto :goto_1

    .line 97
    :catch_3
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 47
    check-cast p1, Ltwitter4j/Status;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ltwitter4j/StatusJSONImpl;->compareTo(Ltwitter4j/Status;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ltwitter4j/Status;)I
    .locals 6
    .param p1, "that"    # Ltwitter4j/Status;

    .prologue
    .line 122
    iget-wide v2, p0, Ltwitter4j/StatusJSONImpl;->id:J

    invoke-interface {p1}, Ltwitter4j/Status;->getId()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 123
    .local v0, "delta":J
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 124
    const/high16 v2, -0x80000000

    .line 128
    :goto_0
    return v2

    .line 125
    :cond_0
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 126
    const v2, 0x7fffffff

    goto :goto_0

    .line 128
    :cond_1
    long-to-int v2, v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 264
    if-nez p1, :cond_1

    move v0, v1

    .line 270
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 267
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    if-eq p0, p1, :cond_0

    .line 270
    instance-of v2, p1, Ltwitter4j/Status;

    if-eqz v2, :cond_2

    check-cast p1, Ltwitter4j/Status;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-interface {p1}, Ltwitter4j/Status;->getId()J

    move-result-wide v2

    iget-wide v4, p0, Ltwitter4j/StatusJSONImpl;->id:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public getContributors()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->contributors:[Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method public getGeoLocation()Ltwitter4j/GeoLocation;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 142
    iget-wide v0, p0, Ltwitter4j/StatusJSONImpl;->id:J

    return-wide v0
.end method

.method public getInReplyToScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->inReplyToScreenName:Ljava/lang/String;

    return-object v0
.end method

.method public getInReplyToStatusId()J
    .locals 2

    .prologue
    .line 171
    iget-wide v0, p0, Ltwitter4j/StatusJSONImpl;->inReplyToStatusId:J

    return-wide v0
.end method

.method public getInReplyToUserId()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Ltwitter4j/StatusJSONImpl;->inReplyToUserId:I

    return v0
.end method

.method public getPlace()Ltwitter4j/Place;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->place:Ltwitter4j/Place;

    return-object v0
.end method

.method public getRetweetedStatus()Ltwitter4j/Status;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->retweetedStatus:Ltwitter4j/Status;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Ltwitter4j/User;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->user:Ltwitter4j/User;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 259
    iget-wide v0, p0, Ltwitter4j/StatusJSONImpl;->id:J

    long-to-int v0, v0

    return v0
.end method

.method public isFavorited()Z
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Ltwitter4j/StatusJSONImpl;->isFavorited:Z

    return v0
.end method

.method public isRetweet()Z
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->retweetedStatus:Ltwitter4j/Status;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTruncated()Z
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Ltwitter4j/StatusJSONImpl;->isTruncated:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x27

    .line 275
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "StatusJSONImpl{createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->createdAt:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/StatusJSONImpl;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", text=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", source=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", isTruncated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/StatusJSONImpl;->isTruncated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", inReplyToStatusId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/StatusJSONImpl;->inReplyToStatusId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", inReplyToUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/StatusJSONImpl;->inReplyToUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", isFavorited="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/StatusJSONImpl;->isFavorited:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", inReplyToScreenName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->inReplyToScreenName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", geoLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", place="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->place:Ltwitter4j/Place;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", contributors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->contributors:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", retweetedStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->retweetedStatus:Ltwitter4j/Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->user:Ltwitter4j/User;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->contributors:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method
