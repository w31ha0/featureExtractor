.class public final Lcom/netflix/mediaclient/service/logging/apm/model/UIModalViewChangedEvent;
.super Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;
.source "UIModalViewChangedEvent.java"


# static fields
.field protected static final CATEGORY:Ljava/lang/String; = "uiQOE"

.field protected static final NAME:Ljava/lang/String; = "uiModalViewChanged"

.field public static final ORIENTATION:Ljava/lang/String; = "orientation"


# instance fields
.field private orientation:Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;-><init>(Lorg/json/JSONObject;)V

    .line 57
    const-string/jumbo v0, "data"

    invoke-static {p1, v0, v2}, Lcom/netflix/mediaclient/util/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    const-string/jumbo v1, "orientation"

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_1

    .line 61
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIModalViewChangedEvent;->orientation:Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;->portrait:Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIModalViewChangedEvent;->orientation:Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;

    goto :goto_0
.end method

.method public constructor <init>(ZLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;-><init>()V

    .line 45
    if-eqz p1, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;->portrait:Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;

    :goto_0
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIModalViewChangedEvent;->orientation:Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;

    .line 46
    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIModalViewChangedEvent;->modalView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    .line 47
    const-string/jumbo v0, "uiQOE"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIModalViewChangedEvent;->category:Ljava/lang/String;

    .line 48
    const-string/jumbo v0, "uiModalViewChanged"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIModalViewChangedEvent;->name:Ljava/lang/String;

    .line 49
    return-void

    .line 45
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;->landscape:Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;

    goto :goto_0
.end method


# virtual methods
.method protected getData()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 75
    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;->getData()Lorg/json/JSONObject;

    move-result-object v0

    .line 76
    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 79
    :cond_0
    const-string/jumbo v1, "orientation"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIModalViewChangedEvent;->orientation:Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    return-object v0
.end method

.method public getOrientation()Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIModalViewChangedEvent;->orientation:Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;

    return-object v0
.end method
