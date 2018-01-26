.class final Ltwitter4j/IDsJSONImpl;
.super Ltwitter4j/TwitterResponseImpl;
.source "IDsJSONImpl.java"

# interfaces
.implements Ltwitter4j/IDs;


# static fields
.field private static final serialVersionUID:J = -0x5b62b6c47b2132b9L


# instance fields
.field private ids:[I

.field private nextCursor:J

.field private previousCursor:J


# direct methods
.method private constructor <init>(Ltwitter4j/internal/http/HttpResponse;)V
    .locals 2
    .param p1, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, -0x1

    .line 49
    invoke-direct {p0, p1}, Ltwitter4j/TwitterResponseImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    .line 44
    iput-wide v0, p0, Ltwitter4j/IDsJSONImpl;->previousCursor:J

    .line 45
    iput-wide v0, p0, Ltwitter4j/IDsJSONImpl;->nextCursor:J

    .line 50
    return-void
.end method

.method static getBlockIDs(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/IDs;
    .locals 8
    .param p0, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Ltwitter4j/IDsJSONImpl;

    invoke-direct {v0, p0}, Ltwitter4j/IDsJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    .line 76
    .local v0, "blockIDs":Ltwitter4j/IDsJSONImpl;
    const/4 v2, 0x0

    .line 78
    .local v2, "idList":Ltwitter4j/internal/org/json/JSONArray;
    :try_start_0
    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->asJSONArray()Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v2

    .line 79
    invoke-virtual {v2}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v5

    new-array v5, v5, [I

    iput-object v5, v0, Ltwitter4j/IDsJSONImpl;->ids:[I

    .line 80
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Ltwitter4j/internal/org/json/JSONArray;->length()I
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-ge v1, v5, :cond_0

    .line 82
    :try_start_1
    iget-object v5, v0, Ltwitter4j/IDsJSONImpl;->ids:[I

    invoke-virtual {v2, v1}, Ltwitter4j/internal/org/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v5, v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    :catch_0
    move-exception v4

    .line 84
    .local v4, "nfe":Ljava/lang/NumberFormatException;
    :try_start_2
    new-instance v5, Ltwitter4j/TwitterException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Twitter API returned malformed response: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5
    :try_end_2
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 87
    .end local v1    # "i":I
    .end local v4    # "nfe":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v3

    .line 88
    .local v3, "jsone":Ltwitter4j/internal/org/json/JSONException;
    new-instance v5, Ltwitter4j/TwitterException;

    invoke-direct {v5, v3}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v5

    .line 90
    .end local v3    # "jsone":Ltwitter4j/internal/org/json/JSONException;
    .restart local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method static getFriendsIDs(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/IDs;
    .locals 9
    .param p0, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Ltwitter4j/IDsJSONImpl;

    invoke-direct {v0, p0}, Ltwitter4j/IDsJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    .line 53
    .local v0, "friendsIDs":Ltwitter4j/IDsJSONImpl;
    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->asJSONObject()Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v3

    .line 56
    .local v3, "json":Ltwitter4j/internal/org/json/JSONObject;
    :try_start_0
    const-string v6, "ids"

    invoke-virtual {v3, v6}, Ltwitter4j/internal/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v2

    .line 57
    .local v2, "idList":Ltwitter4j/internal/org/json/JSONArray;
    invoke-virtual {v2}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v6

    new-array v6, v6, [I

    iput-object v6, v0, Ltwitter4j/IDsJSONImpl;->ids:[I

    .line 58
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Ltwitter4j/internal/org/json/JSONArray;->length()I
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    if-ge v1, v6, :cond_0

    .line 60
    :try_start_1
    iget-object v6, v0, Ltwitter4j/IDsJSONImpl;->ids:[I

    invoke-virtual {v2, v1}, Ltwitter4j/internal/org/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v6, v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 58
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    :catch_0
    move-exception v5

    .line 62
    .local v5, "nfe":Ljava/lang/NumberFormatException;
    :try_start_2
    new-instance v6, Ltwitter4j/TwitterException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Twitter API returned malformed response: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6
    :try_end_2
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 67
    .end local v1    # "i":I
    .end local v2    # "idList":Ltwitter4j/internal/org/json/JSONArray;
    .end local v5    # "nfe":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v4

    .line 68
    .local v4, "jsone":Ltwitter4j/internal/org/json/JSONException;
    new-instance v6, Ltwitter4j/TwitterException;

    invoke-direct {v6, v4}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v6

    .line 65
    .end local v4    # "jsone":Ltwitter4j/internal/org/json/JSONException;
    .restart local v1    # "i":I
    .restart local v2    # "idList":Ltwitter4j/internal/org/json/JSONArray;
    :cond_0
    :try_start_3
    const-string v6, "previous_cursor"

    invoke-static {v6, v3}, Ltwitter4j/ParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)J

    move-result-wide v6

    iput-wide v6, v0, Ltwitter4j/IDsJSONImpl;->previousCursor:J

    .line 66
    const-string v6, "next_cursor"

    invoke-static {v6, v3}, Ltwitter4j/ParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)J

    move-result-wide v6

    iput-wide v6, v0, Ltwitter4j/IDsJSONImpl;->nextCursor:J
    :try_end_3
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .line 70
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 130
    if-ne p0, p1, :cond_1

    .line 137
    :cond_0
    :goto_0
    return v1

    .line 131
    :cond_1
    instance-of v3, p1, Ltwitter4j/IDs;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 133
    check-cast v0, Ltwitter4j/IDs;

    .line 135
    .local v0, "iDs":Ltwitter4j/IDs;
    iget-object v3, p0, Ltwitter4j/IDsJSONImpl;->ids:[I

    invoke-interface {v0}, Ltwitter4j/IDs;->getIDs()[I

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getIDs()[I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Ltwitter4j/IDsJSONImpl;->ids:[I

    return-object v0
.end method

.method public getNextCursor()J
    .locals 2

    .prologue
    .line 125
    iget-wide v0, p0, Ltwitter4j/IDsJSONImpl;->nextCursor:J

    return-wide v0
.end method

.method public getPreviousCursor()J
    .locals 2

    .prologue
    .line 111
    iget-wide v0, p0, Ltwitter4j/IDsJSONImpl;->previousCursor:J

    return-wide v0
.end method

.method public hasNext()Z
    .locals 4

    .prologue
    .line 118
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Ltwitter4j/IDsJSONImpl;->nextCursor:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrevious()Z
    .locals 4

    .prologue
    .line 104
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Ltwitter4j/IDsJSONImpl;->previousCursor:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Ltwitter4j/IDsJSONImpl;->ids:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltwitter4j/IDsJSONImpl;->ids:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "IDsJSONImpl{ids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/IDsJSONImpl;->ids:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", previousCursor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/IDsJSONImpl;->previousCursor:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", nextCursor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/IDsJSONImpl;->nextCursor:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
