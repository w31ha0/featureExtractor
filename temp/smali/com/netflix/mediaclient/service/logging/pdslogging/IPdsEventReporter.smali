.class public interface abstract Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsEventReporter;
.super Ljava/lang/Object;
.source "IPdsEventReporter.java"


# virtual methods
.method public abstract createPdsOfflinePlaySession(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/netflix/mediaclient/ui/common/PlayContext;)Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsOfflinePlaySession;
.end method

.method public abstract createPdsStreamingPlaySession(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Handler;Lorg/json/JSONObject;Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsStreamingBookmark;)Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsStreamingPlaySession;
.end method

.method public abstract onDownloadOfFirstTimeOfflineManifest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/pdslogging/download/DownloadContext;Lorg/json/JSONObject;)V
.end method
