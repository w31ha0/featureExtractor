.class public interface abstract Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;
.super Ljava/lang/Object;
.source "MediaCodecAudioTrackRenderer.java"

# interfaces
.implements Lcom/google/android/exoplayer/MediaCodecTrackRenderer$EventListener;


# virtual methods
.method public abstract onAudioTrackInitializationError(Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;)V
.end method

.method public abstract onAudioTrackUnderrun(IJJ)V
.end method

.method public abstract onAudioTrackWriteError(Lcom/google/android/exoplayer/audio/AudioTrack$WriteException;)V
.end method
