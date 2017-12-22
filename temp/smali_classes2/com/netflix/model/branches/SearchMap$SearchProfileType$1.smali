.class Lcom/netflix/model/branches/SearchMap$SearchProfileType$1;
.super Ljava/lang/Object;
.source "SearchMap.java"

# interfaces
.implements Lcom/netflix/falkor/Func;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netflix/falkor/Func",
        "<",
        "Lcom/netflix/model/branches/SearchMap$SearchVideosWithRelated;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/netflix/model/branches/SearchMap$SearchVideosWithRelated;
    .locals 1

    .prologue
    .line 423
    new-instance v0, Lcom/netflix/model/branches/SearchMap$SearchVideosWithRelated;

    invoke-direct {v0}, Lcom/netflix/model/branches/SearchMap$SearchVideosWithRelated;-><init>()V

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/netflix/model/branches/SearchMap$SearchProfileType$1;->call()Lcom/netflix/model/branches/SearchMap$SearchVideosWithRelated;

    move-result-object v0

    return-object v0
.end method
