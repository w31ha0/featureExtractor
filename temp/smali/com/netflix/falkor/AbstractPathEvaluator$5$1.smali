.class Lcom/netflix/falkor/AbstractPathEvaluator$5$1;
.super Ljava/lang/Object;
.source "AbstractPathEvaluator.java"

# interfaces
.implements Lcom/netflix/falkor/Func1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netflix/falkor/Func1",
        "<",
        "Lcom/netflix/falkor/PathBoundValue;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/netflix/falkor/PathBoundValue;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/falkor/AbstractPathEvaluator$5;


# direct methods
.method constructor <init>(Lcom/netflix/falkor/AbstractPathEvaluator$5;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/netflix/falkor/AbstractPathEvaluator$5$1;->this$0:Lcom/netflix/falkor/AbstractPathEvaluator$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/netflix/falkor/PathBoundValue;)Ljava/lang/Iterable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/falkor/PathBoundValue;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/netflix/falkor/PathBoundValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 198
    invoke-virtual {p1}, Lcom/netflix/falkor/PathBoundValue;->getValue()Lcom/netflix/falkor/Option;

    move-result-object v1

    .line 200
    invoke-virtual {v1}, Lcom/netflix/falkor/Option;->getHasValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/netflix/falkor/Option;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/falkor/PQL;

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {p1}, Lcom/netflix/falkor/PathBoundValue;->getValue()Lcom/netflix/falkor/Option;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/falkor/Option;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/falkor/PQL;

    .line 202
    iget-object v2, p0, Lcom/netflix/falkor/AbstractPathEvaluator$5$1;->this$0:Lcom/netflix/falkor/AbstractPathEvaluator$5;

    iget-object v2, v2, Lcom/netflix/falkor/AbstractPathEvaluator$5;->pathMap:Lcom/netflix/falkor/PathMap;

    invoke-virtual {p1}, Lcom/netflix/falkor/PathBoundValue;->getPath()Lcom/netflix/falkor/PQL;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/netflix/falkor/PathMap;->add(Lcom/netflix/falkor/PQL;Lcom/netflix/falkor/PQL;)V

    .line 205
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 206
    iget-object v0, p0, Lcom/netflix/falkor/AbstractPathEvaluator$5$1;->this$0:Lcom/netflix/falkor/AbstractPathEvaluator$5;

    iget-object v0, v0, Lcom/netflix/falkor/AbstractPathEvaluator$5;->pathMap:Lcom/netflix/falkor/PathMap;

    invoke-virtual {p1}, Lcom/netflix/falkor/PathBoundValue;->getPath()Lcom/netflix/falkor/PQL;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/netflix/falkor/PathMap;->translate(Lcom/netflix/falkor/PQL;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/falkor/PQL;

    .line 207
    new-instance v4, Lcom/netflix/falkor/PathBoundValue;

    invoke-direct {v4, v0, v1}, Lcom/netflix/falkor/PathBoundValue;-><init>(Lcom/netflix/falkor/PQL;Lcom/netflix/falkor/Option;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 209
    :cond_1
    return-object v2
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 196
    check-cast p1, Lcom/netflix/falkor/PathBoundValue;

    invoke-virtual {p0, p1}, Lcom/netflix/falkor/AbstractPathEvaluator$5$1;->call(Lcom/netflix/falkor/PathBoundValue;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method
