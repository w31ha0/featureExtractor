.class public Lcom/netflix/mediaclient/service/logging/abconfig/ABTestReceivedEvent;
.super Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;
.source "ABTestReceivedEvent.java"


# static fields
.field private static final NAME:Ljava/lang/String; = "abTestReceived"


# instance fields
.field private final cellId:I

.field private final testId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/abconfig/ABTestReceivedEvent;->testId:Ljava/lang/String;

    .line 18
    iput p2, p0, Lcom/netflix/mediaclient/service/logging/abconfig/ABTestReceivedEvent;->cellId:I

    .line 19
    const-string/jumbo v0, "abTest"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/abconfig/ABTestReceivedEvent;->category:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, "abTestReceived"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/abconfig/ABTestReceivedEvent;->name:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method protected getData()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 25
    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;->getData()Lorg/json/JSONObject;

    move-result-object v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 29
    :cond_0
    const-string/jumbo v1, "abTestID"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/abconfig/ABTestReceivedEvent;->testId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    const-string/jumbo v1, "abTestCellID"

    iget v2, p0, Lcom/netflix/mediaclient/service/logging/abconfig/ABTestReceivedEvent;->cellId:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 31
    return-object v0
.end method
