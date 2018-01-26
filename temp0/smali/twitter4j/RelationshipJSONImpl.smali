.class final Ltwitter4j/RelationshipJSONImpl;
.super Ltwitter4j/TwitterResponseImpl;
.source "RelationshipJSONImpl.java"

# interfaces
.implements Ltwitter4j/Relationship;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x9aebf50accb0979L


# instance fields
.field private sourceBlockingTarget:Z

.field private sourceFollowedByTarget:Z

.field private sourceFollowingTarget:Z

.field private sourceNotificationsEnabled:Z

.field private sourceUserId:I

.field private sourceUserScreenName:Ljava/lang/String;

.field private targetUserId:I

.field private targetUserScreenName:Ljava/lang/String;


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
    .line 54
    invoke-direct {p0, p1}, Ltwitter4j/TwitterResponseImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    .line 55
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpResponse;->asJSONObject()Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/RelationshipJSONImpl;->init(Ltwitter4j/internal/org/json/JSONObject;)V

    .line 56
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
    .line 59
    invoke-direct {p0}, Ltwitter4j/TwitterResponseImpl;-><init>()V

    .line 60
    invoke-direct {p0, p1}, Ltwitter4j/RelationshipJSONImpl;->init(Ltwitter4j/internal/org/json/JSONObject;)V

    .line 61
    return-void
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
    .line 65
    :try_start_0
    const-string v4, "relationship"

    invoke-virtual {p1, v4}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v1

    .line 66
    .local v1, "relationship":Ltwitter4j/internal/org/json/JSONObject;
    const-string v4, "source"

    invoke-virtual {v1, v4}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v2

    .line 67
    .local v2, "sourceJson":Ltwitter4j/internal/org/json/JSONObject;
    const-string v4, "target"

    invoke-virtual {v1, v4}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v3

    .line 68
    .local v3, "targetJson":Ltwitter4j/internal/org/json/JSONObject;
    const-string v4, "id"

    invoke-static {v4, v2}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)I

    move-result v4

    iput v4, p0, Ltwitter4j/RelationshipJSONImpl;->sourceUserId:I

    .line 69
    const-string v4, "id"

    invoke-static {v4, v3}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)I

    move-result v4

    iput v4, p0, Ltwitter4j/RelationshipJSONImpl;->targetUserId:I

    .line 70
    const-string v4, "screen_name"

    invoke-static {v4, v2}, Ltwitter4j/ParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ltwitter4j/RelationshipJSONImpl;->sourceUserScreenName:Ljava/lang/String;

    .line 71
    const-string v4, "screen_name"

    invoke-static {v4, v3}, Ltwitter4j/ParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ltwitter4j/RelationshipJSONImpl;->targetUserScreenName:Ljava/lang/String;

    .line 72
    const-string v4, "blocking"

    invoke-static {v4, v2}, Ltwitter4j/ParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Z

    move-result v4

    iput-boolean v4, p0, Ltwitter4j/RelationshipJSONImpl;->sourceBlockingTarget:Z

    .line 73
    const-string v4, "following"

    invoke-static {v4, v2}, Ltwitter4j/ParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Z

    move-result v4

    iput-boolean v4, p0, Ltwitter4j/RelationshipJSONImpl;->sourceFollowingTarget:Z

    .line 74
    const-string v4, "followed_by"

    invoke-static {v4, v2}, Ltwitter4j/ParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Z

    move-result v4

    iput-boolean v4, p0, Ltwitter4j/RelationshipJSONImpl;->sourceFollowedByTarget:Z

    .line 75
    const-string v4, "notifications_enabled"

    invoke-static {v4, v2}, Ltwitter4j/ParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Z

    move-result v4

    iput-boolean v4, p0, Ltwitter4j/RelationshipJSONImpl;->sourceNotificationsEnabled:Z
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    return-void

    .line 76
    .end local v1    # "relationship":Ltwitter4j/internal/org/json/JSONObject;
    .end local v2    # "sourceJson":Ltwitter4j/internal/org/json/JSONObject;
    .end local v3    # "targetJson":Ltwitter4j/internal/org/json/JSONObject;
    :catch_0
    move-exception v0

    .line 77
    .local v0, "jsone":Ltwitter4j/internal/org/json/JSONException;
    new-instance v4, Ltwitter4j/TwitterException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Ltwitter4j/internal/org/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p1}, Ltwitter4j/internal/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 153
    if-ne p0, p1, :cond_1

    .line 165
    :cond_0
    :goto_0
    return v1

    .line 154
    :cond_1
    instance-of v3, p1, Ltwitter4j/Relationship;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 156
    check-cast v0, Ltwitter4j/Relationship;

    .line 158
    .local v0, "that":Ltwitter4j/Relationship;
    iget v3, p0, Ltwitter4j/RelationshipJSONImpl;->sourceUserId:I

    invoke-interface {v0}, Ltwitter4j/Relationship;->getSourceUserId()I

    move-result v4

    if-eq v3, v4, :cond_3

    move v1, v2

    goto :goto_0

    .line 159
    :cond_3
    iget v3, p0, Ltwitter4j/RelationshipJSONImpl;->targetUserId:I

    invoke-interface {v0}, Ltwitter4j/Relationship;->getTargetUserId()I

    move-result v4

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 160
    :cond_4
    iget-object v3, p0, Ltwitter4j/RelationshipJSONImpl;->sourceUserScreenName:Ljava/lang/String;

    invoke-interface {v0}, Ltwitter4j/Relationship;->getSourceUserScreenName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 161
    goto :goto_0

    .line 162
    :cond_5
    iget-object v3, p0, Ltwitter4j/RelationshipJSONImpl;->targetUserScreenName:Ljava/lang/String;

    invoke-interface {v0}, Ltwitter4j/Relationship;->getTargetUserScreenName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 163
    goto :goto_0
