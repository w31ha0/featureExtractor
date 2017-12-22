.class Lcom/netflix/falkor/CachedPathEvaluator$2$3;
.super Ljava/lang/Object;
.source "CachedPathEvaluator.java"

# interfaces
.implements Lcom/netflix/falkor/Action;


# instance fields
.field final synthetic this$1:Lcom/netflix/falkor/CachedPathEvaluator$2;

.field final synthetic val$collapsedPQLs:Ljava/util/List;

.field final synthetic val$pathMap:Lcom/netflix/falkor/PathMap;

.field final synthetic val$paths:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/netflix/falkor/CachedPathEvaluator$2;Ljava/util/Set;Ljava/util/List;Lcom/netflix/falkor/PathMap;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/netflix/falkor/CachedPathEvaluator$2$3;->this$1:Lcom/netflix/falkor/CachedPathEvaluator$2;

    iput-object p2, p0, Lcom/netflix/falkor/CachedPathEvaluator$2$3;->val$paths:Ljava/util/Set;

    iput-object p3, p0, Lcom/netflix/falkor/CachedPathEvaluator$2$3;->val$collapsedPQLs:Ljava/util/List;

    iput-object p4, p0, Lcom/netflix/falkor/CachedPathEvaluator$2$3;->val$pathMap:Lcom/netflix/falkor/PathMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 4

    .prologue
    .line 91
    iget-object v0, p0, Lcom/netflix/falkor/CachedPathEvaluator$2$3;->val$paths:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/falkor/PQL;

    .line 92
    iget-object v2, p0, Lcom/netflix/falkor/CachedPathEvaluator$2$3;->val$collapsedPQLs:Ljava/util/List;

    iget-object v3, p0, Lcom/netflix/falkor/CachedPathEvaluator$2$3;->val$pathMap:Lcom/netflix/falkor/PathMap;

    invoke-virtual {v0}, Lcom/netflix/falkor/PQL;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/falkor/PQL;

    invoke-virtual {v3, v0}, Lcom/netflix/falkor/PathMap;->translate(Lcom/netflix/falkor/PQL;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/netflix/falkor/CachedPathEvaluator$2$3;->val$collapsedPQLs:Ljava/util/List;

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->collapse(Ljava/util/List;)V

    .line 98
    return-void
.end method
