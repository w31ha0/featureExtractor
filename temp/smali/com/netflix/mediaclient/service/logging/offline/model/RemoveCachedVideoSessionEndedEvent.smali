.class public final Lcom/netflix/mediaclient/service/logging/offline/model/RemoveCachedVideoSessionEndedEvent;
.super Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;
.source "RemoveCachedVideoSessionEndedEvent.java"


# static fields
.field public static final OXID:Ljava/lang/String; = "oxid"

.field private static final TAG:Ljava/lang/String; = "nf_log_RemoveCachedVideoSessionEnded"

.field private static final UIA_NAME:Ljava/lang/String; = "RemoveCachedVideo"


# instance fields
.field private oxid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;JLjava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V
    .locals 10

    .prologue
    .line 55
    const-string/jumbo v2, "RemoveCachedVideo"

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;JLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 57
    invoke-static {p4}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const-string/jumbo v0, "AddCachedVideoSessionEndedEvent: oxid is missing!"

    .line 59
    new-instance v1, Lorg/json/JSONException;

    invoke-direct {v1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/LogUtils;->reportErrorSafely(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    iput-object p4, p0, Lcom/netflix/mediaclient/service/logging/offline/model/RemoveCachedVideoSessionEndedEvent;->oxid:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;-><init>(Lorg/json/JSONObject;)V

    .line 41
    if-eqz p1, :cond_0

    .line 42
    const-string/jumbo v0, "oxid"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/offline/model/RemoveCachedVideoSessionEndedEvent;->oxid:Ljava/lang/String;

    .line 44
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/offline/model/RemoveCachedVideoSessionEndedEvent;->oxid:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 45
    const-string/jumbo v0, "AddCachedVideoSessionEndedEvent: oxid is missing!"

    .line 46
    new-instance v1, Lorg/json/JSONException;

    invoke-direct {v1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/LogUtils;->reportErrorSafely(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    :cond_0
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
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/offline/model/RemoveCachedVideoSessionEndedEvent;->oxid:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    const-string/jumbo v1, "oxid"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/offline/model/RemoveCachedVideoSessionEndedEvent;->oxid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    :cond_0
    return-object v0
.end method

.method public isMemberEvent()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    return v0
.end method
