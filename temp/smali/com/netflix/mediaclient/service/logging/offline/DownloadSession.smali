.class public final Lcom/netflix/mediaclient/service/logging/offline/DownloadSession;
.super Lcom/netflix/mediaclient/service/logging/uiaction/BaseUIActionSession;
.source "DownloadSession.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "Download"


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/logging/uiaction/BaseUIActionSession;-><init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 25
    return-void
.end method


# virtual methods
.method public createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)Lcom/netflix/mediaclient/service/logging/offline/model/DownloadSessionEndedEvent;
    .locals 8

    .prologue
    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/offline/DownloadSession;->mStarted:J

    sub-long v2, v0, v2

    .line 46
    new-instance v0, Lcom/netflix/mediaclient/service/logging/offline/model/DownloadSessionEndedEvent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/offline/DownloadSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/logging/offline/DownloadSession;->mView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iget-object v5, p0, Lcom/netflix/mediaclient/service/logging/offline/DownloadSession;->mAction:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/logging/offline/model/DownloadSessionEndedEvent;-><init>(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;JLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 47
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/offline/DownloadSession;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/offline/model/DownloadSessionEndedEvent;->setCategory(Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/offline/DownloadSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/offline/model/DownloadSessionEndedEvent;->setSessionId(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;)V

    .line 49
    return-object v0
.end method

.method public createStartedEvent(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/offline/model/DownloadSessionStartedEvent;
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/netflix/mediaclient/service/logging/offline/model/DownloadSessionStartedEvent;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/logging/offline/model/DownloadSessionStartedEvent;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/offline/DownloadSession;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/offline/model/DownloadSessionStartedEvent;->setCategory(Ljava/lang/String;)V

    .line 39
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/offline/DownloadSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/offline/model/DownloadSessionStartedEvent;->setSessionId(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;)V

    .line 40
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string/jumbo v0, "Download"

    return-object v0
.end method
