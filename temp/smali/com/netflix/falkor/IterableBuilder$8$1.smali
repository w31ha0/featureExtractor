.class Lcom/netflix/falkor/IterableBuilder$8$1;
.super Ljava/lang/Object;
.source "IterableBuilder.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TR;>;"
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

.field subIterable:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<TR;>;"
        }
    .end annotation
.end field

.field subIterator:Ljava/util/Iterator;

.field final synthetic this$1:Lcom/netflix/falkor/IterableBuilder$8;


# direct methods
.method constructor <init>(Lcom/netflix/falkor/IterableBuilder$8;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 196
    iput-object p1, p0, Lcom/netflix/falkor/IterableBuilder$8$1;->this$1:Lcom/netflix/falkor/IterableBuilder$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    iget-object v0, p0, Lcom/netflix/falkor/IterableBuilder$8$1;->this$1:Lcom/netflix/falkor/IterableBuilder$8;

    iget-object v0, v0, Lcom/netflix/falkor/IterableBuilder$8;->val$self:Lcom/netflix/falkor/IterableBuilder;

    iget-object v0, v0, Lcom/netflix/falkor/IterableBuilder;->iterable:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/falkor/IterableBuilder$8$1;->iterator:Ljava/util/Iterator;

    .line 198
    iput-object v1, p0, Lcom/netflix/falkor/IterableBuilder$8$1;->subIterable:Ljava/lang/Iterable;

    .line 199
    iput-object v1, p0, Lcom/netflix/falkor/IterableBuilder$8$1;->subIterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 202
    iget-object v0, p0, Lcom/netflix/falkor/IterableBuilder$8$1;->subIterator:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/falkor/IterableBuilder$8$1;->subIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/netflix/falkor/IterableBuilder$8$1;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    .line 204
    if-nez v0, :cond_2

    .line 205
    const/4 v0, 0x0

    .line 220
    :cond_1
    :goto_0
    return v0

    .line 208
    :cond_2
    iget-object v0, p0, Lcom/netflix/falkor/IterableBuilder$8$1;->this$1:Lcom/netflix/falkor/IterableBuilder$8;

    iget-object v0, v0, Lcom/netflix/falkor/IterableBuilder$8;->val$func:Lcom/netflix/falkor/Func1;

    iget-object v2, p0, Lcom/netflix/falkor/IterableBuilder$8$1;->iterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/netflix/falkor/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    iput-object v0, p0, Lcom/netflix/falkor/IterableBuilder$8$1;->subIterable:Ljava/lang/Iterable;

    .line 209
    iget-object v0, p0, Lcom/netflix/falkor/IterableBuilder$8$1;->subIterable:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/falkor/IterableBuilder$8$1;->subIterator:Ljava/util/Iterator;

    .line 211
    :goto_1
    iget-object v0, p0, Lcom/netflix/falkor/IterableBuilder$8$1;->subIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/netflix/falkor/IterableBuilder$8$1;->iterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-ne v2, v1, :cond_1

    .line 212
    iget-object v0, p0, Lcom/netflix/falkor/IterableBuilder$8$1;->this$1:Lcom/netflix/falkor/IterableBuilder$8;

    iget-object v0, v0, Lcom/netflix/falkor/IterableBuilder$8;->val$func:Lcom/netflix/falkor/Func1;

    iget-object v2, p0, Lcom/netflix/falkor/IterableBuilder$8$1;->iterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/netflix/falkor/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    iput-object v0, p0, Lcom/netflix/falkor/IterableBuilder$8$1;->subIterable:Ljava/lang/Iterable;

    .line 213
    iget-object v0, p0, Lcom/netflix/falkor/IterableBuilder$8$1;->subIterable:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/falkor/IterableBuilder$8$1;->subIterator:Ljava/util/Iterator;

    goto :goto_1

    :cond_3
    move v0, v1

    .line 220
    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .prologue
    .line 225
    iget-object v0, p0, Lcom/netflix/falkor/IterableBuilder$8$1;->subIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 229
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
