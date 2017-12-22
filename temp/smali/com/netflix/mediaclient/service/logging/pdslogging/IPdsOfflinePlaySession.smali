.class public interface abstract Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsOfflinePlaySession;
.super Ljava/lang/Object;
.source "IPdsOfflinePlaySession.java"


# virtual methods
.method public abstract notifyPlayProgress(Landroid/content/Context;JLorg/json/JSONObject;)V
.end method

.method public abstract onManifest(Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;)V
.end method

.method public abstract pause(Lorg/json/JSONObject;)V
.end method

.method public abstract play(Lorg/json/JSONObject;)V
.end method

.method public abstract seekTo(J)V
.end method

.method public abstract stop(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
.end method
