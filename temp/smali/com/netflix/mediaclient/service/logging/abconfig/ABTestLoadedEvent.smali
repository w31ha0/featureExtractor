.class public Lcom/netflix/mediaclient/service/logging/abconfig/ABTestLoadedEvent;
.super Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;
.source "ABTestLoadedEvent.java"


# static fields
.field private static final NAME:Ljava/lang/String; = "abTestLoaded"


# instance fields
.field private final cellId:I

.field private final testId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/abconfig/ABTestLoadedEvent;->testId:Ljava/lang/String;

    .line 19
    iput p2, p0, Lcom/netflix/mediaclient/service/logging/abconfig/ABTestLoadedEvent;->cellId:I

    .line 20
    const-string/jumbo v0, "abTest"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/abconfig/ABTestLoadedEvent;->category:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, "abTestLoaded"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/abconfig/ABTestLoadedEvent;->name:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method protected getData()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 26
    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;->getData()Lorg/json/JSONObject;

    move-result-object v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 30
    :cond_0
    const-string/jumbo v1, "abTestID"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/abconfig/ABTestLoadedEvent;->testId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    const-string/jumbo v1, "abTestCellID"

    iget v2, p0, Lcom/netflix/mediaclient/service/logging/abconfig/ABTestLoadedEvent;->cellId:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 32
    return-object v0
.end method
