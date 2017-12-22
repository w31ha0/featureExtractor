.class public Lcom/netflix/mediaclient/media/JPlayer/VideoPlaybackQualStat;
.super Ljava/lang/Object;
.source "VideoPlaybackQualStat.java"


# static fields
.field private static final MAX_CONSECUTIVE_DROPFRAMES:I = 0xfa


# instance fields
.field private decoderName:Ljava/lang/String;

.field private maxContinuousRenderFramesDropped:J

.field private renderFramesDropped:J

.field private renderedFrames:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJJ)V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/netflix/mediaclient/media/JPlayer/VideoPlaybackQualStat;->decoderName:Ljava/lang/String;

    .line 23
    sub-long v0, p2, p4

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/VideoPlaybackQualStat;->renderedFrames:J

    .line 24
    iput-wide p4, p0, Lcom/netflix/mediaclient/media/JPlayer/VideoPlaybackQualStat;->renderFramesDropped:J

    .line 25
    iput-wide p6, p0, Lcom/netflix/mediaclient/media/JPlayer/VideoPlaybackQualStat;->maxContinuousRenderFramesDropped:J

    .line 26
    return-void
.end method


# virtual methods
.method public disableVP9IfRequired()Z
    .locals 4

    .prologue
    .line 63
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/VideoPlaybackQualStat;->decoderName:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/VideoPlaybackQualStat;->decoderName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "vp9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/netflix/mediaclient/media/JPlayer/VideoPlaybackQualStat;->getMaxContinuousRenderFramesDropped()J

    move-result-wide v0

    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 65
    const/4 v0, 0x1

    .line 67
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDecoderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/VideoPlaybackQualStat;->decoderName:Ljava/lang/String;

    return-object v0
.end method

.method public getJSONRepresentation()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 29
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 31
    :try_start_0
    const-string/jumbo v0, "numren"

    iget-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/VideoPlaybackQualStat;->renderedFrames:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 32
    const-string/jumbo v0, "numrendrop"

    iget-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/VideoPlaybackQualStat;->renderFramesDropped:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 33
    const-string/jumbo v0, "maxcontinousrendrop"

    iget-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/VideoPlaybackQualStat;->maxContinuousRenderFramesDropped:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    return-object v1

    .line 34
    :catch_0
    move-exception v0

    .line 35
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getMaxContinuousRenderFramesDropped()J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/VideoPlaybackQualStat;->maxContinuousRenderFramesDropped:J

    return-wide v0
.end method

.method public getRenderFramesDropped()J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/VideoPlaybackQualStat;->renderFramesDropped:J

    return-wide v0
.end method

.method public getRenderedFrames()J
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/VideoPlaybackQualStat;->renderedFrames:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "VideoPlaybackQualStat{decoderName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/VideoPlaybackQualStat;->decoderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", renderedFrames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/VideoPlaybackQualStat;->renderedFrames:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", renderFramesDropped="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/VideoPlaybackQualStat;->renderFramesDropped:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", maxContinuousRenderFramesDropped="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/VideoPlaybackQualStat;->maxContinuousRenderFramesDropped:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
