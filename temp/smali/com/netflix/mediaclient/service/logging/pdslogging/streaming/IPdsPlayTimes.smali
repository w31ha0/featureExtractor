.class public interface abstract Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes;
.super Ljava/lang/Object;
.source "IPdsPlayTimes.java"


# virtual methods
.method public abstract getCurrentMediaId()Ljava/lang/String;
.end method

.method public abstract getJSONObject()Lorg/json/JSONObject;
.end method

.method public abstract stopTicker(J)V
.end method

.method public abstract streamChanged(Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract subtitleVisibilityChanged(Z)V
.end method

.method public abstract updateTicker(J)V
.end method
