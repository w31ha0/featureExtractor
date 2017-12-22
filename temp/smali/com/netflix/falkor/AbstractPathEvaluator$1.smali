.class Lcom/netflix/falkor/AbstractPathEvaluator$1;
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
        "Lcom/netflix/falkor/Option;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/falkor/AbstractPathEvaluator;


# direct methods
.method constructor <init>(Lcom/netflix/falkor/AbstractPathEvaluator;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/netflix/falkor/AbstractPathEvaluator$1;->this$0:Lcom/netflix/falkor/AbstractPathEvaluator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/netflix/falkor/PathBoundValue;)Lcom/netflix/falkor/Option;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p1}, Lcom/netflix/falkor/PathBoundValue;->getValue()Lcom/netflix/falkor/Option;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 77
    check-cast p1, Lcom/netflix/falkor/PathBoundValue;

    invoke-virtual {p0, p1}, Lcom/netflix/falkor/AbstractPathEvaluator$1;->call(Lcom/netflix/falkor/PathBoundValue;)Lcom/netflix/falkor/Option;

    move-result-object v0

    return-object v0
.end method
