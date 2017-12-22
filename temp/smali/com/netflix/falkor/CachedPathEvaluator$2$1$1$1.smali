.class Lcom/netflix/falkor/CachedPathEvaluator$2$1$1$1;
.super Ljava/lang/Object;
.source "CachedPathEvaluator.java"

# interfaces
.implements Lcom/netflix/falkor/Func1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netflix/falkor/Func1",
        "<",
        "Lcom/netflix/falkor/PQL;",
        "Lcom/netflix/falkor/PathBoundValue;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$3:Lcom/netflix/falkor/CachedPathEvaluator$2$1$1;


# direct methods
.method constructor <init>(Lcom/netflix/falkor/CachedPathEvaluator$2$1$1;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/netflix/falkor/CachedPathEvaluator$2$1$1$1;->this$3:Lcom/netflix/falkor/CachedPathEvaluator$2$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/netflix/falkor/PQL;)Lcom/netflix/falkor/PathBoundValue;
    .locals 5

    .prologue
    .line 142
    new-instance v0, Lcom/netflix/falkor/PathBoundValue;

    new-instance v1, Lcom/netflix/falkor/Option;

    new-instance v2, Lcom/netflix/falkor/CachedPathEvaluator$MissingMember;

    iget-object v3, p0, Lcom/netflix/falkor/CachedPathEvaluator$2$1$1$1;->this$3:Lcom/netflix/falkor/CachedPathEvaluator$2$1$1;

    iget-object v3, v3, Lcom/netflix/falkor/CachedPathEvaluator$2$1$1;->this$2:Lcom/netflix/falkor/CachedPathEvaluator$2$1;

    iget-object v3, v3, Lcom/netflix/falkor/CachedPathEvaluator$2$1;->this$1:Lcom/netflix/falkor/CachedPathEvaluator$2;

    iget-object v3, v3, Lcom/netflix/falkor/CachedPathEvaluator$2;->this$0:Lcom/netflix/falkor/CachedPathEvaluator;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/netflix/falkor/CachedPathEvaluator$MissingMember;-><init>(Lcom/netflix/falkor/CachedPathEvaluator;Lcom/netflix/falkor/CachedPathEvaluator$1;)V

    invoke-direct {v1, v2}, Lcom/netflix/falkor/Option;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, p1, v1}, Lcom/netflix/falkor/PathBoundValue;-><init>(Lcom/netflix/falkor/PQL;Lcom/netflix/falkor/Option;)V

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 140
    check-cast p1, Lcom/netflix/falkor/PQL;

    invoke-virtual {p0, p1}, Lcom/netflix/falkor/CachedPathEvaluator$2$1$1$1;->call(Lcom/netflix/falkor/PQL;)Lcom/netflix/falkor/PathBoundValue;

    move-result-object v0

    return-object v0
.end method
