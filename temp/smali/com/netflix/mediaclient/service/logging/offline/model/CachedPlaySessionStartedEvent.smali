.class public Lcom/netflix/mediaclient/service/logging/offline/model/CachedPlaySessionStartedEvent;
.super Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;
.source "CachedPlaySessionStartedEvent.java"


# static fields
.field private static final LOGICAL_END:Ljava/lang/String; = "logicalEnd"

.field private static final LOGICAL_START:Ljava/lang/String; = "logicalStart"

.field private static final OXID:Ljava/lang/String; = "oxid"

.field private static final RUNTIME:Ljava/lang/String; = "runtime"

.field private static final UIA_NAME:Ljava/lang/String; = "CachedPlay"

.field private static final VIDEOID:Ljava/lang/String; = "videoId"


# instance fields
.field private logicalEnd:I

.field private logicalStart:I

.field private oxid:Ljava/lang/String;

.field private runtime:I

.field private videoId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 2

    .prologue
    .line 65
    const-string/jumbo v0, "CachedPlay"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;-><init>(Ljava/lang/String;)V

    .line 67
    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/offline/model/CachedPlaySessionStartedEvent;->videoId:Ljava/lang/String;

    .line 68
    iput p3, p0, Lcom/netflix/mediaclient/service/logging/offline/model/CachedPlaySessionStartedEvent;->runtime:I

    .line 69
    iput p4, p0, Lcom/netflix/mediaclient/service/logging/offline/model/CachedPlaySessionStartedEvent;->logicalStart:I

    .line 70
    iput p5, p0, Lcom/netflix/mediaclient/service/logging/offline/model/CachedPlaySessionStartedEvent;->logicalEnd:I

    .line 72
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    const-string/jumbo v0, "CachedPlaySessionEndedEvent: oxid is missing!"

    .line 74
    new-instance v1, Lorg/json/JSONException;

    invoke-direct {v1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/LogUtils;->reportErrorSafely(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/offline/model/CachedPlaySessionStartedEvent;->oxid:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;-><init>(Lorg/json/JSONObject;)V

    .line 54
    if-eqz p1, :cond_0

    .line 55
    const-string/jumbo v0, "oxid"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/offline/model/CachedPlaySessionStartedEvent;->oxid:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/offline/model/CachedPlaySessionStartedEvent;->oxid:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 58
    const-string/jumbo v0, "CachedPlaySessionEndedEvent: oxid is missing!"

    .line 59
    new-instance v1, Lorg/json/JSONException;

    invoke-direct {v1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/LogUtils;->reportErrorSafely(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    :cond_0
    return-void
.end method


# virtual methods
.method protected getData()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 83
    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;->getData()Lorg/json/JSONObject;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/offline/model/CachedPlaySessionStartedEvent;->oxid:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    const-string/jumbo v1, "oxid"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/offline/model/CachedPlaySessionStartedEvent;->oxid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/offline/model/CachedPlaySessionStartedEvent;->videoId:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    const-string/jumbo v1, "videoId"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/offline/model/CachedPlaySessionStartedEvent;->videoId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    :cond_1
    const-string/jumbo v1, "runtime"

    iget v2, p0, Lcom/netflix/mediaclient/service/logging/offline/model/CachedPlaySessionStartedEvent;->runtime:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 91
    const-string/jumbo v1, "logicalStart"

    iget v2, p0, Lcom/netflix/mediaclient/service/logging/offline/model/CachedPlaySessionStartedEvent;->logicalStart:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 92
    const-string/jumbo v1, "logicalEnd"

    iget v2, p0, Lcom/netflix/mediaclient/service/logging/offline/model/CachedPlaySessionStartedEvent;->logicalEnd:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 93
    return-object v0
.end method
