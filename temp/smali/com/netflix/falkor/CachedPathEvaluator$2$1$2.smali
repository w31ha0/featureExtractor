.class Lcom/netflix/falkor/CachedPathEvaluator$2$1$2;
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
.field final synthetic this$2:Lcom/netflix/falkor/CachedPathEvaluator$2$1;


# direct methods
.method constructor <init>(Lcom/netflix/falkor/CachedPathEvaluator$2$1;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/netflix/falkor/CachedPathEvaluator$2$1$2;->this$2:Lcom/netflix/falkor/CachedPathEvaluator$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/netflix/falkor/PathBoundValue;)V
    .locals 3

    .prologue
    .line 126
    invoke-virtual {p1}, Lcom/netflix/falkor/PathBoundValue;->getValue()Lcom/netflix/falkor/Option;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Lcom/netflix/falkor/Option;->getHasValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    invoke-virtual {v0}, Lcom/netflix/falkor/Option;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/netflix/falkor/PQL;

    if-eqz v1, :cond_1

    .line 129
    iget-object v1, p0, Lcom/netflix/falkor/CachedPathEvaluator$2$1$2;->this$2:Lcom/netflix/falkor/CachedPathEvaluator$2$1;

    iget-object v1, v1, Lcom/netflix/falkor/CachedPathEvaluator$2$1;->val$reversePathMap:Lcom/netflix/falkor/PathMap;

    invoke-virtual {v0}, Lcom/netflix/falkor/Option;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/falkor/PQL;

    invoke-virtual {p1}, Lcom/netflix/falkor/PathBoundValue;->getPath()Lcom/netflix/falkor/PQL;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/netflix/falkor/PathMap;->add(Lcom/netflix/falkor/PQL;Lcom/netflix/falkor/PQL;)V

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/netflix/falkor/CachedPathEvaluator$2$1$2;->this$2:Lcom/netflix/falkor/CachedPathEvaluator$2$1;

    iget-object v0, v0, Lcom/netflix/falkor/CachedPathEvaluator$2$1;->val$reversePathMap:Lcom/netflix/falkor/PathMap;

    invoke-virtual {p1}, Lcom/netflix/falkor/PathBoundValue;->getPath()Lcom/netflix/falkor/PQL;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/falkor/PathMap;->translate(Lcom/netflix/falkor/PQL;)Ljava/util/List;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lcom/netflix/falkor/CachedPathEvaluator$2$1$2;->this$2:Lcom/netflix/falkor/CachedPathEvaluator$2$1;

    iget-object v1, v1, Lcom/netflix/falkor/CachedPathEvaluator$2$1;->val$paths:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 124
    check-cast p1, Lcom/netflix/falkor/PathBoundValue;

    invoke-virtual {p0, p1}, Lcom/netflix/falkor/CachedPathEvaluator$2$1$2;->call(Lcom/netflix/falkor/PathBoundValue;)V

    return-void
.end method
