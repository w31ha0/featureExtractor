.class Lcom/netflix/falkor/AbstractPathEvaluator$3;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/falkor/AbstractPathEvaluator;


# direct methods
.method constructor <init>(Lcom/netflix/falkor/AbstractPathEvaluator;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/netflix/falkor/AbstractPathEvaluator$3;->this$0:Lcom/netflix/falkor/AbstractPathEvaluator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/netflix/falkor/PathBoundValue;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p1}, Lcom/netflix/falkor/PathBoundValue;->getValue()Lcom/netflix/falkor/Option;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/falkor/Option;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/falkor/PQL;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 105
    check-cast p1, Lcom/netflix/falkor/PathBoundValue;

    invoke-virtual {p0, p1}, Lcom/netflix/falkor/AbstractPathEvaluator$3;->call(Lcom/netflix/falkor/PathBoundValue;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
