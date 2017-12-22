.class public Lcom/netflix/mediaclient/service/logging/uiaction/SerializeLolomoSession;
.super Lcom/netflix/mediaclient/service/logging/uiaction/BaseUIActionSession;
.source "SerializeLolomoSession.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "serializeLolomo"


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/logging/uiaction/BaseUIActionSession;-><init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 13
    return-void
.end method


# virtual methods
.method public createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;J)Lcom/netflix/mediaclient/service/logging/uiaction/model/SerializeLolomoEndedEvent;
    .locals 13

    .prologue
    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/uiaction/SerializeLolomoSession;->mStarted:J

    sub-long v4, v0, v2

    .line 24
    new-instance v1, Lcom/netflix/mediaclient/service/logging/uiaction/model/SerializeLolomoEndedEvent;

    const-string/jumbo v2, "serializeLolomo"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/uiaction/SerializeLolomoSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    iget-object v6, p0, Lcom/netflix/mediaclient/service/logging/uiaction/SerializeLolomoSession;->mView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iget-object v7, p0, Lcom/netflix/mediaclient/service/logging/uiaction/SerializeLolomoSession;->mAction:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-object v8, p1

    move-object v9, p2

    move-wide/from16 v10, p3

    invoke-direct/range {v1 .. v11}, Lcom/netflix/mediaclient/service/logging/uiaction/model/SerializeLolomoEndedEvent;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;JLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;J)V

    .line 26
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/uiaction/SerializeLolomoSession;->getCategory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/logging/uiaction/model/SerializeLolomoEndedEvent;->setCategory(Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/SerializeLolomoSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/logging/uiaction/model/SerializeLolomoEndedEvent;->setSessionId(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;)V

    .line 28
    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    const-string/jumbo v0, "serializeLolomo"

    return-object v0
.end method
