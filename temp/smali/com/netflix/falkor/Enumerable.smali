.class public Lcom/netflix/falkor/Enumerable;
.super Ljava/lang/Object;
.source "Enumerable.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final iterable:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/netflix/falkor/Enumerable;->iterable:Ljava/lang/Iterable;

    .line 12
    return-void
.end method

.method public static fromArray([Ljava/lang/Object;)Lcom/netflix/falkor/Enumerable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">([TR;)",
            "Lcom/netflix/falkor/Enumerable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 15
    new-instance v0, Lcom/netflix/falkor/Enumerable;

    new-instance v1, Lcom/netflix/falkor/Enumerable$1;

    invoke-direct {v1, p0}, Lcom/netflix/falkor/Enumerable$1;-><init>([Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/netflix/falkor/Enumerable;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static fromList(Ljava/util/List;)Lcom/netflix/falkor/Enumerable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TR;>;)",
            "Lcom/netflix/falkor/Enumerable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 67
    new-instance v0, Lcom/netflix/falkor/Enumerable;

    new-instance v1, Lcom/netflix/falkor/Enumerable$2;

    invoke-direct {v1, p0}, Lcom/netflix/falkor/Enumerable$2;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v1}, Lcom/netflix/falkor/Enumerable;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/netflix/falkor/Enumerable;->iterable:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public toList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    invoke-virtual {p0}, Lcom/netflix/falkor/Enumerable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 97
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 99
    :cond_0
    return-object v0
.end method
