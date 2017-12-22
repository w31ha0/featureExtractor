.class Lcom/netflix/falkor/CachedPathEvaluator$2$1$1;
.super Ljava/lang/Object;
.source "CachedPathEvaluator.java"

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
.field final synthetic this$2:Lcom/netflix/falkor/CachedPathEvaluator$2$1;


# direct methods
.method constructor <init>(Lcom/netflix/falkor/CachedPathEvaluator$2$1;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/netflix/falkor/CachedPathEvaluator$2$1$1;->this$2:Lcom/netflix/falkor/CachedPathEvaluator$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .line 139
    new-instance v0, Lcom/netflix/falkor/IterableBuilder;

    iget-object v1, p0, Lcom/netflix/falkor/CachedPathEvaluator$2$1$1;->this$2:Lcom/netflix/falkor/CachedPathEvaluator$2$1;

    iget-object v1, v1, Lcom/netflix/falkor/CachedPathEvaluator$2$1;->val$paths:Ljava/util/Set;

    invoke-direct {v0, v1}, Lcom/netflix/falkor/IterableBuilder;-><init>(Ljava/lang/Iterable;)V

    new-instance v1, Lcom/netflix/falkor/CachedPathEvaluator$2$1$1$1;

    invoke-direct {v1, p0}, Lcom/netflix/falkor/CachedPathEvaluator$2$1$1$1;-><init>(Lcom/netflix/falkor/CachedPathEvaluator$2$1$1;)V

    .line 140
    invoke-virtual {v0, v1}, Lcom/netflix/falkor/IterableBuilder;->map(Lcom/netflix/falkor/Func1;)Lcom/netflix/falkor/IterableBuilder;

    move-result-object v0

    .line 139
    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/netflix/falkor/CachedPathEvaluator$2$1$1;->call()Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method
