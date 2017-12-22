.class final Lcom/netflix/mediaclient/service/falkor/Falkor$Creator$6;
.super Ljava/lang/Object;
.source "Falkor.java"

# interfaces
.implements Lcom/netflix/falkor/Func;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netflix/falkor/Func",
        "<",
        "Lcom/netflix/model/leafs/LoLoMoSummary;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/netflix/model/leafs/LoLoMoSummary;
    .locals 1

    .prologue
    .line 160
    new-instance v0, Lcom/netflix/model/leafs/LoLoMoSummary;

    invoke-direct {v0}, Lcom/netflix/model/leafs/LoLoMoSummary;-><init>()V

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator$6;->call()Lcom/netflix/model/leafs/LoLoMoSummary;

    move-result-object v0

    return-object v0
.end method
