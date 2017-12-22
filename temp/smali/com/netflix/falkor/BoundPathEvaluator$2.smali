.class Lcom/netflix/falkor/BoundPathEvaluator$2;
.super Ljava/lang/Object;
.source "BoundPathEvaluator.java"

# interfaces
.implements Lcom/netflix/falkor/Func1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netflix/falkor/Func1",
        "<",
        "Lcom/netflix/falkor/PathBoundValue;",
        "Lcom/netflix/falkor/PathBoundValue;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/falkor/BoundPathEvaluator;


# direct methods
.method constructor <init>(Lcom/netflix/falkor/BoundPathEvaluator;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/netflix/falkor/BoundPathEvaluator$2;->this$0:Lcom/netflix/falkor/BoundPathEvaluator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/netflix/falkor/PathBoundValue;)Lcom/netflix/falkor/PathBoundValue;
    .locals 3

    .prologue
    .line 32
    new-instance v0, Lcom/netflix/falkor/PathBoundValue;

    iget-object v1, p0, Lcom/netflix/falkor/BoundPathEvaluator$2;->this$0:Lcom/netflix/falkor/BoundPathEvaluator;

    invoke-virtual {v1}, Lcom/netflix/falkor/BoundPathEvaluator;->getPath()Lcom/netflix/falkor/PQL;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/falkor/PathBoundValue;->getPath()Lcom/netflix/falkor/PQL;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/falkor/PQL;->prepend(Lcom/netflix/falkor/PQL;)Lcom/netflix/falkor/PQL;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/falkor/PathBoundValue;->getValue()Lcom/netflix/falkor/Option;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/falkor/PathBoundValue;-><init>(Lcom/netflix/falkor/PQL;Lcom/netflix/falkor/Option;)V

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    check-cast p1, Lcom/netflix/falkor/PathBoundValue;

    invoke-virtual {p0, p1}, Lcom/netflix/falkor/BoundPathEvaluator$2;->call(Lcom/netflix/falkor/PathBoundValue;)Lcom/netflix/falkor/PathBoundValue;

    move-result-object v0

    return-object v0
.end method
