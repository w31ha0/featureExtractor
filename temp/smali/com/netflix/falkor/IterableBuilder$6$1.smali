.class Lcom/netflix/falkor/IterableBuilder$6$1;
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
.field counter:Ljava/lang/Integer;

.field final synthetic this$0:Lcom/netflix/falkor/IterableBuilder$6;


# direct methods
.method constructor <init>(Lcom/netflix/falkor/IterableBuilder$6;)V
    .locals 1

    .prologue
    .line 144
    iput-object p1, p0, Lcom/netflix/falkor/IterableBuilder$6$1;->this$0:Lcom/netflix/falkor/IterableBuilder$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/falkor/IterableBuilder$6$1;->counter:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 147
    iget-object v1, p0, Lcom/netflix/falkor/IterableBuilder$6$1;->counter:Ljava/lang/Integer;

    if-nez v1, :cond_1

    .line 148
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/falkor/IterableBuilder$6$1;->counter:Ljava/lang/Integer;

    .line 154
    :goto_0
    iget-object v1, p0, Lcom/netflix/falkor/IterableBuilder$6$1;->counter:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/netflix/falkor/IterableBuilder$6$1;->this$0:Lcom/netflix/falkor/IterableBuilder$6;

    iget-object v2, v2, Lcom/netflix/falkor/IterableBuilder$6;->val$list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 151
    :cond_1
    iget-object v1, p0, Lcom/netflix/falkor/IterableBuilder$6$1;->counter:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/netflix/falkor/IterableBuilder$6$1;->counter:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/falkor/IterableBuilder$6$1;->counter:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/netflix/falkor/IterableBuilder$6$1;->this$0:Lcom/netflix/falkor/IterableBuilder$6;

    iget-object v0, v0, Lcom/netflix/falkor/IterableBuilder$6;->val$list:Ljava/util/List;

    iget-object v1, p0, Lcom/netflix/falkor/IterableBuilder$6$1;->counter:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 162
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
