.class Lcom/netflix/falkor/CachedPathEvaluator$2$2;
.super Ljava/lang/Object;
.source "CachedPathEvaluator.java"

# interfaces
.implements Lcom/netflix/falkor/Action1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netflix/falkor/Action1",
        "<",
        "Lcom/netflix/falkor/PathBoundValue;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netflix/falkor/CachedPathEvaluator$2;

.field final synthetic val$pathMap:Lcom/netflix/falkor/PathMap;

.field final synthetic val$paths:Ljava/util/Set;

.field final synthetic val$reversePathMap:Lcom/netflix/falkor/PathMap;


# direct methods
.method constructor <init>(Lcom/netflix/falkor/CachedPathEvaluator$2;Lcom/netflix/falkor/PathMap;Lcom/netflix/falkor/PathMap;Ljava/util/Set;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/netflix/falkor/CachedPathEvaluator$2$2;->this$1:Lcom/netflix/falkor/CachedPathEvaluator$2;

    iput-object p2, p0, Lcom/netflix/falkor/CachedPathEvaluator$2$2;->val$reversePathMap:Lcom/netflix/falkor/PathMap;

    iput-object p3, p0, Lcom/netflix/falkor/CachedPathEvaluator$2$2;->val$pathMap:Lcom/netflix/falkor/PathMap;

    iput-object p4, p0, Lcom/netflix/falkor/CachedPathEvaluator$2$2;->val$paths:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/netflix/falkor/PathBoundValue;)V
    .locals 4

    .prologue
    .line 69
    invoke-virtual {p1}, Lcom/netflix/falkor/PathBoundValue;->getValue()Lcom/netflix/falkor/Option;

    move-result-object v1

    .line 70
    invoke-virtual {v1}, Lcom/netflix/falkor/Option;->getHasValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v1}, Lcom/netflix/falkor/Option;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/falkor/PQL;

    if-eqz v0, :cond_1

    .line 73
    iget-object v2, p0, Lcom/netflix/falkor/CachedPathEvaluator$2$2;->val$reversePathMap:Lcom/netflix/falkor/PathMap;

    invoke-virtual {v1}, Lcom/netflix/falkor/Option;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/falkor/PQL;

    invoke-virtual {p1}, Lcom/netflix/falkor/PathBoundValue;->getPath()Lcom/netflix/falkor/PQL;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/netflix/falkor/PathMap;->add(Lcom/netflix/falkor/PQL;Lcom/netflix/falkor/PQL;)V

    .line 74
    iget-object v2, p0, Lcom/netflix/falkor/CachedPathEvaluator$2$2;->val$pathMap:Lcom/netflix/falkor/PathMap;

    invoke-virtual {p1}, Lcom/netflix/falkor/PathBoundValue;->getPath()Lcom/netflix/falkor/PQL;

    move-result-object v3

    invoke-virtual {v1}, Lcom/netflix/falkor/Option;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/falkor/PQL;

    invoke-virtual {v2, v3, v0}, Lcom/netflix/falkor/PathMap;->add(Lcom/netflix/falkor/PQL;Lcom/netflix/falkor/PQL;)V

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/netflix/falkor/CachedPathEvaluator$2$2;->val$reversePathMap:Lcom/netflix/falkor/PathMap;

    invoke-virtual {p1}, Lcom/netflix/falkor/PathBoundValue;->getPath()Lcom/netflix/falkor/PQL;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/falkor/PathMap;->translate(Lcom/netflix/falkor/PQL;)Ljava/util/List;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/netflix/falkor/CachedPathEvaluator$2$2;->val$paths:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 67
    check-cast p1, Lcom/netflix/falkor/PathBoundValue;

    invoke-virtual {p0, p1}, Lcom/netflix/falkor/CachedPathEvaluator$2$2;->call(Lcom/netflix/falkor/PathBoundValue;)V

    return-void
.end method
