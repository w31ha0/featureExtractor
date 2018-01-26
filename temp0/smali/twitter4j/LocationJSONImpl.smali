.class final Ltwitter4j/LocationJSONImpl;
.super Ljava/lang/Object;
.source "LocationJSONImpl.java"

# interfaces
.implements Ltwitter4j/Location;


# static fields
.field private static final serialVersionUID:J = 0x6276d4e89ed29546L


# instance fields
.field private final countryCode:Ljava/lang/String;

.field private final countryName:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final placeCode:I

.field private final placeName:Ljava/lang/String;

.field private final url:Ljava/lang/String;

.field private final woeid:I


# direct methods
.method constructor <init>(Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 3
    .param p1, "location"    # Ltwitter4j/internal/org/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    :try_start_0
    const-string v2, "woeid"

    invoke-static {v2, p1}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)I

    move-result v2

    iput v2, p0, Ltwitter4j/LocationJSONImpl;->woeid:I

    .line 54
    const-string v2, "country"

    invoke-static {v2, p1}, Ltwitter4j/ParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/LocationJSONImpl;->countryName:Ljava/lang/String;

    .line 55
    const-string v2, "countryCode"

    invoke-static {v2, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/LocationJSONImpl;->countryCode:Ljava/lang/String;

    .line 56
    const-string v2, "placeType"

    invoke-virtual {p1, v2}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 57
    const-string v2, "placeType"

    invoke-virtual {p1, v2}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v1

    .line 58
    .local v1, "placeJSON":Ltwitter4j/internal/org/json/JSONObject;
    const-string v2, "name"

    invoke-static {v2, v1}, Ltwitter4j/ParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/LocationJSONImpl;->placeName:Ljava/lang/String;

    .line 59
    const-string v2, "code"

    invoke-static {v2, v1}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)I

    move-result v2

    iput v2, p0, Ltwitter4j/LocationJSONImpl;->placeCode:I

    .line 64
    .end local v1    # "placeJSON":Ltwitter4j/internal/org/json/JSONObject;
    :goto_0
    const-string v2, "name"

    invoke-static {v2, p1}, Ltwitter4j/ParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/LocationJSONImpl;->name:Ljava/lang/String;

    .line 65
    const-string v2, "url"

    invoke-static {v2, p1}, Ltwitter4j/ParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/LocationJSONImpl;->url:Ljava/lang/String;

    .line 69
    return-void

    .line 61
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Ltwitter4j/LocationJSONImpl;->placeName:Ljava/lang/String;

    .line 62
    const/4 v2, -0x1

    iput v2, p0, Ltwitter4j/LocationJSONImpl;->placeCode:I
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "jsone":Ltwitter4j/internal/org/json/JSONException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method static createLocationList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;
    .locals 1
    .param p0, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/internal/http/HttpResponse;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Location;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->asJSONArray()Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v0

    invoke-static {v0, p0}, Ltwitter4j/LocationJSONImpl;->createLocationList(Ltwitter4j/internal/org/json/JSONArray;Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method static createLocationList(Ltwitter4j/internal/org/json/JSONArray;Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;
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
            "Ltwitter4j/Location;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 77
    :try_start_0
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v3

    .line 78
    .local v3, "size":I
    new-instance v2, Ltwitter4j/ResponseList;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5}, Ltwitter4j/ResponseList;-><init>(ILtwitter4j/internal/http/HttpResponse;)V

    .line 80
    .local v2, "locations":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/Location;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 81
    new-instance v5, Ltwitter4j/LocationJSONImpl;

    invoke-virtual {p0, v0}, Ltwitter4j/internal/org/json/JSONArray;->getJSONObject(I)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v6

    invoke-direct {v5, v6}, Ltwitter4j/LocationJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    invoke-virtual {v2, v5}, Ltwitter4j/ResponseList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_1

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    .end local v0    # "i":I
    .end local v2    # "locations":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/Location;>;"
    .end local v3    # "size":I
    :catch_0
    move-exception v1

    .line 85
    .local v1, "jsone":Ltwitter4j/internal/org/json/JSONException;
    new-instance v5, Ltwitter4j/TwitterException;

    invoke-direct {v5, v1}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v5

    .line 86
    .end local v1    # "jsone":Ltwitter4j/internal/org/json/JSONException;
    :catch_1
    move-exception v4

    .line 87
    .local v4, "te":Ltwitter4j/TwitterException;
    throw v4

    .line 83
    .end local v4    # "te":Ltwitter4j/TwitterException;
    .restart local v0    # "i":I
    .restart local v2    # "locations":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/Location;>;"
    .restart local v3    # "size":I
    :cond_0
    return-object v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 142
    if-ne p0, p1, :cond_1

    .line 149
    :cond_0
    :goto_0
    return v1

    .line 143
    :cond_1
    instance-of v3, p1, Ltwitter4j/LocationJSONImpl;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 145
    check-cast v0, Ltwitter4j/LocationJSONImpl;

    .line 147
    .local v0, "that":Ltwitter4j/LocationJSONImpl;
    iget v3, p0, Ltwitter4j/LocationJSONImpl;->woeid:I

    iget v4, v0, Ltwitter4j/LocationJSONImpl;->woeid:I

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Ltwitter4j/LocationJSONImpl;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Ltwitter4j/LocationJSONImpl;->countryName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Ltwitter4j/LocationJSONImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaceCode()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Ltwitter4j/LocationJSONImpl;->placeCode:I

    return v0
.end method

.method public getPlaceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Ltwitter4j/LocationJSONImpl;->placeName:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Ltwitter4j/LocationJSONImpl;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getWoeid()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Ltwitter4j/LocationJSONImpl;->woeid:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Ltwitter4j/LocationJSONImpl;->woeid:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 159
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "LocationJSONImpl{woeid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/LocationJSONImpl;->woeid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", countryName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/LocationJSONImpl;->countryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", countryCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/LocationJSONImpl;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", placeName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/LocationJSONImpl;->placeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", placeCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/LocationJSONImpl;->placeCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/LocationJSONImpl;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/LocationJSONImpl;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
