.class public Lcom/netflix/mediaclient/service/logging/iko/IkoModeSession;
.super Lcom/netflix/mediaclient/service/logging/uiaction/BaseUIActionSession;
.source "IkoModeSession.java"


# static fields
.field protected static final CATEGORY:Ljava/lang/String; = "iko"

.field public static final NAME:Ljava/lang/String; = "ikoMode"


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/logging/uiaction/BaseUIActionSession;-><init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 18
    return-void
.end method


# virtual methods
.method public createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)Lcom/netflix/mediaclient/service/logging/iko/model/IkoModeEndedEvent;
    .locals 10

    .prologue
    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/iko/IkoModeSession;->mStarted:J

    sub-long v4, v0, v2

    .line 34
    new-instance v1, Lcom/netflix/mediaclient/service/logging/iko/model/IkoModeEndedEvent;

    const-string/jumbo v2, "ikoMode"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/iko/IkoModeSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    iget-object v6, p0, Lcom/netflix/mediaclient/service/logging/iko/IkoModeSession;->mView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iget-object v7, p0, Lcom/netflix/mediaclient/service/logging/iko/IkoModeSession;->mAction:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v1 .. v9}, Lcom/netflix/mediaclient/service/logging/iko/model/IkoModeEndedEvent;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;JLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 36
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/iko/IkoModeSession;->getCategory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/logging/iko/model/IkoModeEndedEvent;->setCategory(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/iko/IkoModeSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/logging/iko/model/IkoModeEndedEvent;->setSessionId(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;)V

    .line 38
    return-object v1
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    const-string/jumbo v0, "iko"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-string/jumbo v0, "ikoMode"

    return-object v0
.end method
