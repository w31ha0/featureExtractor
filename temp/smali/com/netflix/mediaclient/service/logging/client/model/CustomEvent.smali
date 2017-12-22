.class public Lcom/netflix/mediaclient/service/logging/client/model/CustomEvent;
.super Lcom/netflix/mediaclient/service/logging/client/model/Event;
.source "CustomEvent.java"


# instance fields
.field customData:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/client/model/Event;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/client/model/CustomEvent;->name:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/client/model/CustomEvent;->modalView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    .line 15
    if-eqz p3, :cond_0

    .line 16
    iput-object p3, p0, Lcom/netflix/mediaclient/service/logging/client/model/CustomEvent;->customData:Lorg/json/JSONObject;

    .line 18
    :cond_0
    return-void
.end method


# virtual methods
.method protected getCustomData()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/CustomEvent;->customData:Lorg/json/JSONObject;

    return-object v0
.end method
