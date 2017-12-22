.class public interface abstract Lcom/netflix/mediaclient/service/player/IPlaybackSession$PlaybackSessionCallback;
.super Ljava/lang/Object;
.source "IPlaybackSession.java"


# virtual methods
.method public abstract handleBuffering(Z)V
.end method

.method public abstract handleError(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackError;)V
.end method

.method public abstract handlePrepared()V
.end method

.method public abstract handleStarted()V
.end method

.method public abstract handleStopped()V
.end method

.method public abstract handleSubtitleUpdate(Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;)V
.end method

.method public abstract handleUpdatePts(I)V
.end method
