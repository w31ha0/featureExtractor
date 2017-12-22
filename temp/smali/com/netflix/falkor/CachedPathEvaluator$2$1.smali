.class Lcom/netflix/falkor/CachedPathEvaluator$2$1;
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
.field final synthetic this$1:Lcom/netflix/falkor/CachedPathEvaluator$2;

.field final synthetic val$collapsedPQLs:Ljava/util/List;

.field final synthetic val$paths:Ljava/util/Set;

.field final synthetic val$reversePathMap:Lcom/netflix/falkor/PathMap;


# direct methods
.method constructor <init>(Lcom/netflix/falkor/CachedPathEvaluator$2;Ljava/util/List;Lcom/netflix/falkor/PathMap;Ljava/util/Set;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/netflix/falkor/CachedPathEvaluator$2$1;->this$1:Lcom/netflix/falkor/CachedPathEvaluator$2;

    iput-object p2, p0, Lcom/netflix/falkor/CachedPathEvaluator$2$1;->val$collapsedPQLs:Ljava/util/List;

    iput-object p3, p0, Lcom/netflix/falkor/CachedPathEvaluator$2$1;->val$reversePathMap:Lcom/netflix/falkor/PathMap;

    iput-object p4, p0, Lcom/netflix/falkor/CachedPathEvaluator$2$1;->val$paths:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Iterable;
    .locals 6
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
    .line 115
    new-instance v0, Lcom/netflix/falkor/IterableBuilder;

    new-instance v1, Lcom/netflix/falkor/IterableBuilder;

    iget-object v2, p0, Lcom/netflix/falkor/CachedPathEvaluator$2$1;->this$1:Lcom/netflix/falkor/CachedPathEvaluator$2;

    iget-object v2, v2, Lcom/netflix/falkor/CachedPathEvaluator$2;->this$0:Lcom/netflix/falkor/CachedPathEvaluator;

    iget-object v2, v2, Lcom/netflix/falkor/CachedPathEvaluator;->cache:Lcom/netflix/falkor/AbstractPathEvaluator;

    new-instance v3, Lcom/netflix/falkor/IterableBuilder;

    iget-object v4, p0, Lcom/netflix/falkor/CachedPathEvaluator$2$1;->this$1:Lcom/netflix/falkor/CachedPathEvaluator$2;

    iget-object v4, v4, Lcom/netflix/falkor/CachedPathEvaluator$2;->this$0:Lcom/netflix/falkor/CachedPathEvaluator;

    iget-object v4, v4, Lcom/netflix/falkor/CachedPathEvaluator;->source:Lcom/netflix/falkor/AbstractPathEvaluator;

    iget-object v5, p0, Lcom/netflix/falkor/CachedPathEvaluator$2$1;->val$collapsedPQLs:Ljava/util/List;

    .line 123
    invoke-virtual {v4, v5}, Lcom/netflix/falkor/AbstractPathEvaluator;->getAbsolute(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/netflix/falkor/IterableBuilder;-><init>(Ljava/lang/Iterable;)V

    new-instance v4, Lcom/netflix/falkor/CachedPathEvaluator$2$1$2;

    invoke-direct {v4, p0}, Lcom/netflix/falkor/CachedPathEvaluator$2$1$2;-><init>(Lcom/netflix/falkor/CachedPathEvaluator$2$1;)V

    .line 124
    invoke-virtual {v3, v4}, Lcom/netflix/falkor/IterableBuilder;->doAction(Lcom/netflix/falkor/Action1;)Lcom/netflix/falkor/IterableBuilder;

    move-result-object v3

    new-instance v4, Lcom/netflix/falkor/CachedPathEvaluator$2$1$1;

    invoke-direct {v4, p0}, Lcom/netflix/falkor/CachedPathEvaluator$2$1$1;-><init>(Lcom/netflix/falkor/CachedPathEvaluator$2$1;)V

    .line 137
    invoke-static {v4}, Lcom/netflix/falkor/IterableBuilder;->defer(Lcom/netflix/falkor/Func;)Lcom/netflix/falkor/IterableBuilder;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/netflix/falkor/IterableBuilder;->concat(Ljava/lang/Iterable;)Lcom/netflix/falkor/IterableBuilder;

    move-result-object v3

    .line 122
    invoke-virtual {v2, v3}, Lcom/netflix/falkor/AbstractPathEvaluator;->setAbsolute(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/netflix/falkor/IterableBuilder;-><init>(Ljava/lang/Iterable;)V

    invoke-direct {v0, v1}, Lcom/netflix/falkor/IterableBuilder;-><init>(Ljava/lang/Iterable;)V

    .line 147
    invoke-static {}, Lcom/netflix/falkor/CachedPathEvaluator;->access$000()Lcom/netflix/falkor/Func1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/falkor/IterableBuilder;->filter(Lcom/netflix/falkor/Func1;)Lcom/netflix/falkor/IterableBuilder;

    move-result-object v0

    .line 115
    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/netflix/falkor/CachedPathEvaluator$2$1;->call()Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method
