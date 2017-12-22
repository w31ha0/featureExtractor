.class public abstract Lcom/netflix/mediaclient/event/nrdp/JsonBaseNccpEvent;
.super Lcom/netflix/mediaclient/event/nrdp/BaseNccpEvent;
.source "JsonBaseNccpEvent.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "nf_event"


# instance fields
.field protected json:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/event/nrdp/BaseNccpEvent;-><init>(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/event/nrdp/BaseNccpEvent;-><init>(Ljava/lang/String;)V

    .line 35
    if-nez p2, :cond_0

    .line 36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "JSON is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    iput-object p2, p0, Lcom/netflix/mediaclient/event/nrdp/JsonBaseNccpEvent;->json:Lorg/json/JSONObject;

    .line 39
    invoke-virtual {p0, p2}, Lcom/netflix/mediaclient/event/nrdp/JsonBaseNccpEvent;->populate(Lorg/json/JSONObject;)V

    .line 40
    return-void
.end method


# virtual methods
.method public getData()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/JsonBaseNccpEvent;->json:Lorg/json/JSONObject;

    return-object v0
.end method

.method protected getJSON()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/JsonBaseNccpEvent;->json:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/netflix/mediaclient/event/nrdp/JsonBaseNccpEvent;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNrdSource()I
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract populate(Lorg/json/JSONObject;)V
.end method
