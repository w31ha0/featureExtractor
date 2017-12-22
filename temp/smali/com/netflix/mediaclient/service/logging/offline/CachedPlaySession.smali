.class public Lcom/netflix/mediaclient/service/logging/offline/CachedPlaySession;
.super Lcom/netflix/mediaclient/service/logging/uiaction/BaseUIActionSession;
.source "CachedPlaySession.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "CachedPlay"


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/logging/uiaction/BaseUIActionSession;-><init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 22
    return-void
.end method


# virtual methods
.method public createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)Lcom/netflix/mediaclient/service/logging/offline/model/CachedPlaySessionEndedEvent;
    .locals 8

    .prologue
    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/offline/CachedPlaySession;->mStarted:J

    sub-long v2, v0, v2

    .line 43
    new-instance v0, Lcom/netflix/mediaclient/service/logging/offline/model/CachedPlaySessionEndedEvent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/offline/CachedPlaySession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/logging/offline/CachedPlaySession;->mView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iget-object v5, p0, Lcom/netflix/mediaclient/service/logging/offline/CachedPlaySession;->mAction:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/logging/offline/model/CachedPlaySessionEndedEvent;-><init>(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;JLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 44
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/offline/CachedPlaySession;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/offline/model/CachedPlaySessionEndedEvent;->setCategory(Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/offline/CachedPlaySession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/offline/model/CachedPlaySessionEndedEvent;->setSessionId(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;)V

    .line 46
    return-object v0
.end method

.method public createStartedEvent(Ljava/lang/String;Ljava/lang/String;III)Lcom/netflix/mediaclient/service/logging/offline/model/CachedPlaySessionStartedEvent;
    .locals 6

    .prologue
    .line 34
    new-instance v0, Lcom/netflix/mediaclient/service/logging/offline/model/CachedPlaySessionStartedEvent;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/logging/offline/model/CachedPlaySessionStartedEvent;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    .line 35
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/offline/CachedPlaySession;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/offline/model/CachedPlaySessionStartedEvent;->setCategory(Ljava/lang/String;)V

    .line 36
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/offline/CachedPlaySession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/offline/model/CachedPlaySessionStartedEvent;->setSessionId(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;)V

    .line 37
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const-string/jumbo v0, "CachedPlay"

    return-object v0
.end method
