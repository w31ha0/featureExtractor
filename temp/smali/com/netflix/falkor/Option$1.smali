.class Lcom/netflix/falkor/Option$1;
.super Ljava/lang/Object;
.source "Option.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field moved:Z

.field final synthetic this$0:Lcom/netflix/falkor/Option;


# direct methods
.method constructor <init>(Lcom/netflix/falkor/Option;)V
    .locals 1

    .prologue
    .line 29
    iput-object p1, p0, Lcom/netflix/falkor/Option$1;->this$0:Lcom/netflix/falkor/Option;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/falkor/Option$1;->moved:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/netflix/falkor/Option$1;->moved:Z

    if-nez v0, :cond_0

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/falkor/Option$1;->moved:Z

    .line 34
    iget-object v0, p0, Lcom/netflix/falkor/Option$1;->this$0:Lcom/netflix/falkor/Option;

    invoke-virtual {v0}, Lcom/netflix/falkor/Option;->getHasValue()Z

    move-result v0

    .line 37
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/netflix/falkor/Option$1;->this$0:Lcom/netflix/falkor/Option;

    invoke-virtual {v0}, Lcom/netflix/falkor/Option;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
