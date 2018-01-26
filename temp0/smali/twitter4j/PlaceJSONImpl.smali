.class final Ltwitter4j/PlaceJSONImpl;
.super Ltwitter4j/TwitterResponseImpl;
.source "PlaceJSONImpl.java"

# interfaces
.implements Ltwitter4j/Place;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x27e03da513dea854L


# instance fields
.field private boundingBoxCoordinates:[[Ltwitter4j/GeoLocation;

.field private boundingBoxType:Ljava/lang/String;

.field private containedWithIn:[Ltwitter4j/Place;

.field private country:Ljava/lang/String;

.field private countryCode:Ljava/lang/String;

.field private fullName:Ljava/lang/String;

.field private geometryCoordinates:[[Ltwitter4j/GeoLocation;

.field private geometryType:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private placeType:Ljava/lang/String;

.field private streetAddress:Ljava/lang/String;

.field private url:Ljava/lang/String;


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
    .line 60
    invoke-direct {p0, p1}, Ltwitter4j/TwitterResponseImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    .line 61
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpResponse;->asJSONObject()Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/PlaceJSONImpl;->init(Ltwitter4j/internal/org/json/JSONObject;)V

    .line 62
    return-void
.end method

.method constructor <init>(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/http/HttpResponse;)V
    .locals 0
    .param p1, "json"    # Ltwitter4j/internal/org/json/JSONObject;
    .param p2, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0, p2}, Ltwitter4j/TwitterResponseImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    .line 65
    invoke-direct {p0, p1}, Ltwitter4j/PlaceJSONImpl;->init(Ltwitter4j/internal/org/json/JSONObject;)V

    .line 66
    return-void
.end method

.method static createPlaceList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;
    .locals 5
    .param p0, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/internal/http/HttpResponse;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Place;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 116
    const/4 v0, 0x0

    .line 118
    .local v0, "json":Ltwitter4j/internal/org/json/JSONObject;
    :try_start_0
    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->asJSONObject()Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v0

    .line 119
    const-string v2, "result"

    invoke-virtual {v0, v2}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v2

    const-string v3, "places"

    invoke-virtual {v2, v3}, Ltwitter4j/internal/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v2

    invoke-static {v2, p0}, Ltwitter4j/PlaceJSONImpl;->createPlaceList(Ltwitter4j/internal/org/json/JSONArray;Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 120
    :catch_0
    move-exception v1

    .line 121
    .local v1, "jsone":Ltwitter4j/internal/org/json/JSONException;
    new-instance v2, Ltwitter4j/TwitterException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1}, Ltwitter4j/internal/org/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Ltwitter4j/internal/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method static createPlaceList(Ltwitter4j/internal/org/json/JSONArray;Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;
    .locals 8
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
            "Ltwitter4j/Place;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 127
    :try_start_0
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v3

    .line 128
    .local v3, "size":I
    new-instance v2, Ltwitter4j/ResponseList;

    invoke-direct {v2, v3, p1}, Ltwitter4j/ResponseList;-><init>(ILtwitter4j/internal/http/HttpResponse;)V

    .line 130
    .local v2, "places":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/Place;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 131
    new-instance v5, Ltwitter4j/PlaceJSONImpl;

    invoke-virtual {p0, v0}, Ltwitter4j/internal/org/json/JSONArray;->getJSONObject(I)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Ltwitter4j/PlaceJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/http/HttpResponse;)V

    invoke-virtual {v2, v5}, Ltwitter4j/ResponseList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_1

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    .end local v0    # "i":I
    .end local v2    # "places":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/Place;>;"
    .end local v3    # "size":I
    :catch_0
    move-exception v1

    .line 135
    .local v1, "jsone":Ltwitter4j/internal/org/json/JSONException;
    new-instance v5, Ltwitter4j/TwitterException;

    invoke-direct {v5, v1}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v5

    .line 136
    .end local v1    # "jsone":Ltwitter4j/internal/org/json/JSONException;
    :catch_1
    move-exception v4

    .line 137
    .local v4, "te":Ltwitter4j/TwitterException;
    throw v4

    .line 133
    .end local v4    # "te":Ltwitter4j/TwitterException;
    .restart local v0    # "i":I
    .restart local v2    # "places":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/Place;>;"
    .restart local v3    # "size":I
    :cond_0
    return-object v2
.end method

.method private init(Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 10
    .param p1, "json"    # Ltwitter4j/internal/org/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 69
    :try_start_0
    const-string v6, "name"

    invoke-static {v6, p1}, Ltwitter4j/ParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltwitter4j/PlaceJSONImpl;->name:Ljava/lang/String;

    .line 70
    const-string v6, "street_address"

    invoke-static {v6, p1}, Ltwitter4j/ParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltwitter4j/PlaceJSONImpl;->streetAddress:Ljava/lang/String;

    .line 71
    const-string v6, "country_code"

    invoke-static {v6, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltwitter4j/PlaceJSONImpl;->countryCode:Ljava/lang/String;

    .line 72
    const-string v6, "id"

    invoke-static {v6, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltwitter4j/PlaceJSONImpl;->id:Ljava/lang/String;

    .line 73
    const-string v6, "country"

    invoke-static {v6, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltwitter4j/PlaceJSONImpl;->country:Ljava/lang/String;

    .line 74
    const-string v6, "place_type"

    invoke-static {v6, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltwitter4j/PlaceJSONImpl;->placeType:Ljava/lang/String;

    .line 75
    const-string v6, "url"

    invoke-static {v6, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltwitter4j/PlaceJSONImpl;->url:Ljava/lang/String;

    .line 76
    const-string v6, "full_name"

    invoke-static {v6, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltwitter4j/PlaceJSONImpl;->fullName:Ljava/lang/String;

    .line 77
    const-string v6, "bounding_box"

    invoke-virtual {p1, v6}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 78
    const-string v6, "bounding_box"

    invoke-virtual {p1, v6}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v1

    .line 79
    .local v1, "boundingBoxJSON":Ltwitter4j/internal/org/json/JSONObject;
    const-string v6, "type"

    invoke-static {v6, v1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltwitter4j/PlaceJSONImpl;->boundingBoxType:Ljava/lang/String;

    .line 80
    const-string v6, "coordinates"

    invoke-virtual {v1, v6}, Ltwitter4j/internal/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v0

    .line 81
    .local v0, "array":Ltwitter4j/internal/org/json/JSONArray;
    invoke-static {v0}, Ltwitter4j/GeoLocation;->coordinatesAsGeoLocationArray(Ltwitter4j/internal/org/json/JSONArray;)[[Ltwitter4j/GeoLocation;

    move-result-object v6

    iput-object v6, p0, Ltwitter4j/PlaceJSONImpl;->boundingBoxCoordinates:[[Ltwitter4j/GeoLocation;

    .line 87
    .end local v0    # "array":Ltwitter4j/internal/org/json/JSONArray;
    .end local v1    # "boundingBoxJSON":Ltwitter4j/internal/org/json/JSONObject;
    :goto_0
    const-string v6, "geometry"

    invoke-virtual {p1, v6}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 88
    const-string v6, "geometry"

    invoke-virtual {p1, v6}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v3

    .line 89
    .local v3, "geometryJSON":Ltwitter4j/internal/org/json/JSONObject;
    const-string v6, "type"

    invoke-static {v6, v3}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltwitter4j/PlaceJSONImpl;->geometryType:Ljava/lang/String;

    .line 90
    const-string v6, "coordinates"

    invoke-virtual {v3, v6}, Ltwitter4j/internal/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v0

    .line 91
    .restart local v0    # "array":Ltwitter4j/internal/org/json/JSONArray;
    invoke-static {v0}, Ltwitter4j/GeoLocation;->coordinatesAsGeoLocationArray(Ltwitter4j/internal/org/json/JSONArray;)[[Ltwitter4j/GeoLocation;

    move-result-object v6

    iput-object v6, p0, Ltwitter4j/PlaceJSONImpl;->geometryCoordinates:[[Ltwitter4j/GeoLocation;

    .line 97
    .end local v0    # "array":Ltwitter4j/internal/org/json/JSONArray;
    .end local v3    # "geometryJSON":Ltwitter4j/internal/org/json/JSONObject;
    :goto_1
    const-string v6, "contained_within"

    invoke-virtual {p1, v6}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 98
    const-string v6, "contained_within"

    invoke-virtual {p1, v6}, Ltwitter4j/internal/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v2

    .line 99
    .local v2, "containedWithInJSON":Ltwitter4j/internal/org/json/JSONArray;
    invoke-virtual {v2}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v6

    new-array v6, v6, [Ltwitter4j/Place;

    iput-object v6, p0, Ltwitter4j/PlaceJSONImpl;->containedWithIn:[Ltwitter4j/Place;

    .line 100
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    invoke-virtual {v2}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_3

    .line 101
    iget-object v6, p0, Ltwitter4j/PlaceJSONImpl;->containedWithIn:[Ltwitter4j/Place;

    new-instance v7, Ltwitter4j/PlaceJSONImpl;

    invoke-virtual {v2, v4}, Ltwitter4j/internal/org/json/JSONArray;->getJSONObject(I)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Ltwitter4j/PlaceJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/http/HttpResponse;)V

    aput-object v7, v6, v4

    .line 100
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 83
    .end local v2    # "containedWithInJSON":Ltwitter4j/internal/org/json/JSONArray;
    .end local v4    # "i":I
    :cond_0
    const/4 v6, 0x0

    iput-object v6, p0, Ltwitter4j/PlaceJSONImpl;->boundingBoxType:Ljava/lang/String;

    .line 84
    const/4 v6, 0x0

    check-cast v6, [[Ltwitter4j/GeoLocation;

    iput-object v6, p0, Ltwitter4j/PlaceJSONImpl;->boundingBoxCoordinates:[[Ltwitter4j/GeoLocation;
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v5

    .line 107
    .local v5, "jsone":Ltwitter4j/internal/org/json/JSONException;
    new-instance v6, Ltwitter4j/TwitterException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5}, Ltwitter4j/internal/org/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {p1}, Ltwitter4j/internal/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6

    .line 93
    .end local v5    # "jsone":Ltwitter4j/internal/org/json/JSONException;
    :cond_1
    const/4 v6, 0x0

    :try_start_1
    iput-object v6, p0, Ltwitter4j/PlaceJSONImpl;->geometryType:Ljava/lang/String;

    .line 94
    const/4 v6, 0x0

    check-cast v6, [[Ltwitter4j/GeoLocation;

    iput-object v6, p0, Ltwitter4j/PlaceJSONImpl;->geometryCoordinates:[[Ltwitter4j/GeoLocation;

    goto :goto_1

    .line 104
    :cond_2
    const/4 v6, 0x0

    iput-object v6, p0, Ltwitter4j/PlaceJSONImpl;->containedWithIn:[Ltwitter4j/Place;
    :try_end_1
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 109
    :cond_3
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 43
    check-cast p1, Ltwitter4j/Place;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ltwitter4j/PlaceJSONImpl;->compareTo(Ltwitter4j/Place;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ltwitter4j/Place;)I
    .locals 2
    .param p1, "that"    # Ltwitter4j/Place;

    .prologue
    .line 112
    iget-object v0, p0, Ltwitter4j/PlaceJSONImpl;->id:Ljava/lang/String;

    invoke-interface {p1}, Ltwitter4j/Place;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 184
    if-nez p1, :cond_1

    move v0, v1

    .line 190
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 187
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    if-eq p0, p1, :cond_0

    .line 190
    instance-of v2, p1, Ltwitter4j/Place;

    if-eqz v2, :cond_2

    check-cast p1, Ltwitter4j/Place;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-interface {p1}, Ltwitter4j/Place;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/PlaceJSONImpl;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public getBoundingBoxCoordinates()[[Ltwitter4j/GeoLocation;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Ltwitter4j/PlaceJSONImpl;->boundingBoxCoordinates:[[Ltwitter4j/GeoLocation;

    return-object v0
.end method

.method public getBoundingBoxType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Ltwitter4j/PlaceJSONImpl;->boundingBoxType:Ljava/lang/String;

    return-object v0
.end method

.method public getContainedWithIn()[Ltwitter4j/Place;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Ltwitter4j/PlaceJSONImpl;->containedWithIn:[Ltwitter4j/Place;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Ltwitter4j/PlaceJSONImpl;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Ltwitter4j/PlaceJSONImpl;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Ltwitter4j/PlaceJSONImpl;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getGeometryCoordinates()[[Ltwitter4j/GeoLocation;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Ltwitter4j/PlaceJSONImpl;->geometryCoordinates:[[Ltwitter4j/GeoLocation;

    return-object v0
.end method

.method public getGeometryType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Ltwitter4j/PlaceJSONImpl;->geometryType:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Ltwitter4j/PlaceJSONImpl;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Ltwitter4j/PlaceJSONImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Ltwitter4j/PlaceJSONImpl;->placeType:Ljava/lang/String;

    return-object v0
.end method

.method public getStreetAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Ltwitter4j/PlaceJSONImpl;->streetAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Ltwitter4j/PlaceJSONImpl;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Ltwitter4j/PlaceJSONImpl;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0x27

    .line 200
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "PlaceJSONImpl{name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/PlaceJSONImpl;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", streetAddress=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/PlaceJSONImpl;->streetAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", countryCode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/PlaceJSONImpl;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", id=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/PlaceJSONImpl;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", country=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/PlaceJSONImpl;->country:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", placeType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/PlaceJSONImpl;->placeType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", url=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/PlaceJSONImpl;->url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", fullName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/PlaceJSONImpl;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", boundingBoxType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/PlaceJSONImpl;->boundingBoxType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", boundingBoxCoordinates="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v0, p0, Ltwitter4j/PlaceJSONImpl;->boundingBoxCoordinates:[[Ltwitter4j/GeoLocation;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", geometryType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/PlaceJSONImpl;->geometryType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", geometryCoordinates="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v0, p0, Ltwitter4j/PlaceJSONImpl;->geometryCoordinates:[[Ltwitter4j/GeoLocation;

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", containedWithIn="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/PlaceJSONImpl;->containedWithIn:[Ltwitter4j/Place;

    if-nez v2, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Ltwitter4j/PlaceJSONImpl;->boundingBoxCoordinates:[[Ltwitter4j/GeoLocation;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ltwitter4j/PlaceJSONImpl;->geometryCoordinates:[[Ltwitter4j/GeoLocation;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Ltwitter4j/PlaceJSONImpl;->containedWithIn:[Ltwitter4j/Place;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_2
.end method
