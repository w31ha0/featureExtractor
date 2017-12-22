.class public Lcom/netflix/mediaclient/service/logging/uiaction/model/RegisterForPushNotificationsEndedEvent;
.super Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;
.source "RegisterForPushNotificationsEndedEvent.java"


# static fields
.field private static final DEVICE_TOKEN:Ljava/lang/String; = "deviceToken"

.field private static final INFO_OPT_STATUS:Ljava/lang/String; = "infoOptStatus"

.field private static final PUSH_OPT_STATUS:Ljava/lang/String; = "pushOptStatus"

.field private static final UIA_NAME:Ljava/lang/String; = "RegisterForPushNotifications"


# instance fields
.field private mDeviceToken:Ljava/lang/String;

.field private mInfoOptStatus:Z

.field private mPushOptStatus:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZLcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;JLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V
    .locals 11

    .prologue
    .line 47
    const-string/jumbo v2, "RegisterForPushNotifications"

    move-object v1, p0

    move-object v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    invoke-direct/range {v1 .. v9}, Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;JLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 48
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/RegisterForPushNotificationsEndedEvent;->mDeviceToken:Ljava/lang/String;

    .line 49
    iput-boolean p2, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/RegisterForPushNotificationsEndedEvent;->mPushOptStatus:Z

    .line 50
    iput-boolean p3, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/RegisterForPushNotificationsEndedEvent;->mInfoOptStatus:Z

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;-><init>(Lorg/json/JSONObject;)V

    .line 44
    return-void
.end method


# virtual methods
.method protected getData()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 61
    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;->getData()Lorg/json/JSONObject;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/RegisterForPushNotificationsEndedEvent;->mDeviceToken:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 64
    const-string/jumbo v1, "deviceToken"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/RegisterForPushNotificationsEndedEvent;->mDeviceToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    :cond_0
    const-string/jumbo v1, "infoOptStatus"

    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/RegisterForPushNotificationsEndedEvent;->mInfoOptStatus:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 68
    const-string/jumbo v1, "pushOptStatus"

    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/RegisterForPushNotificationsEndedEvent;->mPushOptStatus:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 70
    return-object v0
.end method

.method public isMemberEvent()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method
