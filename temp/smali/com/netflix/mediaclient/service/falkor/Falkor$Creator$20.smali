.class final Lcom/netflix/mediaclient/service/falkor/Falkor$Creator$20;
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
        "Lcom/netflix/model/branches/FalkorIrisNotification;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$proxy:Lcom/netflix/falkor/ModelProxy;


# direct methods
.method constructor <init>(Lcom/netflix/falkor/ModelProxy;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator$20;->val$proxy:Lcom/netflix/falkor/ModelProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/netflix/model/branches/FalkorIrisNotification;
    .locals 2

    .prologue
    .line 281
    new-instance v0, Lcom/netflix/model/branches/FalkorIrisNotification;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator$20;->val$proxy:Lcom/netflix/falkor/ModelProxy;

    invoke-direct {v0, v1}, Lcom/netflix/model/branches/FalkorIrisNotification;-><init>(Lcom/netflix/falkor/ModelProxy;)V

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator$20;->call()Lcom/netflix/model/branches/FalkorIrisNotification;

    move-result-object v0

    return-object v0
.end method
