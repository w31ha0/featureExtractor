.class public interface abstract Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlayerListener;
.super Ljava/lang/Object;
.source "StreamingPlayerListener.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/player/ISessionPlayerListener;


# virtual methods
.method public abstract handleAudioTrackChanged(Lcom/netflix/mediaclient/event/nrdp/player/AudioTrackChanged;)V
.end method

.method public abstract handlePlaybackReporterEvent(Lcom/netflix/mediaclient/event/nrdp/player/PlaybackReporterEvent;)V
.end method

.method public abstract handlePlayerClosed(Lcom/netflix/mediaclient/media/JPlayer/VideoPlaybackQualStat;)V
.end method

.method public abstract handlePlayerReady()V
.end method

.method public abstract handlePtsUpdate(I)V
.end method

.method public abstract handleStreamPresenting(Lcom/netflix/mediaclient/event/nrdp/player/StreamPresenting;)V
.end method

.method public abstract handleStreamingStat(Lcom/netflix/mediaclient/event/nrdp/player/StreamingStat;)V
.end method
