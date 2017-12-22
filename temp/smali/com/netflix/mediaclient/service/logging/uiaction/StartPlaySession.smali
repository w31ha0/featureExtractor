.class public final Lcom/netflix/mediaclient/service/logging/uiaction/StartPlaySession;
.super Lcom/netflix/mediaclient/service/logging/uiaction/BaseUIActionSession;
.source "StartPlaySession.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "startPlay"


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/logging/uiaction/BaseUIActionSession;-><init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 26
    return-void
.end method


# virtual methods
.method public createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/Integer;Lcom/netflix/mediaclient/ui/common/PlayLocationType;)Lcom/netflix/mediaclient/service/logging/uiaction/model/StartPlayEndedEvent;
    .locals 10

    .prologue
    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/uiaction/StartPlaySession;->mStarted:J

    sub-long v2, v0, v2

    .line 39
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiaction/model/StartPlayEndedEvent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiaction/StartPlaySession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/logging/uiaction/StartPlaySession;->mView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iget-object v5, p0, Lcom/netflix/mediaclient/service/logging/uiaction/StartPlaySession;->mAction:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/netflix/mediaclient/service/logging/uiaction/model/StartPlayEndedEvent;-><init>(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;JLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/Integer;Lcom/netflix/mediaclient/ui/common/PlayLocationType;)V

    .line 40
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/uiaction/StartPlaySession;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/uiaction/model/StartPlayEndedEvent;->setCategory(Ljava/lang/String;)V

    .line 41
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiaction/StartPlaySession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/uiaction/model/StartPlayEndedEvent;->setSessionId(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;)V

    .line 42
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string/jumbo v0, "startPlay"

    return-object v0
.end method
