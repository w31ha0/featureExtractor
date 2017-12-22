.class public Lcom/netflix/mediaclient/event/network/NetworkError;
.super Lcom/netflix/mediaclient/event/nrdp/media/NccpError;
.source "NetworkError.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/netflix/mediaclient/event/nrdp/media/NccpError;-><init>()V

    .line 28
    return-void
.end method


# virtual methods
.method public getObject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string/jumbo v0, "nrdp.android"

    return-object v0
.end method

.method protected populate(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 36
    return-void
.end method
