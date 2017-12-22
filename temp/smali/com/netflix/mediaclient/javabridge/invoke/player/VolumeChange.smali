.class public Lcom/netflix/mediaclient/javabridge/invoke/player/VolumeChange;
.super Lcom/netflix/mediaclient/javabridge/invoke/player/PlayerInvoke;
.source "VolumeChange.java"


# static fields
.field private static final METHOD:Ljava/lang/String; = "volumeChange"

.field private static final PROPERTY_OLD_VOLUME:Ljava/lang/String; = "oldvolume"

.field private static final PROPERTY_VOLUME:Ljava/lang/String; = "volume"

.field private static final TARGET:Ljava/lang/String; = "media"


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;)V
    .locals 1

    .prologue
    .line 24
    const-string/jumbo v0, "volumeChange"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/javabridge/invoke/player/PlayerInvoke;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/javabridge/invoke/player/VolumeChange;->setArguments(Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;)V

    .line 26
    return-void
.end method

.method private setArguments(Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;)V
    .locals 3

    .prologue
    .line 32
    .line 34
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 35
    const-string/jumbo v1, "oldvolume"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;->getVolumeMetric()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 36
    const-string/jumbo v1, "volume"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;->getVolumeMetric()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 38
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/invoke/player/VolumeChange;->arguments:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    const-string/jumbo v1, "nf_invoke"

    const-string/jumbo v2, "Failed to create JSON object"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
