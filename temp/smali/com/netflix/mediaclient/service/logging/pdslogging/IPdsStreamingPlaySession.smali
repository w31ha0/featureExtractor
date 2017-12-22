.class public interface abstract Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsStreamingPlaySession;
.super Ljava/lang/Object;
.source "IPdsStreamingPlaySession.java"


# virtual methods
.method public abstract close(J)V
.end method

.method public abstract collectManifestInfo(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;)V
.end method

.method public abstract pause(J)V
.end method

.method public abstract play(J)V
.end method

.method public abstract resume(J)V
.end method

.method public abstract stop(J)V
.end method

.method public abstract streamPresentingEvent(JLcom/netflix/mediaclient/event/nrdp/player/StreamPresenting;)V
.end method

.method public abstract subtitleChanged(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract subtitleVisibilityChanged(JZ)V
.end method

.method public abstract updatePts(J)V
.end method
