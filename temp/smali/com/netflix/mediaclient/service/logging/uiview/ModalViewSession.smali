.class public final Lcom/netflix/mediaclient/service/logging/uiview/ModalViewSession;
.super Lcom/netflix/mediaclient/service/logging/uiview/BaseUIViewSession;
.source "ModalViewSession.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "viewName"


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/uiview/BaseUIViewSession;-><init>(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 13
    return-void
.end method


# virtual methods
.method public createEndedEvent(Z)Lcom/netflix/mediaclient/service/logging/uiview/model/ModalViewEndedEvent;
    .locals 6

    .prologue
    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/uiview/ModalViewSession;->mStarted:J

    sub-long v2, v0, v2

    .line 31
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiview/model/ModalViewEndedEvent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiview/ModalViewSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/uiview/ModalViewSession;->getView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v4

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/logging/uiview/model/ModalViewEndedEvent;-><init>(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;JLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Z)V

    .line 32
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/uiview/ModalViewSession;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/uiview/model/ModalViewEndedEvent;->setCategory(Ljava/lang/String;)V

    .line 33
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiview/ModalViewSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/uiview/model/ModalViewEndedEvent;->setSessionId(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;)V

    .line 34
    return-object v0
.end method

.method public createStartEvent()Lcom/netflix/mediaclient/service/logging/uiview/model/ModalViewStartedEvent;
    .locals 2

    .prologue
    .line 22
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiview/model/ModalViewStartedEvent;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/uiview/ModalViewSession;->getView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/logging/uiview/model/ModalViewStartedEvent;-><init>(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 23
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/uiview/ModalViewSession;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/uiview/model/ModalViewStartedEvent;->setCategory(Ljava/lang/String;)V

    .line 24
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiview/ModalViewSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/uiview/model/ModalViewStartedEvent;->setSessionId(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;)V

    .line 25
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    const-string/jumbo v0, "viewName"

    return-object v0
.end method
