.class public final Lcom/netflix/mediaclient/service/logging/uiaction/model/StartPlayEndedEvent;
.super Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;
.source "StartPlayEndedEvent.java"


# static fields
.field public static final PLAYER_TYPE:Ljava/lang/String; = "playerType"

.field public static final PLAY_LOCATION:Ljava/lang/String; = "playLocation"

.field public static final RANK_TITLE:Ljava/lang/String; = "rankTitle"

.field private static final UIA_NAME:Ljava/lang/String; = "startPlay"


# instance fields
.field private mPlayLocation:Lcom/netflix/mediaclient/ui/common/PlayLocationType;

.field private mRankTitle:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;JLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/Integer;Lcom/netflix/mediaclient/ui/common/PlayLocationType;)V
    .locals 12

    .prologue
    .line 53
    const-string/jumbo v4, "startPlay"

    move-object v3, p0

    move-object v5, p1

    move-wide v6, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    invoke-direct/range {v3 .. v11}, Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;JLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 54
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/StartPlayEndedEvent;->mRankTitle:Ljava/lang/Integer;

    .line 55
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/StartPlayEndedEvent;->mPlayLocation:Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;-><init>(Lorg/json/JSONObject;)V

    .line 49
    const-string/jumbo v0, "rankTitle"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getIntegerObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/StartPlayEndedEvent;->mRankTitle:Ljava/lang/Integer;

    .line 50
    return-void
.end method


# virtual methods
.method protected getData()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 73
    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;->getData()Lorg/json/JSONObject;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/StartPlayEndedEvent;->mRankTitle:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 75
    const-string/jumbo v1, "rankTitle"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/StartPlayEndedEvent;->mRankTitle:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 77
    :cond_0
    const-string/jumbo v1, "playerType"

    const-string/jumbo v2, "JPLAYER2"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/StartPlayEndedEvent;->mPlayLocation:Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    if-eqz v1, :cond_1

    .line 79
    const-string/jumbo v1, "playLocation"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/StartPlayEndedEvent;->mPlayLocation:Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/common/PlayLocationType;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    :cond_1
    return-object v0
.end method

.method public isMemberEvent()Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    return v0
.end method
