.class final Lcom/netflix/falkor/CachedPathEvaluator$1;
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
        "Lcom/netflix/falkor/PathBoundValue;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/netflix/falkor/PathBoundValue;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 24
    invoke-virtual {p1}, Lcom/netflix/falkor/PathBoundValue;->getValue()Lcom/netflix/falkor/Option;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/netflix/falkor/Option;->getHasValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/netflix/falkor/Option;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/falkor/CachedPathEvaluator$MissingMember;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    check-cast p1, Lcom/netflix/falkor/PathBoundValue;

    invoke-virtual {p0, p1}, Lcom/netflix/falkor/CachedPathEvaluator$1;->call(Lcom/netflix/falkor/PathBoundValue;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
