.class Lcom/netflix/falkor/CachedPathEvaluator$2;
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
.field final synthetic this$0:Lcom/netflix/falkor/CachedPathEvaluator;

.field final synthetic val$pqls:Ljava/lang/Iterable;


# direct methods
.method constructor <init>(Lcom/netflix/falkor/CachedPathEvaluator;Ljava/lang/Iterable;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/netflix/falkor/CachedPathEvaluator$2;->this$0:Lcom/netflix/falkor/CachedPathEvaluator;

    iput-object p2, p0, Lcom/netflix/falkor/CachedPathEvaluator$2;->val$pqls:Ljava/lang/Iterable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Iterable;
    .locals 7
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
    .line 49
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 51
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 53
    new-instance v3, Lcom/netflix/falkor/PathMap;

    invoke-direct {v3}, Lcom/netflix/falkor/PathMap;-><init>()V

    .line 55
    new-instance v4, Lcom/netflix/falkor/PathMap;

    invoke-direct {v4}, Lcom/netflix/falkor/PathMap;-><init>()V

    .line 58
    iget-object v0, p0, Lcom/netflix/falkor/CachedPathEvaluator$2;->val$pqls:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/falkor/PQL;

    .line 59
    invoke-virtual {v0}, Lcom/netflix/falkor/PQL;->explode()Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 63
    :cond_0
    new-instance v0, Lcom/netflix/falkor/IterableBuilder;

    iget-object v5, p0, Lcom/netflix/falkor/CachedPathEvaluator$2;->this$0:Lcom/netflix/falkor/CachedPathEvaluator;

    iget-object v5, v5, Lcom/netflix/falkor/CachedPathEvaluator;->cache:Lcom/netflix/falkor/AbstractPathEvaluator;

    iget-object v6, p0, Lcom/netflix/falkor/CachedPathEvaluator$2;->val$pqls:Ljava/lang/Iterable;

    invoke-virtual {v5, v6}, Lcom/netflix/falkor/AbstractPathEvaluator;->getAbsolute(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/netflix/falkor/IterableBuilder;-><init>(Ljava/lang/Iterable;)V

    new-instance v5, Lcom/netflix/falkor/CachedPathEvaluator$2$2;

    invoke-direct {v5, p0, v3, v4, v2}, Lcom/netflix/falkor/CachedPathEvaluator$2$2;-><init>(Lcom/netflix/falkor/CachedPathEvaluator$2;Lcom/netflix/falkor/PathMap;Lcom/netflix/falkor/PathMap;Ljava/util/Set;)V

    new-instance v6, Lcom/netflix/falkor/CachedPathEvaluator$2$3;

    invoke-direct {v6, p0, v2, v1, v4}, Lcom/netflix/falkor/CachedPathEvaluator$2$3;-><init>(Lcom/netflix/falkor/CachedPathEvaluator$2;Ljava/util/Set;Ljava/util/List;Lcom/netflix/falkor/PathMap;)V

    .line 65
    invoke-virtual {v0, v5, v6}, Lcom/netflix/falkor/IterableBuilder;->doAction(Lcom/netflix/falkor/Action1;Lcom/netflix/falkor/Action;)Lcom/netflix/falkor/IterableBuilder;

    move-result-object v0

    .line 106
    invoke-static {}, Lcom/netflix/falkor/CachedPathEvaluator;->access$000()Lcom/netflix/falkor/Func1;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/netflix/falkor/IterableBuilder;->filter(Lcom/netflix/falkor/Func1;)Lcom/netflix/falkor/IterableBuilder;

    move-result-object v0

    new-instance v4, Lcom/netflix/falkor/CachedPathEvaluator$2$1;

    invoke-direct {v4, p0, v1, v3, v2}, Lcom/netflix/falkor/CachedPathEvaluator$2$1;-><init>(Lcom/netflix/falkor/CachedPathEvaluator$2;Ljava/util/List;Lcom/netflix/falkor/PathMap;Ljava/util/Set;)V

    .line 113
    invoke-static {v4}, Lcom/netflix/falkor/IterableBuilder;->defer(Lcom/netflix/falkor/Func;)Lcom/netflix/falkor/IterableBuilder;

    move-result-object v1

    .line 109
    invoke-virtual {v0, v1}, Lcom/netflix/falkor/IterableBuilder;->concat(Ljava/lang/Iterable;)Lcom/netflix/falkor/IterableBuilder;

    move-result-object v0

    .line 63
    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/netflix/falkor/CachedPathEvaluator$2;->call()Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method
