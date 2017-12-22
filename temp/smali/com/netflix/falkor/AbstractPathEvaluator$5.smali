.class final Lcom/netflix/falkor/AbstractPathEvaluator$5;
.super Ljava/lang/Object;
.source "AbstractPathEvaluator.java"

# interfaces
.implements Lcom/netflix/falkor/Func;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netflix/falkor/Func",
        "<",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/netflix/falkor/PathBoundValue;",
        ">;>;"
    }
.end annotation


# instance fields
.field final pathMap:Lcom/netflix/falkor/PathMap;

.field final synthetic val$pathBoundValues:Ljava/lang/Iterable;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;)V
    .locals 1

    .prologue
    .line 192
    iput-object p1, p0, Lcom/netflix/falkor/AbstractPathEvaluator$5;->val$pathBoundValues:Ljava/lang/Iterable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    new-instance v0, Lcom/netflix/falkor/PathMap;

    invoke-direct {v0}, Lcom/netflix/falkor/PathMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/falkor/AbstractPathEvaluator$5;->pathMap:Lcom/netflix/falkor/PathMap;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/netflix/falkor/PathBoundValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    new-instance v0, Lcom/netflix/falkor/IterableBuilder;

    iget-object v1, p0, Lcom/netflix/falkor/AbstractPathEvaluator$5;->val$pathBoundValues:Ljava/lang/Iterable;

    invoke-direct {v0, v1}, Lcom/netflix/falkor/IterableBuilder;-><init>(Ljava/lang/Iterable;)V

    new-instance v1, Lcom/netflix/falkor/AbstractPathEvaluator$5$1;

    invoke-direct {v1, p0}, Lcom/netflix/falkor/AbstractPathEvaluator$5$1;-><init>(Lcom/netflix/falkor/AbstractPathEvaluator$5;)V

    .line 196
    invoke-virtual {v0, v1}, Lcom/netflix/falkor/IterableBuilder;->mapMany(Lcom/netflix/falkor/Func1;)Lcom/netflix/falkor/IterableBuilder;

    move-result-object v0

    .line 195
    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/netflix/falkor/AbstractPathEvaluator$5;->call()Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method
