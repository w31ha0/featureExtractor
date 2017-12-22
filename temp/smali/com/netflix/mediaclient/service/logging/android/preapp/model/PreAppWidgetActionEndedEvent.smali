.class public Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetActionEndedEvent;
.super Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;
.source "PreAppWidgetActionEndedEvent.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_preapp_actionEndedEvent"


# instance fields
.field private widgetActionData:Ljava/lang/String;

.field private widgetLogData:Ljava/lang/String;

.field private widgetLogObj:Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogData;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;JLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 27
    invoke-direct/range {p0 .. p8}, Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;JLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 28
    iput-object p9, p0, Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetActionEndedEvent;->widgetLogData:Ljava/lang/String;

    .line 29
    iput-object p10, p0, Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetActionEndedEvent;->widgetActionData:Ljava/lang/String;

    .line 30
    invoke-static {}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogData;

    invoke-virtual {v0, p9, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogData;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetActionEndedEvent;->widgetLogObj:Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogData;

    .line 31
    return-void
.end method


# virtual methods
.method protected getCustomData()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 49
    const/4 v2, 0x0

    .line 51
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetActionEndedEvent;->widgetLogData:Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 52
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetActionEndedEvent;->widgetActionData:Ljava/lang/String;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 56
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 59
    :goto_1
    const-string/jumbo v2, "nf_preapp_actionEndedEvent"

    const-string/jumbo v3, "failed to merge widget data"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    :goto_2
    return-object v0

    :cond_0
    move-object v0, v1

    .line 60
    goto :goto_2

    .line 58
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_1
.end method

.method protected getData()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;->getData()Lorg/json/JSONObject;

    move-result-object v0

    .line 41
    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 44
    :cond_0
    return-object v0
.end method

.method public isMemberEvent()Z
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetActionEndedEvent;->widgetLogObj:Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogData;->isMember()Z

    move-result v0

    return v0
.end method
