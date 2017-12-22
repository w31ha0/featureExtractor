.class Lcom/netflix/model/branches/SearchMap$SearchQueryMap$1;
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
        "Lcom/netflix/model/branches/SearchMap$SearchProfileType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/netflix/model/branches/SearchMap$SearchProfileType;
    .locals 1

    .prologue
    .line 408
    new-instance v0, Lcom/netflix/model/branches/SearchMap$SearchProfileType;

    invoke-direct {v0}, Lcom/netflix/model/branches/SearchMap$SearchProfileType;-><init>()V

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/netflix/model/branches/SearchMap$SearchQueryMap$1;->call()Lcom/netflix/model/branches/SearchMap$SearchProfileType;

    move-result-object v0

    return-object v0
.end method
