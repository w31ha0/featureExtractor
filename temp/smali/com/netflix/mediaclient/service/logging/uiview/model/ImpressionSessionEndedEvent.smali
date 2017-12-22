.class public Lcom/netflix/mediaclient/service/logging/uiview/model/ImpressionSessionEndedEvent;
.super Lcom/netflix/mediaclient/service/logging/uiview/model/BaseUIViewSessionEndedEvent;
.source "ImpressionSessionEndedEvent.java"


# static fields
.field protected static final ERROR:Ljava/lang/String; = "error"

.field protected static final GUID:Ljava/lang/String; = "originatingRequestGuid"

.field protected static final MODEL:Ljava/lang/String; = "model"

.field private static final SESSION_NAME:Ljava/lang/String; = "impression"

.field protected static final SUCCESS:Ljava/lang/String; = "success"

.field protected static final VIEW:Ljava/lang/String; = "view"


# instance fields
.field private mError:Lcom/netflix/mediaclient/service/logging/client/model/Error;

.field private mModel:Lorg/json/JSONObject;

.field private mOriginatingRequestGuid:Ljava/lang/String;

.field private mSuccess:Z

.field private mView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;JLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;ZLcom/netflix/mediaclient/service/logging/client/model/Error;)V
    .locals 2

    .prologue
    .line 36
    const-string/jumbo v0, "impression"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/netflix/mediaclient/service/logging/uiview/model/BaseUIViewSessionEndedEvent;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;J)V

    .line 37
    iput-object p4, p0, Lcom/netflix/mediaclient/service/logging/uiview/model/ImpressionSessionEndedEvent;->mView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    .line 38
    iput-object p5, p0, Lcom/netflix/mediaclient/service/logging/uiview/model/ImpressionSessionEndedEvent;->mOriginatingRequestGuid:Ljava/lang/String;

    .line 39
    iput-boolean p6, p0, Lcom/netflix/mediaclient/service/logging/uiview/model/ImpressionSessionEndedEvent;->mSuccess:Z

    .line 40
    iput-object p7, p0, Lcom/netflix/mediaclient/service/logging/uiview/model/ImpressionSessionEndedEvent;->mError:Lcom/netflix/mediaclient/service/logging/client/model/Error;

    .line 41
    return-void
.end method


# virtual methods
.method protected getData()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 54
    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/uiview/model/BaseUIViewSessionEndedEvent;->getData()Lorg/json/JSONObject;

    move-result-object v0

    .line 55
    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiview/model/ImpressionSessionEndedEvent;->mView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    if-eqz v1, :cond_1

    .line 59
    const-string/jumbo v1, "view"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/uiview/model/ImpressionSessionEndedEvent;->mView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiview/model/ImpressionSessionEndedEvent;->mError:Lcom/netflix/mediaclient/service/logging/client/model/Error;

    if-eqz v1, :cond_2

    .line 62
    const-string/jumbo v1, "error"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/uiview/model/ImpressionSessionEndedEvent;->mError:Lcom/netflix/mediaclient/service/logging/client/model/Error;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/client/model/Error;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiview/model/ImpressionSessionEndedEvent;->mOriginatingRequestGuid:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 66
    const-string/jumbo v1, "originatingRequestGuid"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/uiview/model/ImpressionSessionEndedEvent;->mOriginatingRequestGuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiview/model/ImpressionSessionEndedEvent;->mModel:Lorg/json/JSONObject;

    if-eqz v1, :cond_4

    .line 70
    const-string/jumbo v1, "model"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/uiview/model/ImpressionSessionEndedEvent;->mModel:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    :cond_4
    const-string/jumbo v1, "success"

    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/logging/uiview/model/ImpressionSessionEndedEvent;->mSuccess:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 74
    return-object v0
.end method

.method public setModel(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/uiview/model/ImpressionSessionEndedEvent;->mModel:Lorg/json/JSONObject;

    .line 45
    return-void
.end method
