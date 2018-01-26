.class final Ltwitter4j/TrendsJSONImpl;
.super Ljava/lang/Object;
.source "TrendsJSONImpl.java"

# interfaces
.implements Ltwitter4j/Trends;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x633f2864236532b5L


# instance fields
.field private asOf:Ljava/util/Date;

.field private location:Ltwitter4j/Location;

.field private trendAt:Ljava/util/Date;

.field private trends:[Ltwitter4j/Trend;


# direct methods
.method constructor <init>(Ljava/util/Date;Ltwitter4j/Location;Ljava/util/Date;[Ltwitter4j/Trend;)V
    .locals 0
    .param p1, "asOf"    # Ljava/util/Date;
    .param p2, "location"    # Ltwitter4j/Location;
    .param p3, "trendAt"    # Ljava/util/Date;
    .param p4, "trends"    # [Ltwitter4j/Trend;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Ltwitter4j/TrendsJSONImpl;->asOf:Ljava/util/Date;

    .line 65
    iput-object p2, p0, Ltwitter4j/TrendsJSONImpl;->location:Ltwitter4j/Location;

    .line 66
    iput-object p3, p0, Ltwitter4j/TrendsJSONImpl;->trendAt:Ljava/util/Date;

    .line 67
    iput-object p4, p0, Ltwitter4j/TrendsJSONImpl;->trends:[Ltwitter4j/Trend;

    .line 68
    return-void
.end method

.method static createTrends(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/Trends;
    .locals 1
    .param p0, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 126
    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->asJSONObject()Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v0

    invoke-static {v0, p0}, Ltwitter4j/TrendsJSONImpl;->createTrends(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/Trends;

    move-result-object v0

    return-object v0
.end method

.method static createTrends(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/Trends;
    .locals 7
    .param p0, "json"    # Ltwitter4j/internal/org/json/JSONObject;
    .param p1, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 131
    :try_start_0
    const-string v4, "as_of"

    invoke-virtual {p0, v4}, Ltwitter4j/internal/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ltwitter4j/TrendsJSONImpl;->parseTrendsDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 132
    .local v1, "asOf":Ljava/util/Date;
    const-string v4, "trends"

    invoke-virtual {p0, v4}, Ltwitter4j/internal/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v0

    .line 133
    .local v0, "array":Ltwitter4j/internal/org/json/JSONArray;
    invoke-static {v0}, Ltwitter4j/TrendsJSONImpl;->jsonArrayToTrendArray(Ltwitter4j/internal/org/json/JSONArray;)[Ltwitter4j/Trend;

    move-result-object v3

    .line 134
    .local v3, "trendsArray":[Ltwitter4j/Trend;
    new-instance v4, Ltwitter4j/TrendsJSONImpl;

    invoke-static {p0, p1}, Ltwitter4j/TrendsJSONImpl;->extractLocation(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/Location;

    move-result-object v5

    invoke-direct {v4, v1, v5, v1, v3}, Ltwitter4j/TrendsJSONImpl;-><init>(Ljava/util/Date;Ltwitter4j/Location;Ljava/util/Date;[Ltwitter4j/Trend;)V
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 135
    .end local v0    # "array":Ltwitter4j/internal/org/json/JSONArray;
    .end local v1    # "asOf":Ljava/util/Date;
    .end local v3    # "trendsArray":[Ltwitter4j/Trend;
    :catch_0
    move-exception v2

    .line 136
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

    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpResponse;->asString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4
.end method

.method static createTrendsList(Ltwitter4j/internal/http/HttpResponse;)Ljava/util/List;
    .locals 13
    .param p0, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/internal/http/HttpResponse;",
            ")",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Trends;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->asJSONObject()Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v3

    .line 77
    .local v3, "json":Ltwitter4j/internal/org/json/JSONObject;
    :try_start_0
    const-string v10, "as_of"

    invoke-virtual {v3, v10}, Ltwitter4j/internal/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ltwitter4j/TrendsJSONImpl;->parseTrendsDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 78
    .local v1, "asOf":Ljava/util/Date;
    const-string v10, "trends"

    invoke-virtual {v3, v10}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v9

    .line 79
    .local v9, "trendsJson":Ltwitter4j/internal/org/json/JSONObject;
    invoke-static {v3, p0}, Ltwitter4j/TrendsJSONImpl;->extractLocation(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/Location;

    move-result-object v6

    .line 80
    .local v6, "location":Ltwitter4j/Location;
    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ltwitter4j/internal/org/json/JSONObject;->length()I

    move-result v10

    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 81
    .local v7, "trends":Ljava/util/List;, "Ljava/util/List<Ltwitter4j/Trends;>;"
    invoke-virtual {v9}, Ltwitter4j/internal/org/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 82
    .local v2, "ite":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 83
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 84
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {v9, v5}, Ltwitter4j/internal/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v0

    .line 85
    .local v0, "array":Ltwitter4j/internal/org/json/JSONArray;
    invoke-static {v0}, Ltwitter4j/TrendsJSONImpl;->jsonArrayToTrendArray(Ltwitter4j/internal/org/json/JSONArray;)[Ltwitter4j/Trend;

    move-result-object v8

    .line 86
    .local v8, "trendsArray":[Ltwitter4j/Trend;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x13

    if-ne v10, v11, :cond_1

    .line 88
    new-instance v10, Ltwitter4j/TrendsJSONImpl;

    const-string v11, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v5, v11}, Ltwitter4j/ParseUtil;->getDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v11

    invoke-direct {v10, v1, v6, v11, v8}, Ltwitter4j/TrendsJSONImpl;-><init>(Ljava/util/Date;Ltwitter4j/Location;Ljava/util/Date;[Ltwitter4j/Trend;)V

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    .end local v0    # "array":Ltwitter4j/internal/org/json/JSONArray;
    .end local v1    # "asOf":Ljava/util/Date;
    .end local v2    # "ite":Ljava/util/Iterator;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "location":Ltwitter4j/Location;
    .end local v7    # "trends":Ljava/util/List;, "Ljava/util/List<Ltwitter4j/Trends;>;"
    .end local v8    # "trendsArray":[Ltwitter4j/Trend;
    .end local v9    # "trendsJson":Ltwitter4j/internal/org/json/JSONObject;
    :catch_0
    move-exception v4

    .line 103
    .local v4, "jsone":Ltwitter4j/internal/org/json/JSONException;
    new-instance v10, Ltwitter4j/TwitterException;

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4}, Ltwitter4j/internal/org/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->asString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v4}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v10

    .line 90
    .end local v4    # "jsone":Ltwitter4j/internal/org/json/JSONException;
    .restart local v0    # "array":Ltwitter4j/internal/org/json/JSONArray;
    .restart local v1    # "asOf":Ljava/util/Date;
    .restart local v2    # "ite":Ljava/util/Iterator;
    .restart local v5    # "key":Ljava/lang/String;
    .restart local v6    # "location":Ltwitter4j/Location;
    .restart local v7    # "trends":Ljava/util/List;, "Ljava/util/List<Ltwitter4j/Trends;>;"
    .restart local v8    # "trendsArray":[Ltwitter4j/Trend;
    .restart local v9    # "trendsJson":Ltwitter4j/internal/org/json/JSONObject;
    :cond_1
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x10

    if-ne v10, v11, :cond_2

    .line 92
    new-instance v10, Ltwitter4j/TrendsJSONImpl;

    const-string v11, "yyyy-MM-dd HH:mm"

    invoke-static {v5, v11}, Ltwitter4j/ParseUtil;->getDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v11

    invoke-direct {v10, v1, v6, v11, v8}, Ltwitter4j/TrendsJSONImpl;-><init>(Ljava/util/Date;Ltwitter4j/Location;Ljava/util/Date;[Ltwitter4j/Trend;)V

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 94
    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0xa

    if-ne v10, v11, :cond_0

    .line 96
    new-instance v10, Ltwitter4j/TrendsJSONImpl;

    const-string v11, "yyyy-MM-dd"

    invoke-static {v5, v11}, Ltwitter4j/ParseUtil;->getDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v11

    invoke-direct {v10, v1, v6, v11, v8}, Ltwitter4j/TrendsJSONImpl;-><init>(Ljava/util/Date;Ltwitter4j/Location;Ljava/util/Date;[Ltwitter4j/Trend;)V

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 100
    .end local v0    # "array":Ltwitter4j/internal/org/json/JSONArray;
    .end local v5    # "key":Ljava/lang/String;
    .end local v8    # "trendsArray":[Ltwitter4j/Trend;
    :cond_3
    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_1
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 101
    return-object v7
.end method

.method private static extractLocation(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/Location;
    .locals 5
    .param p0, "json"    # Ltwitter4j/internal/org/json/JSONObject;
    .param p1, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 107
    const-string v3, "locations"

    invoke-virtual {p0, v3}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 108
    const/4 v1, 0x0

    .line 122
    :goto_0
    return-object v1

    .line 110
    :cond_0
    const/4 v2, 0x0

    .line 112
    .local v2, "locations":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/Location;>;"
    :try_start_0
    const-string v3, "locations"

    invoke-virtual {p0, v3}, Ltwitter4j/internal/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v3

    invoke-static {v3, p1}, Ltwitter4j/LocationJSONImpl;->createLocationList(Ltwitter4j/internal/org/json/JSONArray;Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 117
    invoke-virtual {v2}, Ltwitter4j/ResponseList;->size()I

    move-result v3

    if-eqz v3, :cond_1

    .line 118
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ltwitter4j/ResponseList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltwitter4j/Location;

    .local v1, "location":Ltwitter4j/Location;
    goto :goto_0

    .line 113
    .end local v1    # "location":Ltwitter4j/Location;
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ltwitter4j/internal/org/json/JSONException;
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "locations can\'t be null"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 120
    .end local v0    # "e":Ltwitter4j/internal/org/json/JSONException;
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "location":Ltwitter4j/Location;
    goto :goto_0
.end method

.method private static jsonArrayToTrendArray(Ltwitter4j/internal/org/json/JSONArray;)[Ltwitter4j/Trend;
    .locals 4
    .param p0, "array"    # Ltwitter4j/internal/org/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 156
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v3

    new-array v2, v3, [Ltwitter4j/Trend;

    .line 157
    .local v2, "trends":[Ltwitter4j/Trend;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 158
    invoke-virtual {p0, v0}, Ltwitter4j/internal/org/json/JSONArray;->getJSONObject(I)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v1

    .line 159
    .local v1, "trend":Ltwitter4j/internal/org/json/JSONObject;
    new-instance v3, Ltwitter4j/TrendJSONImpl;

    invoke-direct {v3, v1}, Ltwitter4j/TrendJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    aput-object v3, v2, v0

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    .end local v1    # "trend":Ltwitter4j/internal/org/json/JSONObject;
    :cond_0
    return-object v2
.end method

.method private static parseTrendsDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 5
    .param p0, "asOfStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 142
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 150
    const-string v1, "EEE, d MMM yyyy HH:mm:ss z"

    invoke-static {p0, v1}, Ltwitter4j/ParseUtil;->getDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 152
    .local v0, "parsed":Ljava/util/Date;
    :goto_0
    return-object v0

    .line 144
    .end local v0    # "parsed":Ljava/util/Date;
    :sswitch_0
    new-instance v0, Ljava/util/Date;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 145
    .restart local v0    # "parsed":Ljava/util/Date;
    goto :goto_0

    .line 147
    .end local v0    # "parsed":Ljava/util/Date;
    :sswitch_1
    const-string v1, "yyyy-mm-dd\'T\'HH:mm:ss\'Z\'"

    invoke-static {p0, v1}, Ltwitter4j/ParseUtil;->getDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 148
    .restart local v0    # "parsed":Ljava/util/Date;
    goto :goto_0

    .line 142
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 49
    check-cast p1, Ltwitter4j/Trends;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ltwitter4j/TrendsJSONImpl;->compareTo(Ltwitter4j/Trends;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ltwitter4j/Trends;)I
    .locals 2
    .param p1, "that"    # Ltwitter4j/Trends;

    .prologue
    .line 57
    iget-object v0, p0, Ltwitter4j/TrendsJSONImpl;->trendAt:Ljava/util/Date;

    invoke-interface {p1}, Ltwitter4j/Trends;->getTrendAt()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 194
    if-ne p0, p1, :cond_1

    .line 205
    :cond_0
    :goto_0
    return v1

    .line 195
    :cond_1
    instance-of v3, p1, Ltwitter4j/Trends;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 197
    check-cast v0, Ltwitter4j/Trends;

    .line 199
    .local v0, "trends1":Ltwitter4j/Trends;
    iget-object v3, p0, Ltwitter4j/TrendsJSONImpl;->asOf:Ljava/util/Date;

    if-eqz v3, :cond_4

    iget-object v3, p0, Ltwitter4j/TrendsJSONImpl;->asOf:Ljava/util/Date;

    invoke-interface {v0}, Ltwitter4j/Trends;->getAsOf()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_3
    move v1, v2

    .line 200
    goto :goto_0

    .line 199
    :cond_4
    invoke-interface {v0}, Ltwitter4j/Trends;->getAsOf()Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_3

    .line 201
    :cond_5
    iget-object v3, p0, Ltwitter4j/TrendsJSONImpl;->trendAt:Ljava/util/Date;

    if-eqz v3, :cond_7

    iget-object v3, p0, Ltwitter4j/TrendsJSONImpl;->trendAt:Ljava/util/Date;

    invoke-interface {v0}, Ltwitter4j/Trends;->getTrendAt()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_6
    move v1, v2

    .line 202
    goto :goto_0

    .line 201
    :cond_7
    invoke-interface {v0}, Ltwitter4j/Trends;->getTrendAt()Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_6

    .line 203
    :cond_8
    iget-object v3, p0, Ltwitter4j/TrendsJSONImpl;->trends:[Ltwitter4j/Trend;

    invoke-interface {v0}, Ltwitter4j/Trends;->getTrends()[Ltwitter4j/Trend;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getAsOf()Ljava/util/Date;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Ltwitter4j/TrendsJSONImpl;->asOf:Ljava/util/Date;

    return-object v0
.end method

.method public getLocation()Ltwitter4j/Location;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Ltwitter4j/TrendsJSONImpl;->location:Ltwitter4j/Location;

    return-object v0
.end method

.method public getTrendAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Ltwitter4j/TrendsJSONImpl;->trendAt:Ljava/util/Date;

    return-object v0
.end method

.method public getTrends()[Ltwitter4j/Trend;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Ltwitter4j/TrendsJSONImpl;->trends:[Ltwitter4j/Trend;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 210
    iget-object v2, p0, Ltwitter4j/TrendsJSONImpl;->asOf:Ljava/util/Date;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ltwitter4j/TrendsJSONImpl;->asOf:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v0

    .line 211
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/TrendsJSONImpl;->trendAt:Ljava/util/Date;

    if-eqz v2, :cond_2

    iget-object v2, p0, Ltwitter4j/TrendsJSONImpl;->trendAt:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 212
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/TrendsJSONImpl;->trends:[Ltwitter4j/Trend;

    if-eqz v3, :cond_0

    iget-object v1, p0, Ltwitter4j/TrendsJSONImpl;->trends:[Ltwitter4j/Trend;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 213
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 210
    goto :goto_0

    .restart local v0    # "result":I
    :cond_2
    move v2, v1

    .line 211
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 218
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "TrendsJSONImpl{asOf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TrendsJSONImpl;->asOf:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", trendAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TrendsJSONImpl;->trendAt:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", trends="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v0, p0, Ltwitter4j/TrendsJSONImpl;->trends:[Ltwitter4j/Trend;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Ltwitter4j/TrendsJSONImpl;->trends:[Ltwitter4j/Trend;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method
