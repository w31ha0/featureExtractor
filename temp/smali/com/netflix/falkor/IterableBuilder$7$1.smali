.class Lcom/netflix/falkor/IterableBuilder$7$1;
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

.field final synthetic this$1:Lcom/netflix/falkor/IterableBuilder$7;


# direct methods
.method constructor <init>(Lcom/netflix/falkor/IterableBuilder$7;)V
    .locals 1

    .prologue
    .line 173
    iput-object p1, p0, Lcom/netflix/falkor/IterableBuilder$7$1;->this$1:Lcom/netflix/falkor/IterableBuilder$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iget-object v0, p0, Lcom/netflix/falkor/IterableBuilder$7$1;->this$1:Lcom/netflix/falkor/IterableBuilder$7;

    iget-object v0, v0, Lcom/netflix/falkor/IterableBuilder$7;->this$0:Lcom/netflix/falkor/IterableBuilder;

    iget-object v0, v0, Lcom/netflix/falkor/IterableBuilder;->iterable:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/falkor/IterableBuilder$7$1;->iterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/netflix/falkor/IterableBuilder$7$1;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lcom/netflix/falkor/IterableBuilder$7$1;->this$1:Lcom/netflix/falkor/IterableBuilder$7;

    iget-object v0, v0, Lcom/netflix/falkor/IterableBuilder$7;->val$func:Lcom/netflix/falkor/Func1;

    iget-object v1, p0, Lcom/netflix/falkor/IterableBuilder$7$1;->iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/falkor/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 184
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
