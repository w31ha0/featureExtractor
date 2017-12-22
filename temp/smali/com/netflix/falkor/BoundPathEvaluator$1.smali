.class Lcom/netflix/falkor/BoundPathEvaluator$1;
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
        "Lcom/netflix/falkor/PQL;",
        "Lcom/netflix/falkor/PQL;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/falkor/BoundPathEvaluator;


# direct methods
.method constructor <init>(Lcom/netflix/falkor/BoundPathEvaluator;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/netflix/falkor/BoundPathEvaluator$1;->this$0:Lcom/netflix/falkor/BoundPathEvaluator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/netflix/falkor/PQL;)Lcom/netflix/falkor/PQL;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/netflix/falkor/BoundPathEvaluator$1;->this$0:Lcom/netflix/falkor/BoundPathEvaluator;

    invoke-virtual {v0}, Lcom/netflix/falkor/BoundPathEvaluator;->getPath()Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/falkor/PQL;->prepend(Lcom/netflix/falkor/PQL;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    check-cast p1, Lcom/netflix/falkor/PQL;

    invoke-virtual {p0, p1}, Lcom/netflix/falkor/BoundPathEvaluator$1;->call(Lcom/netflix/falkor/PQL;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    return-object v0
.end method
