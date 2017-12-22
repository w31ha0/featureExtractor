.class Lcom/netflix/falkor/ObjectPathEvaluator$3;
.super Ljava/lang/Object;
.source "ObjectPathEvaluator.java"

# interfaces
.implements Lcom/netflix/falkor/Watcher;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netflix/falkor/Watcher",
        "<",
        "Lcom/netflix/falkor/PathBoundValue;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/falkor/ObjectPathEvaluator;

.field final synthetic val$output:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/netflix/falkor/ObjectPathEvaluator;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/netflix/falkor/ObjectPathEvaluator$3;->this$0:Lcom/netflix/falkor/ObjectPathEvaluator;

    iput-object p2, p0, Lcom/netflix/falkor/ObjectPathEvaluator$3;->val$output:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public onNext(Lcom/netflix/falkor/PathBoundValue;)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/netflix/falkor/ObjectPathEvaluator$3;->val$output:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 67
    check-cast p1, Lcom/netflix/falkor/PathBoundValue;

    invoke-virtual {p0, p1}, Lcom/netflix/falkor/ObjectPathEvaluator$3;->onNext(Lcom/netflix/falkor/PathBoundValue;)V

    return-void
.end method
