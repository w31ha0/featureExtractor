.class public abstract Lcom/netflix/falkor/AbstractPathEvaluator;
.super Ljava/lang/Object;
.source "AbstractPathEvaluator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static makeRelative(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1
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
    .line 192
    new-instance v0, Lcom/netflix/falkor/AbstractPathEvaluator$5;

    invoke-direct {v0, p0}, Lcom/netflix/falkor/AbstractPathEvaluator$5;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Lcom/netflix/falkor/IterableBuilder;->defer(Lcom/netflix/falkor/Func;)Lcom/netflix/falkor/IterableBuilder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract bind(Lcom/netflix/falkor/PQL;)Lcom/netflix/falkor/AbstractPathEvaluator;
.end method

.method public cache(Lcom/netflix/falkor/AbstractPathEvaluator;)Lcom/netflix/falkor/AbstractPathEvaluator;
    .locals 3

    .prologue
    .line 128
    sget-object v0, Lcom/netflix/falkor/PQL;->EMPTY:Lcom/netflix/falkor/PQL;

    invoke-virtual {p0}, Lcom/netflix/falkor/AbstractPathEvaluator;->getPath()Lcom/netflix/falkor/PQL;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/falkor/PQL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    new-instance v0, Lcom/netflix/falkor/CachedPathEvaluator;

    invoke-direct {v0, p0, p1}, Lcom/netflix/falkor/CachedPathEvaluator;-><init>(Lcom/netflix/falkor/AbstractPathEvaluator;Lcom/netflix/falkor/AbstractPathEvaluator;)V

    .line 132
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/netflix/falkor/CachedPathEvaluator;

    invoke-virtual {p0}, Lcom/netflix/falkor/AbstractPathEvaluator;->getRoot()Lcom/netflix/falkor/AbstractPathEvaluator;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/falkor/AbstractPathEvaluator;->getRoot()Lcom/netflix/falkor/AbstractPathEvaluator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/falkor/CachedPathEvaluator;-><init>(Lcom/netflix/falkor/AbstractPathEvaluator;Lcom/netflix/falkor/AbstractPathEvaluator;)V

    invoke-virtual {p0}, Lcom/netflix/falkor/AbstractPathEvaluator;->getPath()Lcom/netflix/falkor/PQL;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/falkor/CachedPathEvaluator;->bind(Lcom/netflix/falkor/PQL;)Lcom/netflix/falkor/AbstractPathEvaluator;

    move-result-object v0

    goto :goto_0
.end method

