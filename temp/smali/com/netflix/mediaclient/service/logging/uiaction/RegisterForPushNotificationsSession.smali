.class public Lcom/netflix/mediaclient/service/logging/uiaction/RegisterForPushNotificationsSession;
.super Lcom/netflix/mediaclient/service/logging/uiaction/BaseUIActionSession;
.source "RegisterForPushNotificationsSession.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "RegisterForPushNotifications"


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/logging/uiaction/BaseUIActionSession;-><init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 23
    return-void
.end method


# virtual methods
.method public createEndedEvent(Ljava/lang/String;ZZLcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)Lcom/netflix/mediaclient/service/logging/uiaction/model/RegisterForPushNotificationsEndedEvent;
    .locals 12

    .prologue
    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/uiaction/RegisterForPushNotificationsSession;->mStarted:J

    sub-long v6, v0, v2

    .line 39
    new-instance v1, Lcom/netflix/mediaclient/service/logging/uiaction/model/RegisterForPushNotificationsEndedEvent;

    iget-object v5, p0, Lcom/netflix/mediaclient/service/logging/uiaction/RegisterForPushNotificationsSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    iget-object v8, p0, Lcom/netflix/mediaclient/service/logging/uiaction/RegisterForPushNotificationsSession;->mView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iget-object v9, p0, Lcom/netflix/mediaclient/service/logging/uiaction/RegisterForPushNotificationsSession;->mAction:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-direct/range {v1 .. v11}, Lcom/netflix/mediaclient/service/logging/uiaction/model/RegisterForPushNotificationsEndedEvent;-><init>(Ljava/lang/String;ZZLcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;JLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 40
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/uiaction/RegisterForPushNotificationsSession;->getCategory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/logging/uiaction/model/RegisterForPushNotificationsEndedEvent;->setCategory(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/RegisterForPushNotificationsSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/logging/uiaction/model/RegisterForPushNotificationsEndedEvent;->setSessionId(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;)V

    .line 42
    return-object v1
.end method

.method public createStartedEvent()Lcom/netflix/mediaclient/service/logging/uiaction/model/RegisterForPushNotificationsStartedEvent;
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiaction/model/RegisterForPushNotificationsStartedEvent;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/uiaction/model/RegisterForPushNotificationsStartedEvent;-><init>()V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-string/jumbo v0, "RegisterForPushNotifications"

    return-object v0
.end method
