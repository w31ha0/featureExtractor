.class Lcom/netflix/falkor/IterableBuilder$5$1;
.super Ljava/lang/Object;
.source "IterableBuilder.java"

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
.field iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation
.end field

.field onSecond:Z

.field final synthetic this$1:Lcom/netflix/falkor/IterableBuilder$5;

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/netflix/falkor/IterableBuilder$5;)V
    .locals 1

    .prologue
    .line 110
    iput-object p1, p0, Lcom/netflix/falkor/IterableBuilder$5$1;->this$1:Lcom/netflix/falkor/IterableBuilder$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iget-object v0, p0, Lcom/netflix/falkor/IterableBuilder$5$1;->this$1:Lcom/netflix/falkor/IterableBuilder$5;

    iget-object v0, v0, Lcom/netflix/falkor/IterableBuilder$5;->val$self:Lcom/netflix/falkor/IterableBuilder;

    iget-object v0, v0, Lcom/netflix/falkor/IterableBuilder;->iterable:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/falkor/IterableBuilder$5$1;->iterator:Ljava/util/Iterator;

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/falkor/IterableBuilder$5$1;->onSecond:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/netflix/falkor/IterableBuilder$5$1;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    .line 116
    if-nez v0, :cond_1

    .line 117
    iget-boolean v1, p0, Lcom/netflix/falkor/IterableBuilder$5$1;->onSecond:Z

    if-nez v1, :cond_0

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/falkor/IterableBuilder$5$1;->onSecond:Z

    .line 119
    iget-object v0, p0, Lcom/netflix/falkor/IterableBuilder$5$1;->this$1:Lcom/netflix/falkor/IterableBuilder$5;

    iget-object v0, v0, Lcom/netflix/falkor/IterableBuilder$5;->val$iterable:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/falkor/IterableBuilder$5$1;->iterator:Ljava/util/Iterator;

    .line 120
    invoke-virtual {p0}, Lcom/netflix/falkor/IterableBuilder$5$1;->hasNext()Z

    move-result v0

    .line 126
    :cond_0
    :goto_0
    return v0

    .line 124
    :cond_1
    iget-object v1, p0, Lcom/netflix/falkor/IterableBuilder$5$1;->iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/falkor/IterableBuilder$5$1;->value:Ljava/lang/Object;

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
    .line 130
    iget-object v0, p0, Lcom/netflix/falkor/IterableBuilder$5$1;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 134
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
