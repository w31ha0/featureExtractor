.class public final Lcom/netflix/mediaclient/service/logging/apm/UIDataRequestSession;
.super Lcom/netflix/mediaclient/service/logging/apm/BaseApmSession;
.source "UIDataRequestSession.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "uiDataRequest"


# instance fields
.field private mRequestId:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/apm/BaseApmSession;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/apm/UIDataRequestSession;->mUrl:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/apm/UIDataRequestSession;->mRequestId:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;Lcom/netflix/mediaclient/service/logging/client/model/Error;)Lcom/netflix/mediaclient/service/logging/apm/model/UIDataRequestSessionEndedEvent;
    .locals 4

    .prologue
    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/apm/UIDataRequestSession;->mStarted:J

    sub-long/2addr v0, v2

    .line 44
    new-instance v2, Lcom/netflix/mediaclient/service/logging/apm/model/UIDataRequestSessionEndedEvent;

    invoke-direct {v2, v0, v1}, Lcom/netflix/mediaclient/service/logging/apm/model/UIDataRequestSessionEndedEvent;-><init>(J)V

    .line 45
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/apm/UIDataRequestSession;->getCategory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/logging/apm/model/UIDataRequestSessionEndedEvent;->setCategory(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/UIDataRequestSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/logging/apm/model/UIDataRequestSessionEndedEvent;->setSessionId(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;)V

    .line 47
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/UIDataRequestSession;->mUrl:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/logging/apm/model/UIDataRequestSessionEndedEvent;->setUrl(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/UIDataRequestSession;->mRequestId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/logging/apm/model/UIDataRequestSessionEndedEvent;->setRequestId(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v2, p3}, Lcom/netflix/mediaclient/service/logging/apm/model/UIDataRequestSessionEndedEvent;->setError(Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 50
    invoke-virtual {v2, p1}, Lcom/netflix/mediaclient/service/logging/apm/model/UIDataRequestSessionEndedEvent;->setReason(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    .line 51
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/UIDataRequestSession;->mRequestId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/logging/apm/model/UIDataRequestSessionEndedEvent;->setRequestId(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v2, p2}, Lcom/netflix/mediaclient/service/logging/apm/model/UIDataRequestSessionEndedEvent;->setResponse(Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;)V

    .line 53
    new-instance v0, Lcom/netflix/mediaclient/service/logging/apm/model/ConnectionClassCustomData;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/apm/model/ConnectionClassCustomData;-><init>()V

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/logging/apm/model/UIDataRequestSessionEndedEvent;->setConnectionClassCustomData(Lcom/netflix/mediaclient/service/logging/apm/model/ConnectionClassCustomData;)V

    .line 54
    return-object v2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string/jumbo v0, "uiDataRequest"

    return-object v0
.end method
