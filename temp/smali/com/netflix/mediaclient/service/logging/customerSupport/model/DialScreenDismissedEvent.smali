.class public Lcom/netflix/mediaclient/service/logging/customerSupport/model/DialScreenDismissedEvent;
.super Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;
.source "DialScreenDismissedEvent.java"


# static fields
.field public static final ACTION:Ljava/lang/String; = "action"

.field protected static final CATEGORY:Ljava/lang/String; = "customerSupport"

.field protected static final NAME:Ljava/lang/String; = "dialScreenDismissed"


# instance fields
.field private mAction:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/DialScreenDismissedEvent;->mAction:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

    .line 25
    const-string/jumbo v0, "customerSupport"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/DialScreenDismissedEvent;->category:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, "dialScreenDismissed"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/DialScreenDismissedEvent;->name:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method protected getData()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 32
    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;->getData()Lorg/json/JSONObject;

    move-result-object v0

    .line 33
    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 37
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/DialScreenDismissedEvent;->mAction:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

    if-eqz v1, :cond_1

    .line 38
    const-string/jumbo v1, "action"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/DialScreenDismissedEvent;->mAction:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    :cond_1
    return-object v0
.end method
