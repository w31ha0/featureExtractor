.class public Lcom/netflix/falkor/IterableBuilder;
.super Ljava/lang/Object;
.source "IterableBuilder.java"

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
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/netflix/falkor/IterableBuilder;->iterable:Ljava/lang/Iterable;

    .line 13
    return-void
.end method

.method public static defer(Lcom/netflix/falkor/Func;)Lcom/netflix/falkor/IterableBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/netflix/falkor/Func",
            "<",
            "Ljava/lang/Iterable",
            "<TR;>;>;)",
            "Lcom/netflix/falkor/IterableBuilder",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Lcom/netflix/falkor/IterableBuilder;

    new-instance v1, Lcom/netflix/falkor/IterableBuilder$3;

    invoke-direct {v1, p0}, Lcom/netflix/falkor/IterableBuilder$3;-><init>(Lcom/netflix/falkor/Func;)V

    invoke-direct {v0, v1}, Lcom/netflix/falkor/IterableBuilder;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static fromArray([Ljava/lang/Object;)Lcom/netflix/falkor/IterableBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">([TR;)",
            "Lcom/netflix/falkor/IterableBuilder",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 16
    new-instance v0, Lcom/netflix/falkor/IterableBuilder;

    new-instance v1, Lcom/netflix/falkor/IterableBuilder$1;

    invoke-direct {v1, p0}, Lcom/netflix/falkor/IterableBuilder$1;-><init>([Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/netflix/falkor/IterableBuilder;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static fromList(Ljava/util/List;)Lcom/netflix/falkor/IterableBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TR;>;)",
            "Lcom/netflix/falkor/IterableBuilder",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 142
    new-instance v0, Lcom/netflix/falkor/IterableBuilder;

    new-instance v1, Lcom/netflix/falkor/IterableBuilder$6;

    invoke-direct {v1, p0}, Lcom/netflix/falkor/IterableBuilder$6;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v1}, Lcom/netflix/falkor/IterableBuilder;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method


# virtual methods
.method public concat(Ljava/lang/Iterable;)Lcom/netflix/falkor/IterableBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TT;>;)",
            "Lcom/netflix/falkor/IterableBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 106
    .line 107
    new-instance v0, Lcom/netflix/falkor/IterableBuilder;

    new-instance v1, Lcom/netflix/falkor/IterableBuilder$5;

    invoke-direct {v1, p0, p0, p1}, Lcom/netflix/falkor/IterableBuilder$5;-><init>(Lcom/netflix/falkor/IterableBuilder;Lcom/netflix/falkor/IterableBuilder;Ljava/lang/Iterable;)V

    invoke-direct {v0, v1}, Lcom/netflix/falkor/IterableBuilder;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public doAction(Lcom/netflix/falkor/Action1;)Lcom/netflix/falkor/IterableBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/falkor/Action1",
            "<TT;>;)",
            "Lcom/netflix/falkor/IterableBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 44
    .line 45
    new-instance v0, Lcom/netflix/falkor/IterableBuilder;

    new-instance v1, Lcom/netflix/falkor/IterableBuilder$2;

    invoke-direct {v1, p0, p0, p1}, Lcom/netflix/falkor/IterableBuilder$2;-><init>(Lcom/netflix/falkor/IterableBuilder;Lcom/netflix/falkor/IterableBuilder;Lcom/netflix/falkor/Action1;)V

    invoke-direct {v0, v1}, Lcom/netflix/falkor/IterableBuilder;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public doAction(Lcom/netflix/falkor/Action1;Lcom/netflix/falkor/Action;)Lcom/netflix/falkor/IterableBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/falkor/Action1",
            "<TT;>;",
            "Lcom/netflix/falkor/Action;",
            ")",
            "Lcom/netflix/falkor/IterableBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 76
    .line 77
    new-instance v0, Lcom/netflix/falkor/IterableBuilder;

    new-instance v1, Lcom/netflix/falkor/IterableBuilder$4;

    invoke-direct {v1, p0, p0, p2, p1}, Lcom/netflix/falkor/IterableBuilder$4;-><init>(Lcom/netflix/falkor/IterableBuilder;Lcom/netflix/falkor/IterableBuilder;Lcom/netflix/falkor/Action;Lcom/netflix/falkor/Action1;)V

    invoke-direct {v0, v1}, Lcom/netflix/falkor/IterableBuilder;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public filter(Lcom/netflix/falkor/Func1;)Lcom/netflix/falkor/IterableBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/falkor/Func1",
            "<TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/netflix/falkor/IterableBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 237
    new-instance v0, Lcom/netflix/falkor/IterableBuilder;

    new-instance v1, Lcom/netflix/falkor/IterableBuilder$9;

    invoke-direct {v1, p0, p1}, Lcom/netflix/falkor/IterableBuilder$9;-><init>(Lcom/netflix/falkor/IterableBuilder;Lcom/netflix/falkor/Func1;)V

    invoke-direct {v0, v1}, Lcom/netflix/falkor/IterableBuilder;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

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
    .line 272
    iget-object v0, p0, Lcom/netflix/falkor/IterableBuilder;->iterable:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public map(Lcom/netflix/falkor/Func1;)Lcom/netflix/falkor/IterableBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/netflix/falkor/Func1",
            "<TT;TR;>;)",
            "Lcom/netflix/falkor/IterableBuilder",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 170
    new-instance v0, Lcom/netflix/falkor/IterableBuilder;

    new-instance v1, Lcom/netflix/falkor/IterableBuilder$7;

    invoke-direct {v1, p0, p1}, Lcom/netflix/falkor/IterableBuilder$7;-><init>(Lcom/netflix/falkor/IterableBuilder;Lcom/netflix/falkor/Func1;)V

    invoke-direct {v0, v1}, Lcom/netflix/falkor/IterableBuilder;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public mapMany(Lcom/netflix/falkor/Func1;)Lcom/netflix/falkor/IterableBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/netflix/falkor/Func1",
            "<TT;",
            "Ljava/lang/Iterable",
            "<TR;>;>;)",
            "Lcom/netflix/falkor/IterableBuilder",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 192
    .line 193
    new-instance v0, Lcom/netflix/falkor/IterableBuilder;

    new-instance v1, Lcom/netflix/falkor/IterableBuilder$8;

    invoke-direct {v1, p0, p0, p1}, Lcom/netflix/falkor/IterableBuilder$8;-><init>(Lcom/netflix/falkor/IterableBuilder;Lcom/netflix/falkor/IterableBuilder;Lcom/netflix/falkor/Func1;)V

    invoke-direct {v0, v1}, Lcom/netflix/falkor/IterableBuilder;-><init>(Ljava/lang/Iterable;)V

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
    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 264
    invoke-virtual {p0}, Lcom/netflix/falkor/IterableBuilder;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 265
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 268
    :cond_0
    return-object v0
.end method
