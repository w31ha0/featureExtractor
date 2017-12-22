.class public interface abstract Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerListener;
.super Ljava/lang/Object;
.source "IPlayer.java"


# virtual methods
.method public abstract isListening()Z
.end method

.method public abstract onCompletion()V
.end method

.method public abstract onPlaybackError(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackError;)V
.end method

.method public abstract onPrepared(Lcom/netflix/mediaclient/media/Watermark;)V
.end method

.method public abstract onStalled()V
.end method

.method public abstract onStarted()V
.end method

.method public abstract onSubtitleChange(Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;)V
.end method

.method public abstract onSubtitleFailed()V
.end method

.method public abstract onUpdatePts(J)V
.end method