.method public varargs delete([Lcom/netflix/falkor/PQL;)Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/netflix/falkor/PQL;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/netflix/falkor/PathBoundValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    new-instance v0, Lcom/netflix/falkor/IterableBuilder;

    .line 178
    invoke-static {p1}, Lcom/netflix/falkor/IterableBuilder;->fromArray([Ljava/lang/Object;)Lcom/netflix/falkor/IterableBuilder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/netflix/falkor/AbstractPathEvaluator;->deleteRelative(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/falkor/IterableBuilder;-><init>(Ljava/lang/Iterable;)V

    new-instance v1, Lcom/netflix/falkor/AbstractPathEvaluator$4;

    invoke-direct {v1, p0}, Lcom/netflix/falkor/AbstractPathEvaluator$4;-><init>(Lcom/netflix/falkor/AbstractPathEvaluator;)V

    .line 179
    invoke-virtual {v0, v1}, Lcom/netflix/falkor/IterableBuilder;->filter(Lcom/netflix/falkor/Func1;)Lcom/netflix/falkor/IterableBuilder;

    move-result-object v0

    .line 177
    return-object v0
.end method

.method public abstract deleteAbsolute(Ljava/lang/Iterable;)Ljava/lang/Iterable;
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
.end method

.method public deleteRelative(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1
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
    .line 162
    invoke-virtual {p0, p1}, Lcom/netflix/falkor/AbstractPathEvaluator;->deleteAbsolute(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/falkor/AbstractPathEvaluator;->makeRelative(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public varargs get([Lcom/netflix/falkor/PQL;)Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/netflix/falkor/PQL;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/netflix/falkor/PathBoundValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    new-instance v0, Lcom/netflix/falkor/IterableBuilder;

    .line 104
    invoke-static {p1}, Lcom/netflix/falkor/IterableBuilder;->fromArray([Ljava/lang/Object;)Lcom/netflix/falkor/IterableBuilder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/netflix/falkor/AbstractPathEvaluator;->getRelative(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/falkor/IterableBuilder;-><init>(Ljava/lang/Iterable;)V

    new-instance v1, Lcom/netflix/falkor/AbstractPathEvaluator$3;

    invoke-direct {v1, p0}, Lcom/netflix/falkor/AbstractPathEvaluator$3;-><init>(Lcom/netflix/falkor/AbstractPathEvaluator;)V

    .line 105
    invoke-virtual {v0, v1}, Lcom/netflix/falkor/IterableBuilder;->filter(Lcom/netflix/falkor/Func1;)Lcom/netflix/falkor/IterableBuilder;

    move-result-object v0

    .line 103
    return-object v0
.end method

.method public abstract getAbsolute(Ljava/lang/Iterable;)Ljava/lang/Iterable;
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
.end method

.method public abstract getPath()Lcom/netflix/falkor/PQL;
.end method

.method public getRelative(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1
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
    .line 145
    invoke-virtual {p0, p1}, Lcom/netflix/falkor/AbstractPathEvaluator;->getAbsolute(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/falkor/AbstractPathEvaluator;->makeRelative(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public abstract getRoot()Lcom/netflix/falkor/AbstractPathEvaluator;
.end method

.method public getValue(Lcom/netflix/falkor/PQL;)Lcom/netflix/falkor/Option;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Lcom/netflix/falkor/IterableBuilder;

    new-instance v1, Lcom/netflix/falkor/Option;

    invoke-direct {v1, p1}, Lcom/netflix/falkor/Option;-><init>(Ljava/lang/Object;)V

    .line 71
    invoke-virtual {p0, v1}, Lcom/netflix/falkor/AbstractPathEvaluator;->getRelative(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/falkor/IterableBuilder;-><init>(Ljava/lang/Iterable;)V

    new-instance v1, Lcom/netflix/falkor/AbstractPathEvaluator$2;

    invoke-direct {v1, p0}, Lcom/netflix/falkor/AbstractPathEvaluator$2;-><init>(Lcom/netflix/falkor/AbstractPathEvaluator;)V

    .line 72
    invoke-virtual {v0, v1}, Lcom/netflix/falkor/IterableBuilder;->filter(Lcom/netflix/falkor/Func1;)Lcom/netflix/falkor/IterableBuilder;

    move-result-object v0

    new-instance v1, Lcom/netflix/falkor/AbstractPathEvaluator$1;

    invoke-direct {v1, p0}, Lcom/netflix/falkor/AbstractPathEvaluator$1;-><init>(Lcom/netflix/falkor/AbstractPathEvaluator;)V

    .line 77
    invoke-virtual {v0, v1}, Lcom/netflix/falkor/IterableBuilder;->map(Lcom/netflix/falkor/Func1;)Lcom/netflix/falkor/IterableBuilder;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lcom/netflix/falkor/IterableBuilder;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 84
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    new-instance v0, Lcom/netflix/falkor/Option;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/falkor/Option;-><init>(Ljava/lang/Object;)V

    .line 88
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/netflix/falkor/Option;

    invoke-direct {v0}, Lcom/netflix/falkor/Option;-><init>()V

    goto :goto_0
.end method

.method public abstract setAbsolute(Ljava/lang/Iterable;)Ljava/lang/Iterable;
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
.end method

.method protected abstract setPath(Lcom/netflix/falkor/PQL;)V
.end method
