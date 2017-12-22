.class final Lcom/netflix/mediaclient/service/falkor/Falkor$Creator$17;
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
        "Lcom/netflix/model/branches/FalkorActorStill;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$proxy:Lcom/netflix/falkor/ModelProxy;


# direct methods
.method constructor <init>(Lcom/netflix/falkor/ModelProxy;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator$17;->val$proxy:Lcom/netflix/falkor/ModelProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/netflix/model/branches/FalkorActorStill;
    .locals 2

    .prologue
    .line 255
    new-instance v0, Lcom/netflix/model/branches/FalkorActorStill;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator$17;->val$proxy:Lcom/netflix/falkor/ModelProxy;

    invoke-direct {v0, v1}, Lcom/netflix/model/branches/FalkorActorStill;-><init>(Lcom/netflix/falkor/ModelProxy;)V

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator$17;->call()Lcom/netflix/model/branches/FalkorActorStill;

    move-result-object v0

    return-object v0
.end method
