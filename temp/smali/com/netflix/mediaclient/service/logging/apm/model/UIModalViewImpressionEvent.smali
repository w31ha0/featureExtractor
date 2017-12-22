.class public Lcom/netflix/mediaclient/service/logging/apm/model/UIModalViewImpressionEvent;
.super Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;
.source "UIModalViewImpressionEvent.java"


# static fields
.field protected static final CATEGORY:Ljava/lang/String; = "uiView"

.field protected static final NAME:Ljava/lang/String; = "impression"


# instance fields
.field private orientation:Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;-><init>(Lorg/json/JSONObject;)V

    .line 40
    const-string/jumbo v0, "data"

    invoke-static {p1, v0, v2}, Lcom/netflix/mediaclient/util/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    const-string/jumbo v1, "orientation"

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIModalViewImpressionEvent;->orientation:Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;->portrait:Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIModalViewImpressionEvent;->orientation:Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;

    goto :goto_0
.end method

.method public constructor <init>(ZLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;-><init>()V

    .line 28
    if-eqz p1, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;->portrait:Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;

    :goto_0
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIModalViewImpressionEvent;->orientation:Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;

    .line 29
    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIModalViewImpressionEvent;->modalView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    .line 30
    const-string/jumbo v0, "uiView"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIModalViewImpressionEvent;->category:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, "impression"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIModalViewImpressionEvent;->name:Ljava/lang/String;

    .line 32
    return-void

    .line 28
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;->landscape:Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;

    goto :goto_0
.end method


# virtual methods
.method protected getData()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 58
    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;->getData()Lorg/json/JSONObject;

    move-result-object v0

    .line 59
    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 62
    :cond_0
    const-string/jumbo v1, "orientation"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIModalViewImpressionEvent;->orientation:Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    return-object v0
.end method

.method public getOrientation()Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIModalViewImpressionEvent;->orientation:Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;

    return-object v0
.end method
