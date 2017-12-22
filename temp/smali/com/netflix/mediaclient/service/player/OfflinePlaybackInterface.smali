.class public interface abstract Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;
.super Ljava/lang/Object;
.source "OfflinePlaybackInterface.java"


# virtual methods
.method public abstract abortManifestRequest(J)V
.end method

.method public abstract notifyPause(J)V
.end method

.method public abstract notifyPlay(J)V
.end method

.method public abstract notifyPlayError(J)V
.end method

.method public abstract notifyPlayProgress(JJ)V
.end method

.method public abstract notifyStop(J)V
.end method

.method public abstract requestOfflineManifest(JLcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$ManifestCallback;)V
.end method
