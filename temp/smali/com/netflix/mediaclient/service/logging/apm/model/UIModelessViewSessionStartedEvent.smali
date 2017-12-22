.class public final Lcom/netflix/mediaclient/service/logging/apm/model/UIModelessViewSessionStartedEvent;
.super Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;
.source "UIModelessViewSessionStartedEvent.java"


# static fields
.field public static final MODELESS_VIEW:Ljava/lang/String; = "modelessView"

.field public static final ORIENTATION:Ljava/lang/String; = "orientation"

.field private static final UI_SESSION_NAME:Ljava/lang/String; = "uiModelessView"


# instance fields
.field private modelessView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

.field private orientation:Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;-><init>(Lorg/json/JSONObject;)V

    .line 48
    const-string/jumbo v0, "data"

    invoke-static {p1, v0, v2}, Lcom/netflix/mediaclient/util/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_0

    .line 50
    const-string/jumbo v1, "orientation"

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    if-eqz v1, :cond_1

    .line 52
    invoke-static {v1}, Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIModelessViewSessionStartedEvent;->orientation:Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;

    .line 56
    :goto_0
    const-string/jumbo v1, "modelessView"

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_0

    .line 58
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIModelessViewSessionStartedEvent;->modelessView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    .line 61
    :cond_0
    return-void

    .line 54
    :cond_1
    sget-object v1, Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;->portrait:Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;

    iput-object v1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIModelessViewSessionStartedEvent;->orientation:Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;

    goto :goto_0
.end method

.method public constructor <init>(ZLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 1

    .prologue
    .line 67
    const-string/jumbo v0, "uiModelessView"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;-><init>(Ljava/lang/String;)V

    .line 68
    if-eqz p1, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;->portrait:Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;

    :goto_0
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIModelessViewSessionStartedEvent;->orientation:Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;

    .line 69
    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIModelessViewSessionStartedEvent;->modalView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    .line 70
    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIModelessViewSessionStartedEvent;->modelessView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    .line 71
    return-void

    .line 68
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;->landscape:Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;

    goto :goto_0
.end method


# virtual methods
.method protected getData()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 80
    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;->getData()Lorg/json/JSONObject;

    move-result-object v0

    .line 81
    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 84
    :cond_0
    const-string/jumbo v1, "orientation"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIModelessViewSessionStartedEvent;->orientation:Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIModelessViewSessionStartedEvent;->modelessView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    if-eqz v1, :cond_1

    .line 86
    const-string/jumbo v1, "modelessView"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIModelessViewSessionStartedEvent;->modelessView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    :cond_1
    return-object v0
.end method

.method public getModelessView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIModelessViewSessionStartedEvent;->modelessView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    return-object v0
.end method

.method public getOrientation()Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIModelessViewSessionStartedEvent;->orientation:Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;

    return-object v0
.end method