.end method

.method public getSourceUserId()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Ltwitter4j/RelationshipJSONImpl;->sourceUserId:I

    return v0
.end method

.method public getSourceUserScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Ltwitter4j/RelationshipJSONImpl;->sourceUserScreenName:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetUserId()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Ltwitter4j/RelationshipJSONImpl;->targetUserId:I

    return v0
.end method

.method public getTargetUserScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Ltwitter4j/RelationshipJSONImpl;->targetUserScreenName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 170
    iget v0, p0, Ltwitter4j/RelationshipJSONImpl;->sourceUserId:I

    .line 171
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltwitter4j/RelationshipJSONImpl;->targetUserId:I

    add-int v0, v1, v2

    .line 172
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/RelationshipJSONImpl;->sourceUserScreenName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 173
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/RelationshipJSONImpl;->targetUserScreenName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 174
    return v0
.end method

.method public isSourceBlockingTarget()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Ltwitter4j/RelationshipJSONImpl;->sourceBlockingTarget:Z

    return v0
.end method

.method public isSourceFollowedByTarget()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Ltwitter4j/RelationshipJSONImpl;->sourceFollowedByTarget:Z

    return v0
.end method

.method public isSourceFollowingTarget()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Ltwitter4j/RelationshipJSONImpl;->sourceFollowingTarget:Z

    return v0
.end method

.method public isSourceNotificationsEnabled()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Ltwitter4j/RelationshipJSONImpl;->sourceNotificationsEnabled:Z

    return v0
.end method

.method public isTargetFollowedBySource()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Ltwitter4j/RelationshipJSONImpl;->sourceFollowingTarget:Z

    return v0
.end method

.method public isTargetFollowingSource()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Ltwitter4j/RelationshipJSONImpl;->sourceFollowedByTarget:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 179
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "RelationshipJSONImpl{sourceUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/RelationshipJSONImpl;->sourceUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", targetUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/RelationshipJSONImpl;->targetUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", sourceUserScreenName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/RelationshipJSONImpl;->sourceUserScreenName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", targetUserScreenName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/RelationshipJSONImpl;->targetUserScreenName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", sourceFollowingTarget="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/RelationshipJSONImpl;->sourceFollowingTarget:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", sourceFollowedByTarget="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/RelationshipJSONImpl;->sourceFollowedByTarget:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", sourceNotificationsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/RelationshipJSONImpl;->sourceNotificationsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
