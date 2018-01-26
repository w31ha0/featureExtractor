.class final Ltwitter4j/TweetJSONImpl;
.super Ljava/lang/Object;
.source "TweetJSONImpl.java"

# interfaces
.implements Ltwitter4j/Tweet;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3babbbc7515d16c3L


# instance fields
.field private createdAt:Ljava/util/Date;

.field private fromUser:Ljava/lang/String;

.field private fromUserId:I

.field private geoLocation:Ltwitter4j/GeoLocation;

.field private id:J

.field private isoLanguageCode:Ljava/lang/String;

.field private profileImageUrl:Ljava/lang/String;

.field private source:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private toUser:Ljava/lang/String;

.field private toUserId:I


# direct methods
.method constructor <init>(Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 2
    .param p1, "tweet"    # Ltwitter4j/internal/org/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Ltwitter4j/TweetJSONImpl;->toUserId:I

    .line 49
    iput-object v1, p0, Ltwitter4j/TweetJSONImpl;->toUser:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Ltwitter4j/TweetJSONImpl;->isoLanguageCode:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Ltwitter4j/TweetJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    .line 62
    const-string v0, "text"

    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/TweetJSONImpl;->text:Ljava/lang/String;

    .line 63
    const-string v0, "to_user_id"

    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)I

    move-result v0

    iput v0, p0, Ltwitter4j/TweetJSONImpl;->toUserId:I

    .line 64
    const-string v0, "to_user"

    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/TweetJSONImpl;->toUser:Ljava/lang/String;

    .line 65
    const-string v0, "from_user"

    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/TweetJSONImpl;->fromUser:Ljava/lang/String;

    .line 66
    const-string v0, "id"

    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)J

    move-result-wide v0

    iput-wide v0, p0, Ltwitter4j/TweetJSONImpl;->id:J

    .line 67
    const-string v0, "from_user_id"

    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)I

    move-result v0

    iput v0, p0, Ltwitter4j/TweetJSONImpl;->fromUserId:I

    .line 68
    const-string v0, "iso_language_code"

    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/TweetJSONImpl;->isoLanguageCode:Ljava/lang/String;

    .line 69
    const-string v0, "source"

    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/TweetJSONImpl;->source:Ljava/lang/String;

    .line 70
    const-string v0, "profile_image_url"

    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/TweetJSONImpl;->profileImageUrl:Ljava/lang/String;

    .line 71
    const-string v0, "created_at"

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss z"

    invoke-static {v0, p1, v1}, Ltwitter4j/ParseUtil;->getDate(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/TweetJSONImpl;->createdAt:Ljava/util/Date;

    .line 72
    invoke-static {p1}, Ltwitter4j/GeoLocation;->getInstance(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/GeoLocation;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/TweetJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    .line 73
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 46
    check-cast p1, Ltwitter4j/Tweet;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ltwitter4j/TweetJSONImpl;->compareTo(Ltwitter4j/Tweet;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ltwitter4j/Tweet;)I
    .locals 6
    .param p1, "that"    # Ltwitter4j/Tweet;

    .prologue
    .line 76
    iget-wide v2, p0, Ltwitter4j/TweetJSONImpl;->id:J

    invoke-interface {p1}, Ltwitter4j/Tweet;->getId()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 77
    .local v0, "delta":J
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 78
    const/high16 v2, -0x80000000

    .line 82
    :goto_0
    return v2

    .line 79
    :cond_0
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 80
    const v2, 0x7fffffff

    goto :goto_0

    .line 82
    :cond_1
    long-to-int v2, v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 164
    if-ne p0, p1, :cond_1

    .line 171
    :cond_0
    :goto_0
    return v1

    .line 165
    :cond_1
    instance-of v3, p1, Ltwitter4j/Tweet;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 167
    check-cast v0, Ltwitter4j/Tweet;

    .line 169
    .local v0, "tweet":Ltwitter4j/Tweet;
    iget-wide v3, p0, Ltwitter4j/TweetJSONImpl;->id:J

    invoke-interface {v0}, Ltwitter4j/Tweet;->getId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Ltwitter4j/TweetJSONImpl;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method public getFromUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Ltwitter4j/TweetJSONImpl;->fromUser:Ljava/lang/String;

    return-object v0
.end method

.method public getFromUserId()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Ltwitter4j/TweetJSONImpl;->fromUserId:I

    return v0
.end method

.method public getGeoLocation()Ltwitter4j/GeoLocation;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Ltwitter4j/TweetJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 117
    iget-wide v0, p0, Ltwitter4j/TweetJSONImpl;->id:J

    return-wide v0
.end method

.method public getIsoLanguageCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Ltwitter4j/TweetJSONImpl;->isoLanguageCode:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Ltwitter4j/TweetJSONImpl;->profileImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Ltwitter4j/TweetJSONImpl;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Ltwitter4j/TweetJSONImpl;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getToUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Ltwitter4j/TweetJSONImpl;->toUser:Ljava/lang/String;

    return-object v0
.end method

.method public getToUserId()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Ltwitter4j/TweetJSONImpl;->toUserId:I

    return v0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 176
    iget-object v1, p0, Ltwitter4j/TweetJSONImpl;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 177
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Ltwitter4j/TweetJSONImpl;->toUserId:I

    add-int v0, v1, v3

    .line 178
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Ltwitter4j/TweetJSONImpl;->toUser:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ltwitter4j/TweetJSONImpl;->toUser:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v3, v1

    .line 179
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/TweetJSONImpl;->fromUser:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 180
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v3, p0, Ltwitter4j/TweetJSONImpl;->id:J

    iget-wide v5, p0, Ltwitter4j/TweetJSONImpl;->id:J

    const/16 v7, 0x20

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v0, v1, v3

    .line 181
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Ltwitter4j/TweetJSONImpl;->fromUserId:I

    add-int v0, v1, v3

    .line 182
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Ltwitter4j/TweetJSONImpl;->isoLanguageCode:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Ltwitter4j/TweetJSONImpl;->isoLanguageCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int v0, v3, v1

    .line 183
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/TweetJSONImpl;->source:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 184
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/TweetJSONImpl;->profileImageUrl:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 185
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/TweetJSONImpl;->createdAt:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 186
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/TweetJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    if-eqz v3, :cond_0

    iget-object v2, p0, Ltwitter4j/TweetJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    invoke-virtual {v2}, Ltwitter4j/GeoLocation;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    .line 187
    return v0

    :cond_1
    move v1, v2

    .line 178
    goto :goto_0

    :cond_2
    move v1, v2

    .line 182
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x27

    .line 192
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "TweetJSONImpl{text=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TweetJSONImpl;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", toUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/TweetJSONImpl;->toUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", toUser=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TweetJSONImpl;->toUser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", fromUser=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TweetJSONImpl;->fromUser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/TweetJSONImpl;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", fromUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/TweetJSONImpl;->fromUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", isoLanguageCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TweetJSONImpl;->isoLanguageCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", source=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TweetJSONImpl;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", profileImageUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TweetJSONImpl;->profileImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TweetJSONImpl;->createdAt:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", geoLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TweetJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
