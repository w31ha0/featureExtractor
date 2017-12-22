.class public Lcom/netflix/mediaclient/service/logging/iko/model/IkoVideoPlaybackEndedEvent;
.super Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;
.source "IkoVideoPlaybackEndedEvent.java"


# static fields
.field protected static final CATEGORY:Ljava/lang/String; = "iko"

.field private static final DATA_FIELD_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field private static final DATA_FIELD_ERROR_SUB_CODE:Ljava/lang/String; = "errorSubCode"

.field private static final DATA_FIELD_REASON:Ljava/lang/String; = "reason"

.field private static final DATA_FIELD_URL:Ljava/lang/String; = "url"

.field protected static final NAME:Ljava/lang/String; = "ikoVideoPlaybackEnded"


# instance fields
.field protected mCompletionReason:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

.field protected mErrorCode:I

.field protected mErrorSubCode:I

.field private mVideoUrl:Ljava/lang/String;

.field protected mView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;JLcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;J)V

    .line 39
    iput-object p6, p0, Lcom/netflix/mediaclient/service/logging/iko/model/IkoVideoPlaybackEndedEvent;->mVideoUrl:Ljava/lang/String;

    .line 40
    iput p7, p0, Lcom/netflix/mediaclient/service/logging/iko/model/IkoVideoPlaybackEndedEvent;->mErrorCode:I

    .line 41
    iput p8, p0, Lcom/netflix/mediaclient/service/logging/iko/model/IkoVideoPlaybackEndedEvent;->mErrorSubCode:I

    .line 42
    iput-object p5, p0, Lcom/netflix/mediaclient/service/logging/iko/model/IkoVideoPlaybackEndedEvent;->mCompletionReason:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    .line 44
    const-string/jumbo v0, "iko"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/iko/model/IkoVideoPlaybackEndedEvent;->category:Ljava/lang/String;

    .line 45
    const-string/jumbo v0, "ikoVideoPlaybackEnded"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/iko/model/IkoVideoPlaybackEndedEvent;->name:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method protected getData()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 50
    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;->getData()Lorg/json/JSONObject;

    move-result-object v0

    .line 51
    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/iko/model/IkoVideoPlaybackEndedEvent;->mCompletionReason:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    if-eqz v1, :cond_1

    .line 56
    const-string/jumbo v1, "reason"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/iko/model/IkoVideoPlaybackEndedEvent;->mCompletionReason:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    :cond_1
    const-string/jumbo v1, "errorCode"

    iget v2, p0, Lcom/netflix/mediaclient/service/logging/iko/model/IkoVideoPlaybackEndedEvent;->mErrorCode:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 60
    const-string/jumbo v1, "errorSubCode"

    iget v2, p0, Lcom/netflix/mediaclient/service/logging/iko/model/IkoVideoPlaybackEndedEvent;->mErrorSubCode:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 62
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/iko/model/IkoVideoPlaybackEndedEvent;->mVideoUrl:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/iko/model/IkoVideoPlaybackEndedEvent;->mVideoUrl:Ljava/lang/String;

    .line 64
    :goto_0
    const-string/jumbo v2, "url"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    return-object v0

    .line 62
    :cond_2
    const-string/jumbo v1, "unknown"

    goto :goto_0
.end method
