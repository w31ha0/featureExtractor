.class public Lcom/netflix/mediaclient/service/logging/abconfig/ABConfigDataReceivedEvent;
.super Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;
.source "ABConfigDataReceivedEvent.java"


# static fields
.field private static final NAME:Ljava/lang/String; = "abConfigDataReceived"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;-><init>()V

    .line 13
    const-string/jumbo v0, "abTest"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/abconfig/ABConfigDataReceivedEvent;->category:Ljava/lang/String;

    .line 14
    const-string/jumbo v0, "abConfigDataReceived"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/abconfig/ABConfigDataReceivedEvent;->name:Ljava/lang/String;

    .line 15
    return-void
.end method
