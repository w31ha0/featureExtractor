.class public final Lcom/netflix/mediaclient/service/logging/offline/model/DownloadSessionStartedEvent;
.super Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;
.source "DownloadSessionStartedEvent.java"


# static fields
.field private static final DXID:Ljava/lang/String; = "dxid"

.field private static final UIA_NAME:Ljava/lang/String; = "Download"


# instance fields
.field private dxid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 46
    const-string/jumbo v0, "Download"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    const-string/jumbo v0, "DownloadSessionStartedEvent: dxid is missing!"

    .line 50
    new-instance v1, Lorg/json/JSONException;

    invoke-direct {v1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/LogUtils;->reportErrorSafely(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/offline/model/DownloadSessionStartedEvent;->dxid:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;-><init>(Lorg/json/JSONObject;)V

    .line 35
    if-eqz p1, :cond_0

    .line 36
    const-string/jumbo v0, "dxid"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/offline/model/DownloadSessionStartedEvent;->dxid:Ljava/lang/String;

    .line 38
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/offline/model/DownloadSessionStartedEvent;->dxid:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 39
    const-string/jumbo v0, "CachedPlaySessionEndedEvent: oxid is missing!"

    .line 40
    new-instance v1, Lorg/json/JSONException;

    invoke-direct {v1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/LogUtils;->reportErrorSafely(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    :cond_0
    return-void
.end method


# virtual methods
.method protected getData()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 59
    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;->getData()Lorg/json/JSONObject;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/offline/model/DownloadSessionStartedEvent;->dxid:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    const-string/jumbo v1, "dxid"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/offline/model/DownloadSessionStartedEvent;->dxid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    :cond_0
    return-object v0
.end method
