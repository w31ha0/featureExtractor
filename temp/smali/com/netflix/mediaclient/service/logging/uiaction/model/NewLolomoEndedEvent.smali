.class public final Lcom/netflix/mediaclient/service/logging/uiaction/model/NewLolomoEndedEvent;
.super Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;
.source "NewLolomoEndedEvent.java"


# static fields
.field public static final MERCURY_EVENT_GUID:Ljava/lang/String; = "mercuryEventGUID"

.field public static final MERCURY_MESSAGE_GUID:Ljava/lang/String; = "mercuryMessageGUID"

.field public static final RENO_CAUSE:Ljava/lang/String; = "cause"

.field public static final RENO_CREATION_TIME:Ljava/lang/String; = "creationTS"

.field public static final RENO_MESSAGE_GUID:Ljava/lang/String; = "messageGUID"

.field private static final UIA_NAME:Ljava/lang/String; = "NewLolomo"


# instance fields
.field private mercuryEventGuid:Ljava/lang/String;

.field private mercuryMessageGuid:Ljava/lang/String;

.field private renoCause:Ljava/lang/String;

.field private renoCreationTimestamp:J

.field private renoMessageGuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;JLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 33
    const-string/jumbo v4, "NewLolomo"

    move-object v3, p0

    move-object v5, p1

    move-wide v6, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    invoke-direct/range {v3 .. v11}, Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;JLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 34
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/NewLolomoEndedEvent;->renoCause:Ljava/lang/String;

    .line 35
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/NewLolomoEndedEvent;->renoMessageGuid:Ljava/lang/String;

    .line 36
    move-wide/from16 v0, p10

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/NewLolomoEndedEvent;->renoCreationTimestamp:J

    .line 37
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/NewLolomoEndedEvent;->mercuryMessageGuid:Ljava/lang/String;

    .line 38
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/NewLolomoEndedEvent;->mercuryEventGuid:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method protected getData()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 49
    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;->getData()Lorg/json/JSONObject;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/NewLolomoEndedEvent;->renoCause:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    const-string/jumbo v1, "cause"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/NewLolomoEndedEvent;->renoCause:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/NewLolomoEndedEvent;->renoMessageGuid:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    const-string/jumbo v1, "messageGUID"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/NewLolomoEndedEvent;->renoMessageGuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    :cond_1
    const-string/jumbo v1, "creationTS"

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/NewLolomoEndedEvent;->renoCreationTimestamp:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 61
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/NewLolomoEndedEvent;->mercuryMessageGuid:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 62
    const-string/jumbo v1, "mercuryMessageGUID"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/NewLolomoEndedEvent;->mercuryMessageGuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/NewLolomoEndedEvent;->mercuryEventGuid:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 65
    const-string/jumbo v1, "mercuryEventGUID"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/NewLolomoEndedEvent;->mercuryEventGuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    :cond_3
    return-object v0
.end method

.method public isMemberEvent()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method
