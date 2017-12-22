.class public final Lcom/netflix/mediaclient/service/logging/uiaction/model/UpgradeStreamsEndedEvent;
.super Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;
.source "UpgradeStreamsEndedEvent.java"


# static fields
.field private static final CURRENT_STREAMS:Ljava/lang/String; = "currentStreams"

.field private static final END_STREAMS:Ljava/lang/String; = "endStreams"

.field private static final UIA_NAME:Ljava/lang/String; = "upgradeStreams"


# instance fields
.field private mCurrentStreams:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;

.field private mEndStreams:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;JLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;)V
    .locals 12

    .prologue
    .line 49
    const-string/jumbo v4, "upgradeStreams"

    move-object v3, p0

    move-object v5, p1

    move-wide v6, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    invoke-direct/range {v3 .. v11}, Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;JLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 50
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/UpgradeStreamsEndedEvent;->mCurrentStreams:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;

    .line 51
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/UpgradeStreamsEndedEvent;->mEndStreams:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;

    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;-><init>(Lorg/json/JSONObject;)V

    .line 44
    const-string/jumbo v0, "currentStreams"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/UpgradeStreamsEndedEvent;->mCurrentStreams:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;

    .line 45
    const-string/jumbo v0, "endStreams"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/UpgradeStreamsEndedEvent;->mEndStreams:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;

    .line 46
    return-void
.end method


# virtual methods
.method protected getData()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 61
    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;->getData()Lorg/json/JSONObject;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/UpgradeStreamsEndedEvent;->mCurrentStreams:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;

    if-eqz v1, :cond_0

    .line 63
    const-string/jumbo v1, "currentStreams"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/UpgradeStreamsEndedEvent;->mCurrentStreams:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/UpgradeStreamsEndedEvent;->mEndStreams:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;

    if-eqz v1, :cond_1

    .line 66
    const-string/jumbo v1, "endStreams"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/UpgradeStreamsEndedEvent;->mEndStreams:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    :cond_1
    return-object v0
.end method

.method public isMemberEvent()Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    return v0
.end method
