.class public final Lcom/netflix/mediaclient/javabridge/invoke/player/SetVideoBitrateRanges;
.super Lcom/netflix/mediaclient/javabridge/invoke/player/PlayerInvoke;
.source "SetVideoBitrateRanges.java"


# static fields
.field protected static final METHOD_SET_VIDEO_BITRATERANGES:Ljava/lang/String; = "setVideoBitrateRanges"

.field private static final PROPERTY_maxBitrate:Ljava/lang/String; = "max"

.field private static final PROPERTY_minBitrate:Ljava/lang/String; = "min"

.field private static final PROPERTY_profile:Ljava/lang/String; = "profile"

.field private static final PROPERTY_ranges:Ljava/lang/String; = "ranges"


# direct methods
.method public constructor <init>(II)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 38
    const-string/jumbo v0, "setVideoBitrateRanges"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/javabridge/invoke/player/PlayerInvoke;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->getSupportedVideoProfiles()[Ljava/lang/String;

    move-result-object v2

    .line 47
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 50
    :try_start_0
    array-length v4, v2

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v2, v0

    .line 51
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 52
    const-string/jumbo v7, "min"

    invoke-virtual {v6, v7, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 53
    const-string/jumbo v7, "max"

    invoke-virtual {v6, v7, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 54
    const-string/jumbo v7, "profile"

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 59
    const-string/jumbo v2, "ranges"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/invoke/player/SetVideoBitrateRanges;->arguments:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_1
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    const-string/jumbo v2, "nf_invoke"

    const-string/jumbo v3, "Failed to create JSON object"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1
.end method

.method public constructor <init>([Lcom/netflix/mediaclient/media/bitrate/VideoBitrateRange;)V
    .locals 2

    .prologue
    .line 27
    const-string/jumbo v0, "setVideoBitrateRanges"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/javabridge/invoke/player/PlayerInvoke;-><init>(Ljava/lang/String;)V

    .line 28
    if-nez p1, :cond_0

    .line 29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Range can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/javabridge/invoke/player/SetVideoBitrateRanges;->setArguments([Lcom/netflix/mediaclient/media/bitrate/VideoBitrateRange;)V

    .line 32
    return-void
.end method

.method private setArguments([Lcom/netflix/mediaclient/media/bitrate/VideoBitrateRange;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 74
    .line 76
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 79
    :try_start_0
    array-length v3, p1

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, p1, v0

    .line 80
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 81
    const-string/jumbo v6, "min"

    invoke-virtual {v4}, Lcom/netflix/mediaclient/media/bitrate/VideoBitrateRange;->getMinimal()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 82
    const-string/jumbo v6, "max"

    invoke-virtual {v4}, Lcom/netflix/mediaclient/media/bitrate/VideoBitrateRange;->getMaximal()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 83
    const-string/jumbo v6, "profile"

    invoke-virtual {v4}, Lcom/netflix/mediaclient/media/bitrate/VideoBitrateRange;->getProfile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 88
    const-string/jumbo v3, "ranges"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/invoke/player/SetVideoBitrateRanges;->arguments:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_1
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    const-string/jumbo v2, "nf_invoke"

    const-string/jumbo v3, "Failed to create JSON object"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1
.end method
