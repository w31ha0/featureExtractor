.class public Lcom/netflix/mediaclient/service/logging/iko/IkoMomentSession;
.super Lcom/netflix/mediaclient/service/logging/uiaction/BaseUIActionSession;
.source "IkoMomentSession.java"


# static fields
.field protected static final CATEGORY:Ljava/lang/String; = "iko"

.field public static final NAME:Ljava/lang/String; = "ikoMoment"


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
.method public createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/netflix/mediaclient/service/logging/iko/model/IkoMomentEndedEvent;
    .locals 14

    .prologue
    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/iko/IkoMomentSession;->mStarted:J

    sub-long v4, v0, v2

    .line 39
    new-instance v1, Lcom/netflix/mediaclient/service/logging/iko/model/IkoMomentEndedEvent;

    const-string/jumbo v2, "ikoMoment"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/iko/IkoMomentSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    iget-object v6, p0, Lcom/netflix/mediaclient/service/logging/iko/IkoMomentSession;->mView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iget-object v7, p0, Lcom/netflix/mediaclient/service/logging/iko/IkoMomentSession;->mAction:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-object v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    move-object/from16 v13, p6

    invoke-direct/range {v1 .. v13}, Lcom/netflix/mediaclient/service/logging/iko/model/IkoMomentEndedEvent;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;JLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/iko/IkoMomentSession;->getCategory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/logging/iko/model/IkoMomentEndedEvent;->setCategory(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/iko/IkoMomentSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/logging/iko/model/IkoMomentEndedEvent;->setSessionId(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;)V

    .line 43
    return-object v1
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string/jumbo v0, "iko"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string/jumbo v0, "ikoMoment"

    return-object v0
.end method
