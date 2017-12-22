.class public Lcom/netflix/falkor/BoundPathEvaluator;
.super Lcom/netflix/falkor/BasePathEvaluator;
.source "BoundPathEvaluator.java"


# instance fields
.field root:Lcom/netflix/falkor/AbstractPathEvaluator;


# direct methods
.method public constructor <init>(Lcom/netflix/falkor/AbstractPathEvaluator;Lcom/netflix/falkor/PQL;)V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/netflix/falkor/BasePathEvaluator;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/netflix/falkor/BoundPathEvaluator;->root:Lcom/netflix/falkor/AbstractPathEvaluator;

    .line 8
    invoke-virtual {p0, p2}, Lcom/netflix/falkor/BoundPathEvaluator;->setPath(Lcom/netflix/falkor/PQL;)V

    .line 9
    return-void
.end method


# virtual methods
.method public deleteAbsolute(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/netflix/falkor/PQL;",
            ">;)",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/netflix/falkor/PathBoundValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Lcom/netflix/falkor/IterableBuilder;

    invoke-direct {v0, p1}, Lcom/netflix/falkor/IterableBuilder;-><init>(Ljava/lang/Iterable;)V

    new-instance v1, Lcom/netflix/falkor/BoundPathEvaluator$3;

    invoke-direct {v1, p0}, Lcom/netflix/falkor/BoundPathEvaluator$3;-><init>(Lcom/netflix/falkor/BoundPathEvaluator;)V

    .line 41
    invoke-virtual {v0, v1}, Lcom/netflix/falkor/IterableBuilder;->map(Lcom/netflix/falkor/Func1;)Lcom/netflix/falkor/IterableBuilder;

    move-result-object v0

    .line 39
    invoke-virtual {p0, v0}, Lcom/netflix/falkor/BoundPathEvaluator;->deleteAbsolute(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public getAbsolute(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/netflix/falkor/PQL;",
            ">;)",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/netflix/falkor/PathBoundValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    new-instance v0, Lcom/netflix/falkor/IterableBuilder;

    invoke-direct {v0, p1}, Lcom/netflix/falkor/IterableBuilder;-><init>(Ljava/lang/Iterable;)V

    new-instance v1, Lcom/netflix/falkor/BoundPathEvaluator$1;

    invoke-direct {v1, p0}, Lcom/netflix/falkor/BoundPathEvaluator$1;-><init>(Lcom/netflix/falkor/BoundPathEvaluator;)V

    .line 19
    invoke-virtual {v0, v1}, Lcom/netflix/falkor/IterableBuilder;->map(Lcom/netflix/falkor/Func1;)Lcom/netflix/falkor/IterableBuilder;

    move-result-object v0

    .line 18
    invoke-virtual {p0, v0}, Lcom/netflix/falkor/BoundPathEvaluator;->getAbsolute(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/netflix/falkor/AbstractPathEvaluator;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/netflix/falkor/BoundPathEvaluator;->root:Lcom/netflix/falkor/AbstractPathEvaluator;

    return-object v0
.end method

.method public setAbsolute(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/netflix/falkor/PathBoundValue;",
            ">;)",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/netflix/falkor/PathBoundValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    new-instance v0, Lcom/netflix/falkor/IterableBuilder;

    invoke-direct {v0, p1}, Lcom/netflix/falkor/IterableBuilder;-><init>(Ljava/lang/Iterable;)V

    new-instance v1, Lcom/netflix/falkor/BoundPathEvaluator$2;

    invoke-direct {v1, p0}, Lcom/netflix/falkor/BoundPathEvaluator$2;-><init>(Lcom/netflix/falkor/BoundPathEvaluator;)V

    .line 30
    invoke-virtual {v0, v1}, Lcom/netflix/falkor/IterableBuilder;->map(Lcom/netflix/falkor/Func1;)Lcom/netflix/falkor/IterableBuilder;

    move-result-object v0

    .line 28
    invoke-virtual {p0, v0}, Lcom/netflix/falkor/BoundPathEvaluator;->setAbsolute(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method
