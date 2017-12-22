.class public Lcom/netflix/mediaclient/media/manifest/NfManifestParser;
.super Ljava/lang/Object;
.source "NfManifestParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static parseLocation(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/media/manifest/Location;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 86
    const/4 v0, 0x0

    .line 87
    if-eqz p0, :cond_0

    .line 88
    new-instance v0, Lcom/netflix/mediaclient/media/manifest/Location;

    invoke-direct {v0}, Lcom/netflix/mediaclient/media/manifest/Location;-><init>()V

    .line 89
    const-string/jumbo v1, "id"

    const-string/jumbo v2, ""

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/media/manifest/Location;->id:Ljava/lang/String;

    .line 90
    const-string/jumbo v1, "rank"

    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/netflix/mediaclient/media/manifest/Location;->rank:I

    .line 91
    const-string/jumbo v1, "level"

    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/netflix/mediaclient/media/manifest/Location;->level:I

    .line 92
    const-string/jumbo v1, "weight"

    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/netflix/mediaclient/media/manifest/Location;->weight:I

    .line 94
    :cond_0
    return-object v0
.end method

.method private static parseStore(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/media/manifest/Store;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 72
    const/4 v0, 0x0

    .line 73
    if-eqz p0, :cond_0

    .line 74
    new-instance v0, Lcom/netflix/mediaclient/media/manifest/Store;

    invoke-direct {v0}, Lcom/netflix/mediaclient/media/manifest/Store;-><init>()V

    .line 75
    const-string/jumbo v1, "name"

    const-string/jumbo v2, ""

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/media/manifest/Store;->name:Ljava/lang/String;

    .line 76
    const-string/jumbo v1, "rank"

    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/netflix/mediaclient/media/manifest/Store;->rank:I

    .line 77
    const-string/jumbo v1, "type"

    const-string/jumbo v2, ""

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/media/manifest/Store;->type:Ljava/lang/String;

    .line 78
    const-string/jumbo v1, "trackType"

    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/media/manifest/Store;->lowgrade:Z

    .line 79
    const-string/jumbo v1, "location"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/media/manifest/NfManifestParser;->parseLocation(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/media/manifest/Location;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/media/manifest/Store;->location:Lcom/netflix/mediaclient/media/manifest/Location;

    .line 80
    const-string/jumbo v1, "cdn_id"

    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/netflix/mediaclient/media/manifest/Store;->cdn_id:I

    .line 82
    :cond_0
    return-object v0
.end method

.method public static parseStream(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/media/manifest/Stream;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 36
    const/4 v0, 0x0

    .line 37
    if-eqz p0, :cond_2

    .line 38
    new-instance v3, Lcom/netflix/mediaclient/media/manifest/Stream;

    invoke-direct {v3}, Lcom/netflix/mediaclient/media/manifest/Stream;-><init>()V

    .line 39
    const-string/jumbo v0, "urls"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 40
    if-eqz v4, :cond_1

    move v1, v2

    .line 41
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 42
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/manifest/NfManifestParser;->parseUrl(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/media/manifest/Url;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    iget-object v5, v3, Lcom/netflix/mediaclient/media/manifest/Stream;->urls:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 48
    :cond_1
    const-string/jumbo v0, "new_stream_id"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/netflix/mediaclient/media/manifest/Stream;->new_stream_id:Ljava/lang/String;

    .line 49
    const-string/jumbo v0, "type"

    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v3, Lcom/netflix/mediaclient/media/manifest/Stream;->type:I

    .line 50
    const-string/jumbo v0, "bitrate"

    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v3, Lcom/netflix/mediaclient/media/manifest/Stream;->bitrate:I

    .line 51
    const-string/jumbo v0, "trackType"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/netflix/mediaclient/media/manifest/Stream;->trackType:Ljava/lang/String;

    .line 52
    const-string/jumbo v0, "downloadable_id"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/netflix/mediaclient/media/manifest/Stream;->downloadable_id:Ljava/lang/String;

    .line 53
    const-string/jumbo v0, "size"

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v0, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v3, Lcom/netflix/mediaclient/media/manifest/Stream;->size:Ljava/lang/Long;

    .line 54
    const-string/jumbo v0, "isDrm"

    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v3, Lcom/netflix/mediaclient/media/manifest/Stream;->isDrm:Z

    move-object v0, v3

    .line 57
    :cond_2
    return-object v0
.end method

.method private static parseUrl(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/media/manifest/Url;
    .locals 3

    .prologue
    .line 61
    const/4 v0, 0x0

    .line 62
    if-eqz p0, :cond_0

    .line 63
    new-instance v0, Lcom/netflix/mediaclient/media/manifest/Url;

    invoke-direct {v0}, Lcom/netflix/mediaclient/media/manifest/Url;-><init>()V

    .line 64
    const-string/jumbo v1, "cdn_id"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/netflix/mediaclient/media/manifest/Url;->cdn_id:I

    .line 65
    const-string/jumbo v1, "url"

    const-string/jumbo v2, ""

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/media/manifest/Url;->url:Ljava/lang/String;

    .line 66
    const-string/jumbo v1, "store"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/media/manifest/NfManifestParser;->parseStore(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/media/manifest/Store;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/media/manifest/Url;->store:Lcom/netflix/mediaclient/media/manifest/Store;

    .line 68
    :cond_0
    return-object v0
.end method

.method public static parseVideoTrack(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/media/manifest/VideoTrack;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 19
    new-instance v2, Lcom/netflix/mediaclient/media/manifest/VideoTrack;

    invoke-direct {v2}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;-><init>()V

    .line 20
    const-string/jumbo v1, "type"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v2, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->type:I

    .line 21
    const-string/jumbo v1, "new_track_id"

    const-string/jumbo v3, ""

    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->new_track_id:Ljava/lang/String;

    .line 22
    const-string/jumbo v1, "track_id"

    const-string/jumbo v3, ""

    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->track_id:Ljava/lang/String;

    .line 23
    const-string/jumbo v1, "streams"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 24
    if-eqz v3, :cond_1

    move v1, v0

    .line 25
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 26
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/manifest/NfManifestParser;->parseStream(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/media/manifest/Stream;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    iget-object v4, v2, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->streams:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 32
    :cond_1
    return-object v2
.end method
