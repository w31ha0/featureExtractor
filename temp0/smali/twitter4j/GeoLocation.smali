.class public Ltwitter4j/GeoLocation;
.super Ljava/lang/Object;
.source "GeoLocation.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x434604a578b0df0fL


# instance fields
.field protected latitude:D

.field protected longitude:D


# direct methods
.method public constructor <init>(DD)V
    .locals 0
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-wide p1, p0, Ltwitter4j/GeoLocation;->latitude:D

    .line 51
    iput-wide p3, p0, Ltwitter4j/GeoLocation;->longitude:D

    .line 52
    return-void
.end method

.method static coordinatesAsGeoLocationArray(Ltwitter4j/internal/org/json/JSONArray;)[[Ltwitter4j/GeoLocation;
    .locals 12
    .param p0, "coordinates"    # Ltwitter4j/internal/org/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 78
    :try_start_0
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v6

    new-array v1, v6, [[Ltwitter4j/GeoLocation;

    .line 79
    .local v1, "boundingBox":[[Ltwitter4j/GeoLocation;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 80
    invoke-virtual {p0, v3}, Ltwitter4j/internal/org/json/JSONArray;->getJSONArray(I)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v0

    .line 81
    .local v0, "array":Ltwitter4j/internal/org/json/JSONArray;
    invoke-virtual {v0}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v6

    new-array v6, v6, [Ltwitter4j/GeoLocation;

    aput-object v6, v1, v3

    .line 82
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    invoke-virtual {v0}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_0

    .line 83
    invoke-virtual {v0, v4}, Ltwitter4j/internal/org/json/JSONArray;->getJSONArray(I)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v2

    .line 84
    .local v2, "coordinate":Ltwitter4j/internal/org/json/JSONArray;
    aget-object v6, v1, v3

    new-instance v7, Ltwitter4j/GeoLocation;

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ltwitter4j/internal/org/json/JSONArray;->getDouble(I)D

    move-result-wide v8

    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Ltwitter4j/internal/org/json/JSONArray;->getDouble(I)D

    move-result-wide v10

    invoke-direct {v7, v8, v9, v10, v11}, Ltwitter4j/GeoLocation;-><init>(DD)V

    aput-object v7, v6, v4
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 79
    .end local v2    # "coordinate":Ltwitter4j/internal/org/json/JSONArray;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 88
    .end local v0    # "array":Ltwitter4j/internal/org/json/JSONArray;
    .end local v1    # "boundingBox":[[Ltwitter4j/GeoLocation;
    .end local v3    # "i":I
    .end local v4    # "j":I
    :catch_0
    move-exception v5

    .line 89
    .local v5, "jsone":Ltwitter4j/internal/org/json/JSONException;
    new-instance v6, Ltwitter4j/TwitterException;

    invoke-direct {v6, v5}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v6

    .line 87
    .end local v5    # "jsone":Ltwitter4j/internal/org/json/JSONException;
    .restart local v1    # "boundingBox":[[Ltwitter4j/GeoLocation;
    .restart local v3    # "i":I
    :cond_1
    return-object v1
.end method

.method static getInstance(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/GeoLocation;
    .locals 8
    .param p0, "json"    # Ltwitter4j/internal/org/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 62
    :try_start_0
    const-string v3, "geo"

    invoke-virtual {p0, v3}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 63
    const-string v3, "geo"

    invoke-virtual {p0, v3}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v3

    const-string v4, "coordinates"

    invoke-virtual {v3, v4}, Ltwitter4j/internal/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "coordinates":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 66
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "point":[Ljava/lang/String;
    new-instance v3, Ltwitter4j/GeoLocation;

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const/4 v6, 0x1

    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Ltwitter4j/GeoLocation;-><init>(DD)V
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .end local v0    # "coordinates":Ljava/lang/String;
    .end local v2    # "point":[Ljava/lang/String;
    :goto_0
    return-object v3

    .line 70
    :catch_0
    move-exception v1

    .line 71
    .local v1, "jsone":Ltwitter4j/internal/org/json/JSONException;
    new-instance v3, Ltwitter4j/TwitterException;

    invoke-direct {v3, v1}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 73
    .end local v1    # "jsone":Ltwitter4j/internal/org/json/JSONException;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 111
    if-ne p0, p1, :cond_1

    .line 119
    :cond_0
    :goto_0
    return v1

    .line 112
    :cond_1
    instance-of v3, p1, Ltwitter4j/GeoLocation;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 114
    check-cast v0, Ltwitter4j/GeoLocation;

    .line 116
    .local v0, "that":Ltwitter4j/GeoLocation;
    invoke-virtual {v0}, Ltwitter4j/GeoLocation;->getLatitude()D

    move-result-wide v3

    iget-wide v5, p0, Ltwitter4j/GeoLocation;->latitude:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    goto :goto_0

    .line 117
    :cond_3
    invoke-virtual {v0}, Ltwitter4j/GeoLocation;->getLongitude()D

    move-result-wide v3

    iget-wide v5, p0, Ltwitter4j/GeoLocation;->longitude:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 98
    iget-wide v0, p0, Ltwitter4j/GeoLocation;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 106
    iget-wide v0, p0, Ltwitter4j/GeoLocation;->longitude:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 10

    .prologue
    const-wide/16 v3, 0x0

    const/16 v9, 0x20

    const-wide/16 v7, 0x0

    .line 126
    iget-wide v5, p0, Ltwitter4j/GeoLocation;->latitude:D

    cmpl-double v5, v5, v7

    if-eqz v5, :cond_0

    iget-wide v5, p0, Ltwitter4j/GeoLocation;->latitude:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 127
    .local v1, "temp":J
    :goto_0
    ushr-long v5, v1, v9

    xor-long/2addr v5, v1

    long-to-int v0, v5

    .line 128
    .local v0, "result":I
    iget-wide v5, p0, Ltwitter4j/GeoLocation;->longitude:D

    cmpl-double v5, v5, v7

    if-eqz v5, :cond_1

    iget-wide v3, p0, Ltwitter4j/GeoLocation;->longitude:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 129
    :goto_1
    mul-int/lit8 v3, v0, 0x1f

    ushr-long v4, v1, v9

    xor-long/2addr v4, v1

    long-to-int v4, v4

    add-int v0, v3, v4

    .line 130
    return v0

    .end local v0    # "result":I
    .end local v1    # "temp":J
    :cond_0
    move-wide v1, v3

    .line 126
    goto :goto_0

    .restart local v0    # "result":I
    .restart local v1    # "temp":J
    :cond_1
    move-wide v1, v3

    .line 128
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 135
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "GeoLocation{latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/GeoLocation;->latitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/GeoLocation;->longitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
