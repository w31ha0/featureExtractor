.class public Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;
.super Ljava/lang/Object;
.source "PlaybackVolumeMetric.java"


# static fields
.field public static final PLAYBACK_VOLUME_METRIC_MAX:I = 0xf4240

.field public static final PLAYBACK_VOLUME_METRIC_MIN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "nf_audio"


# instance fields
.field private mVolumeMetric:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    if-nez p1, :cond_0

    .line 30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Context can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    invoke-static {p1}, Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;->getPlaybackVolumeMetric(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;->mVolumeMetric:I

    .line 34
    return-void
.end method

.method private static getPlaybackVolumeMetric(Landroid/content/Context;)I
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 84
    const-string/jumbo v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 86
    if-nez v0, :cond_0

    .line 87
    const/4 v0, -0x1

    .line 99
    :goto_0
    return v0

    .line 90
    :cond_0
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 91
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 93
    if-lez v0, :cond_1

    const v2, 0xf4240

    mul-int/2addr v1, v2

    div-int v0, v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidPlaybackVolumeMetric(I)Z
    .locals 1

    .prologue
    .line 70
    if-ltz p0, :cond_0

    const v0, 0xf4240

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 49
    if-ne p0, p1, :cond_1

    .line 54
    :cond_0
    :goto_0
    return v0

    .line 50
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 52
    :cond_3
    check-cast p1, Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;

    .line 54
    iget v2, p0, Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;->mVolumeMetric:I

    iget v3, p1, Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;->mVolumeMetric:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getVolumeMetric()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;->mVolumeMetric:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;->mVolumeMetric:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PlaybackVolumeMetric{volumeMetric="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;->mVolumeMetric:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
