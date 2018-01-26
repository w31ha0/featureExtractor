.class final Ltwitter4j/SavedSearchJSONImpl;
.super Ltwitter4j/TwitterResponseImpl;
.source "SavedSearchJSONImpl.java"

# interfaces
.implements Ltwitter4j/SavedSearch;


# static fields
.field private static final serialVersionUID:J = 0x2acbedd301ef9884L


# instance fields
.field private createdAt:Ljava/util/Date;

.field private id:I

.field private name:Ljava/lang/String;

.field private position:I

.field private query:Ljava/lang/String;


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
    .line 52
    invoke-direct {p0, p1}, Ltwitter4j/TwitterResponseImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    .line 53
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpResponse;->asJSONObject()Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/SavedSearchJSONImpl;->init(Ltwitter4j/internal/org/json/JSONObject;)V

    .line 54
    return-void
.end method

.method constructor <init>(Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 0
    .param p1, "savedSearch"    # Ltwitter4j/internal/org/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Ltwitter4j/TwitterResponseImpl;-><init>()V

    .line 57
    invoke-direct {p0, p1}, Ltwitter4j/SavedSearchJSONImpl;->init(Ltwitter4j/internal/org/json/JSONObject;)V

    .line 58
    return-void
.end method

.method static createSavedSearchList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;
    .locals 7
    .param p0, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/internal/http/HttpResponse;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/SavedSearch;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->asJSONArray()Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v1

    .line 64
    .local v1, "json":Ltwitter4j/internal/org/json/JSONArray;
    :try_start_0
    new-instance v3, Ltwitter4j/ResponseList;

    invoke-virtual {v1}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v4

    invoke-direct {v3, v4, p0}, Ltwitter4j/ResponseList;-><init>(ILtwitter4j/internal/http/HttpResponse;)V

    .line 65
    .local v3, "savedSearches":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/SavedSearch;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 66
    new-instance v4, Ltwitter4j/SavedSearchJSONImpl;

    invoke-virtual {v1, v0}, Ltwitter4j/internal/org/json/JSONArray;->getJSONObject(I)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v5

    invoke-direct {v4, v5}, Ltwitter4j/SavedSearchJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    invoke-virtual {v3, v4}, Ltwitter4j/ResponseList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    .end local v0    # "i":I
    .end local v3    # "savedSearches":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/SavedSearch;>;"
    :catch_0
    move-exception v2

    .line 70
    .local v2, "jsone":Ltwitter4j/internal/org/json/JSONException;
    new-instance v4, Ltwitter4j/TwitterException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2}, Ltwitter4j/internal/org/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->asString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 68
    .end local v2    # "jsone":Ltwitter4j/internal/org/json/JSONException;
    .restart local v0    # "i":I
    .restart local v3    # "savedSearches":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/SavedSearch;>;"
    :cond_0
    return-object v3
.end method

.method private init(Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 2
    .param p1, "savedSearch"    # Ltwitter4j/internal/org/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 75
    const-string v0, "created_at"

    const-string v1, "EEE MMM dd HH:mm:ss z yyyy"

    invoke-static {v0, p1, v1}, Ltwitter4j/ParseUtil;->getDate(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/SavedSearchJSONImpl;->createdAt:Ljava/util/Date;

    .line 76
    const-string v0, "query"

    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/SavedSearchJSONImpl;->query:Ljava/lang/String;

    .line 77
    const-string v0, "position"

    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)I

    move-result v0

    iput v0, p0, Ltwitter4j/SavedSearchJSONImpl;->position:I

    .line 78
    const-string v0, "name"

    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/SavedSearchJSONImpl;->name:Ljava/lang/String;

    .line 79
    const-string v0, "id"

    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)I

    move-result v0

    iput v0, p0, Ltwitter4j/SavedSearchJSONImpl;->id:I

    .line 80
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 42
    check-cast p1, Ltwitter4j/SavedSearch;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ltwitter4j/SavedSearchJSONImpl;->compareTo(Ltwitter4j/SavedSearch;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ltwitter4j/SavedSearch;)I
    .locals 2
    .param p1, "that"    # Ltwitter4j/SavedSearch;

    .prologue
    .line 83
    iget v0, p0, Ltwitter4j/SavedSearchJSONImpl;->id:I

    invoke-interface {p1}, Ltwitter4j/SavedSearch;->getId()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 123
    if-ne p0, p1, :cond_1

    .line 130
    :cond_0
    :goto_0
    return v1

    .line 124
    :cond_1
    instance-of v3, p1, Ltwitter4j/SavedSearch;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 126
    check-cast v0, Ltwitter4j/SavedSearch;

    .line 128
    .local v0, "that":Ltwitter4j/SavedSearch;
    iget v3, p0, Ltwitter4j/SavedSearchJSONImpl;->id:I

    invoke-interface {v0}, Ltwitter4j/SavedSearch;->getId()I

    move-result v4

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Ltwitter4j/SavedSearchJSONImpl;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Ltwitter4j/SavedSearchJSONImpl;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Ltwitter4j/SavedSearchJSONImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Ltwitter4j/SavedSearchJSONImpl;->position:I

    return v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Ltwitter4j/SavedSearchJSONImpl;->query:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 135
    iget-object v1, p0, Ltwitter4j/SavedSearchJSONImpl;->createdAt:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v0

    .line 136
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/SavedSearchJSONImpl;->query:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 137
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltwitter4j/SavedSearchJSONImpl;->position:I

    add-int v0, v1, v2

    .line 138
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/SavedSearchJSONImpl;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 139
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltwitter4j/SavedSearchJSONImpl;->id:I

    add-int v0, v1, v2

    .line 140
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 145
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "SavedSearchJSONImpl{createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/SavedSearchJSONImpl;->createdAt:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", query=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/SavedSearchJSONImpl;->query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/SavedSearchJSONImpl;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/SavedSearchJSONImpl;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/SavedSearchJSONImpl;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
