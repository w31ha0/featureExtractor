.class public Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;
.super Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;
.source "MediaCodecAudioRenderer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/util/MediaClock;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field private allowPositionDiscontinuity:Z

.field private audioSessionId:I

.field private final audioTrack:Lcom/google/android/exoplayer2/audio/AudioTrack;

.field private audioTrackHasData:Z

.field private currentPositionUs:J

.field private final eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

.field private lastFeedElapsedRealtimeMs:J

.field private passthroughEnabled:Z

.field private passthroughMediaFormat:Landroid/media/MediaFormat;

.field private pcmEncoding:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;)V
    .locals 2
    .param p1, "mediaCodecSelector"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

    .prologue
    .line 65
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;-><init>(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Z)V

    .line 66
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;)V
    .locals 6
    .param p1, "mediaCodecSelector"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;
    .param p2, "eventHandler"    # Landroid/os/Handler;
    .param p3, "eventListener"    # Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    .prologue
    .line 91
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;-><init>(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Z)V
    .locals 6
    .param p1, "mediaCodecSelector"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;
    .param p2, "drmSessionManager"    # Lcom/google/android/exoplayer2/drm/DrmSessionManager;
    .param p3, "playClearSamplesWithoutKeys"    # Z

    .prologue
    const/4 v4, 0x0

    .line 80
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;-><init>(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;)V
    .locals 8
    .param p1, "mediaCodecSelector"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;
    .param p3, "playClearSamplesWithoutKeys"    # Z
    .param p4, "eventHandler"    # Landroid/os/Handler;
    .param p5, "eventListener"    # Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager",
            "<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;Z",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 111
    .local p2, "drmSessionManager":Lcom/google/android/exoplayer2/drm/DrmSessionManager;, "Lcom/google/android/exoplayer2/drm/DrmSessionManager<Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;>;"
    const/4 v6, 0x0

    const/4 v7, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;-><init>(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioCapabilities;I)V

    .line 113
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioCapabilities;I)V
    .locals 1
    .param p1, "mediaCodecSelector"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;
    .param p3, "playClearSamplesWithoutKeys"    # Z
    .param p4, "eventHandler"    # Landroid/os/Handler;
    .param p5, "eventListener"    # Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;
    .param p6, "audioCapabilities"    # Lcom/google/android/exoplayer2/audio/AudioCapabilities;
    .param p7, "streamType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager",
            "<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;Z",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;",
            "Lcom/google/android/exoplayer2/audio/AudioCapabilities;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p2, "drmSessionManager":Lcom/google/android/exoplayer2/drm/DrmSessionManager;, "Lcom/google/android/exoplayer2/drm/DrmSessionManager<Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;-><init>(ILcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Z)V

    .line 137
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSessionId:I

    .line 138
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioTrack;

    invoke-direct {v0, p6, p7}, Lcom/google/android/exoplayer2/audio/AudioTrack;-><init>(Lcom/google/android/exoplayer2/audio/AudioCapabilities;I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lcom/google/android/exoplayer2/audio/AudioTrack;

    .line 139
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    invoke-direct {v0, p4, p5}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    .line 140
    return-void
.end method


# virtual methods
.method protected allowPassthrough(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lcom/google/android/exoplayer2/audio/AudioTrack;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioTrack;->isPassthroughSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected configureCodec(Landroid/media/MediaCodec;Lcom/google/android/exoplayer2/Format;Landroid/media/MediaCrypto;)V
    .locals 5
    .param p1, "codec"    # Landroid/media/MediaCodec;
    .param p2, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p3, "crypto"    # Landroid/media/MediaCrypto;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 194
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->passthroughEnabled:Z

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Format;->getFrameworkMediaFormatV16()Landroid/media/MediaFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->passthroughMediaFormat:Landroid/media/MediaFormat;

    .line 197
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->passthroughMediaFormat:Landroid/media/MediaFormat;

    const-string v1, "mime"

    const-string v2, "audio/raw"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->passthroughMediaFormat:Landroid/media/MediaFormat;

    invoke-virtual {p1, v0, v3, p3, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 199
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->passthroughMediaFormat:Landroid/media/MediaFormat;

    const-string v1, "mime"

    iget-object v2, p2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :goto_0
    return-void

    .line 201
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Format;->getFrameworkMediaFormatV16()Landroid/media/MediaFormat;

    move-result-object v0

    invoke-virtual {p1, v0, v3, p3, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 202
    iput-object v3, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->passthroughMediaFormat:Landroid/media/MediaFormat;

    goto :goto_0
.end method

.method protected getDecoderInfo(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;
    .locals 2
    .param p1, "mediaCodecSelector"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;
    .param p2, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p3, "requiresSecureDecoder"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    .line 169
    iget-object v1, p2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->allowPassthrough(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    invoke-interface {p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;->getPassthroughDecoderInfo()Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v0

    .line 171
    .local v0, "passthroughDecoderInfo":Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;
    if-eqz v0, :cond_0

    .line 172
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->passthroughEnabled:Z

    .line 177
    .end local v0    # "passthroughDecoderInfo":Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;
    :goto_0
    return-object v0

    .line 176
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->passthroughEnabled:Z

    .line 177
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getDecoderInfo(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getMediaClock()Lcom/google/android/exoplayer2/util/MediaClock;
    .locals 0

    .prologue
    .line 208
    return-object p0
.end method

.method public getPositionUs()J
    .locals 4

    .prologue
    .line 307
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lcom/google/android/exoplayer2/audio/AudioTrack;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->isEnded()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/audio/AudioTrack;->getCurrentPositionUs(Z)J

    move-result-wide v0

    .line 308
    .local v0, "newCurrentPositionUs":J
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 309
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->allowPositionDiscontinuity:Z

    if-eqz v2, :cond_1

    .line 310
    .end local v0    # "newCurrentPositionUs":J
    :goto_0
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->currentPositionUs:J

    .line 311
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->allowPositionDiscontinuity:Z

    .line 313
    :cond_0
    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->currentPositionUs:J

    return-wide v2

    .line 309
    .restart local v0    # "newCurrentPositionUs":J
    :cond_1
    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->currentPositionUs:J

    .line 310
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method protected handleAudioTrackDiscontinuity()V
    .locals 0

    .prologue
    .line 393
    return-void
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 2
    .param p1, "messageType"    # I
    .param p2, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 397
    packed-switch p1, :pswitch_data_0

    .line 405
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->handleMessage(ILjava/lang/Object;)V

    .line 408
    .end local p2    # "message":Ljava/lang/Object;
    :goto_0
    return-void

    .line 399
    .restart local p2    # "message":Ljava/lang/Object;
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lcom/google/android/exoplayer2/audio/AudioTrack;

    check-cast p2, Ljava/lang/Float;

    .end local p2    # "message":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioTrack;->setVolume(F)V

    goto :goto_0

    .line 402
    .restart local p2    # "message":Ljava/lang/Object;
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lcom/google/android/exoplayer2/audio/AudioTrack;

    check-cast p2, Landroid/media/PlaybackParams;

    .end local p2    # "message":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/audio/AudioTrack;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    goto :goto_0

    .line 397
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isEnded()Z
    .locals 1

    .prologue
    .line 297
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lcom/google/android/exoplayer2/audio/AudioTrack;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->hasPendingData()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lcom/google/android/exoplayer2/audio/AudioTrack;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->hasPendingData()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAudioSessionId(I)V
    .locals 0
    .param p1, "audioSessionId"    # I

    .prologue
    .line 252
    return-void
.end method

.method protected onCodecInitialized(Ljava/lang/String;JJ)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "initializedTimestampMs"    # J
    .param p4, "initializationDurationMs"    # J

    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->decoderInitialized(Ljava/lang/String;JJ)V

    .line 215
    return-void
.end method

.method protected onDisabled()V
    .locals 3

    .prologue
    .line 282
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSessionId:I

    .line 284
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lcom/google/android/exoplayer2/audio/AudioTrack;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 287
    :try_start_1
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onDisabled()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 289
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 290
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 293
    return-void

    .line 289
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 290
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    throw v0

    .line 286
    :catchall_1
    move-exception v0

    .line 287
    :try_start_2
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onDisabled()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 289
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 290
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    throw v0

    .line 289
    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 290
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    throw v0
.end method

.method protected onEnabled(Z)V
    .locals 2
    .param p1, "joining"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 256
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onEnabled(Z)V

    .line 257
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->enabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 258
    return-void
.end method

.method protected onInputFormatChanged(Lcom/google/android/exoplayer2/Format;)V
    .locals 2
    .param p1, "newFormat"    # Lcom/google/android/exoplayer2/Format;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 219
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onInputFormatChanged(Lcom/google/android/exoplayer2/Format;)V

    .line 220
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->inputFormatChanged(Lcom/google/android/exoplayer2/Format;)V

    .line 223
    const-string v0, "audio/raw"

    iget-object v1, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    :goto_0
    iput v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->pcmEncoding:I

    .line 225
    return-void

    .line 223
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method protected onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 8
    .param p1, "codec"    # Landroid/media/MediaCodec;
    .param p2, "outputFormat"    # Landroid/media/MediaFormat;

    .prologue
    const/4 v5, 0x0

    .line 229
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->passthroughMediaFormat:Landroid/media/MediaFormat;

    if-eqz v0, :cond_0

    const/4 v7, 0x1

    .line 230
    .local v7, "passthrough":Z
    :goto_0
    if-eqz v7, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->passthroughMediaFormat:Landroid/media/MediaFormat;

    const-string v4, "mime"

    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, "mimeType":Ljava/lang/String;
    :goto_1
    if-eqz v7, :cond_2

    iget-object v6, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->passthroughMediaFormat:Landroid/media/MediaFormat;

    .line 233
    .local v6, "format":Landroid/media/MediaFormat;
    :goto_2
    const-string v0, "channel-count"

    invoke-virtual {v6, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    .line 234
    .local v2, "channelCount":I
    const-string v0, "sample-rate"

    invoke-virtual {v6, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    .line 235
    .local v3, "sampleRate":I
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lcom/google/android/exoplayer2/audio/AudioTrack;

    iget v4, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->pcmEncoding:I

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/audio/AudioTrack;->configure(Ljava/lang/String;IIII)V

    .line 236
    return-void

    .end local v1    # "mimeType":Ljava/lang/String;
    .end local v2    # "channelCount":I
    .end local v3    # "sampleRate":I
    .end local v6    # "format":Landroid/media/MediaFormat;
    .end local v7    # "passthrough":Z
    :cond_0
    move v7, v5

    .line 229
    goto :goto_0

    .line 230
    .restart local v7    # "passthrough":Z
    :cond_1
    const-string v1, "audio/raw"

    goto :goto_1

    .restart local v1    # "mimeType":Ljava/lang/String;
    :cond_2
    move-object v6, p2

    .line 232
    goto :goto_2
.end method

.method protected onOutputStreamEnded()V
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lcom/google/android/exoplayer2/audio/AudioTrack;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->handleEndOfStream()V

    .line 389
    return-void
.end method

.method protected onPositionReset(JZ)V
    .locals 1
    .param p1, "positionUs"    # J
    .param p3, "joining"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 262
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onPositionReset(JZ)V

    .line 263
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lcom/google/android/exoplayer2/audio/AudioTrack;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->reset()V

    .line 264
    iput-wide p1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->currentPositionUs:J

    .line 265
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->allowPositionDiscontinuity:Z

    .line 266
    return-void
.end method

.method protected onStarted()V
    .locals 1

    .prologue
    .line 270
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onStarted()V

    .line 271
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lcom/google/android/exoplayer2/audio/AudioTrack;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->play()V

    .line 272
    return-void
.end method

.method protected onStopped()V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lcom/google/android/exoplayer2/audio/AudioTrack;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->pause()V

    .line 277
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onStopped()V

    .line 278
    return-void
.end method

.method protected processOutputBuffer(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z
    .locals 17
    .param p1, "positionUs"    # J
    .param p3, "elapsedRealtimeUs"    # J
    .param p5, "codec"    # Landroid/media/MediaCodec;
    .param p6, "buffer"    # Ljava/nio/ByteBuffer;
    .param p7, "bufferIndex"    # I
    .param p8, "bufferFlags"    # I
    .param p9, "bufferPresentationTimeUs"    # J
    .param p11, "shouldSkip"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 320
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->passthroughEnabled:Z

    if-eqz v4, :cond_0

    and-int/lit8 v4, p8, 0x2

    if-eqz v4, :cond_0

    .line 322
    const/4 v4, 0x0

    move-object/from16 v0, p5

    move/from16 v1, p7

    invoke-virtual {v0, v1, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 323
    const/4 v4, 0x1

    .line 383
    :goto_0
    return v4

    .line 326
    :cond_0
    if-eqz p11, :cond_1

    .line 327
    const/4 v4, 0x0

    move-object/from16 v0, p5

    move/from16 v1, p7

    invoke-virtual {v0, v1, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 328
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v5, v4, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    .line 329
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lcom/google/android/exoplayer2/audio/AudioTrack;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/audio/AudioTrack;->handleDiscontinuity()V

    .line 330
    const/4 v4, 0x1

    goto :goto_0

    .line 333
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lcom/google/android/exoplayer2/audio/AudioTrack;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/audio/AudioTrack;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_5

    .line 336
    :try_start_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSessionId:I

    if-nez v4, :cond_4

    .line 337
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lcom/google/android/exoplayer2/audio/AudioTrack;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/audio/AudioTrack;->initialize(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSessionId:I

    .line 338
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSessionId:I

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->audioSessionId(I)V

    .line 339
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSessionId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->onAudioSessionId(I)V

    .line 343
    :goto_1
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrackHasData:Z
    :try_end_0
    .catch Lcom/google/android/exoplayer2/audio/AudioTrack$InitializationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->getState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 348
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lcom/google/android/exoplayer2/audio/AudioTrack;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/audio/AudioTrack;->play()V

    .line 364
    :cond_2
    :goto_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lcom/google/android/exoplayer2/audio/AudioTrack;

    move-object/from16 v0, p6

    move-wide/from16 v1, p9

    invoke-virtual {v4, v0, v1, v2}, Lcom/google/android/exoplayer2/audio/AudioTrack;->handleBuffer(Ljava/nio/ByteBuffer;J)I

    move-result v12

    .line 365
    .local v12, "handleBufferResult":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->lastFeedElapsedRealtimeMs:J
    :try_end_1
    .catch Lcom/google/android/exoplayer2/audio/AudioTrack$WriteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 371
    and-int/lit8 v4, v12, 0x1

    if-eqz v4, :cond_3

    .line 372
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->handleAudioTrackDiscontinuity()V

    .line 373
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->allowPositionDiscontinuity:Z

    .line 377
    :cond_3
    and-int/lit8 v4, v12, 0x2

    if-eqz v4, :cond_6

    .line 378
    const/4 v4, 0x0

    move-object/from16 v0, p5

    move/from16 v1, p7

    invoke-virtual {v0, v1, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 379
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v5, v4, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    .line 380
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 341
    .end local v12    # "handleBufferResult":I
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lcom/google/android/exoplayer2/audio/AudioTrack;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSessionId:I

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/audio/AudioTrack;->initialize(I)I
    :try_end_2
    .catch Lcom/google/android/exoplayer2/audio/AudioTrack$InitializationException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 344
    :catch_0
    move-exception v11

    .line 345
    .local v11, "e":Lcom/google/android/exoplayer2/audio/AudioTrack$InitializationException;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->getIndex()I

    move-result v4

    invoke-static {v11, v4}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v4

    throw v4

    .line 352
    .end local v11    # "e":Lcom/google/android/exoplayer2/audio/AudioTrack$InitializationException;
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrackHasData:Z

    .line 353
    .local v10, "audioTrackHadData":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lcom/google/android/exoplayer2/audio/AudioTrack;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/audio/AudioTrack;->hasPendingData()Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrackHasData:Z

    .line 354
    if-eqz v10, :cond_2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrackHasData:Z

    if-nez v4, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->getState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 355
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->lastFeedElapsedRealtimeMs:J

    sub-long v8, v4, v14

    .line 356
    .local v8, "elapsedSinceLastFeedMs":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lcom/google/android/exoplayer2/audio/AudioTrack;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/audio/AudioTrack;->getBufferSizeUs()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v6

    .line 357
    .local v6, "bufferSizeMs":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lcom/google/android/exoplayer2/audio/AudioTrack;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/audio/AudioTrack;->getBufferSize()I

    move-result v5

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->audioTrackUnderrun(IJJ)V

    goto/16 :goto_2

    .line 366
    .end local v6    # "bufferSizeMs":J
    .end local v8    # "elapsedSinceLastFeedMs":J
    .end local v10    # "audioTrackHadData":Z
    :catch_1
    move-exception v11

    .line 367
    .local v11, "e":Lcom/google/android/exoplayer2/audio/AudioTrack$WriteException;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->getIndex()I

    move-result v4

    invoke-static {v11, v4}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v4

    throw v4

    .line 383
    .end local v11    # "e":Lcom/google/android/exoplayer2/audio/AudioTrack$WriteException;
    .restart local v12    # "handleBufferResult":I
    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method protected supportsFormat(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;)I
    .locals 9
    .param p1, "mediaCodecSelector"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;
    .param p2, "format"    # Lcom/google/android/exoplayer2/Format;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v8, -0x1

    const/4 v4, 0x0

    .line 145
    iget-object v3, p2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 146
    .local v3, "mimeType":Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 163
    :goto_0
    return v4

    .line 149
    :cond_0
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->allowPassthrough(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;->getPassthroughDecoderInfo()Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 150
    const/4 v4, 0x7

    goto :goto_0

    .line 152
    :cond_1
    invoke-interface {p1, v3, v4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;->getDecoderInfo(Ljava/lang/String;Z)Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v1

    .line 153
    .local v1, "decoderInfo":Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;
    if-nez v1, :cond_2

    move v4, v5

    .line 154
    goto :goto_0

    .line 157
    :cond_2
    sget v6, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_4

    iget v6, p2, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    if-eq v6, v8, :cond_3

    iget v6, p2, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    .line 159
    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isAudioSampleRateSupportedV21(I)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_3
    iget v6, p2, Lcom/google/android/exoplayer2/Format;->channelCount:I

    if-eq v6, v8, :cond_4

    iget v6, p2, Lcom/google/android/exoplayer2/Format;->channelCount:I

    .line 161
    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isAudioChannelCountSupportedV21(I)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    move v0, v5

    .line 162
    .local v0, "decoderCapable":Z
    :goto_1
    if-eqz v0, :cond_6

    const/4 v2, 0x3

    .line 163
    .local v2, "formatSupport":I
    :goto_2
    or-int/lit8 v4, v2, 0x4

    goto :goto_0

    .end local v0    # "decoderCapable":Z
    .end local v2    # "formatSupport":I
    :cond_5
    move v0, v4

    .line 161
    goto :goto_1

    .line 162
    .restart local v0    # "decoderCapable":Z
    :cond_6
    const/4 v2, 0x2

    goto :goto_2
.end method
