.class public abstract Lcom/netflix/falkor/BasePathEvaluator;
.super Lcom/netflix/falkor/AbstractPathEvaluator;
.source "BasePathEvaluator.java"


# instance fields
.field protected path:Lcom/netflix/falkor/PQL;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4
    invoke-direct {p0}, Lcom/netflix/falkor/AbstractPathEvaluator;-><init>()V

    .line 5
    sget-object v0, Lcom/netflix/falkor/PQL;->EMPTY:Lcom/netflix/falkor/PQL;

    iput-object v0, p0, Lcom/netflix/falkor/BasePathEvaluator;->path:Lcom/netflix/falkor/PQL;

    return-void
.end method


# virtual methods
.method public bind(Lcom/netflix/falkor/PQL;)Lcom/netflix/falkor/AbstractPathEvaluator;
    .locals 3

    .prologue
    .line 19
    new-instance v0, Lcom/netflix/falkor/BoundPathEvaluator;

    invoke-virtual {p0}, Lcom/netflix/falkor/BasePathEvaluator;->getRoot()Lcom/netflix/falkor/AbstractPathEvaluator;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/falkor/BasePathEvaluator;->getPath()Lcom/netflix/falkor/PQL;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/netflix/falkor/PQL;->append(Lcom/netflix/falkor/PQL;)Lcom/netflix/falkor/PQL;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/falkor/BoundPathEvaluator;-><init>(Lcom/netflix/falkor/AbstractPathEvaluator;Lcom/netflix/falkor/PQL;)V

    return-object v0
.end method

.method public deleteAbsolute(Ljava/lang/Iterable;)Ljava/lang/Iterable;
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
    .line 24
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPath()Lcom/netflix/falkor/PQL;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/netflix/falkor/BasePathEvaluator;->path:Lcom/netflix/falkor/PQL;

    return-object v0
.end method

.method protected setPath(Lcom/netflix/falkor/PQL;)V
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/netflix/falkor/BasePathEvaluator;->path:Lcom/netflix/falkor/PQL;

    .line 15
    return-void
.end method
