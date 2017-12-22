.class Lcom/netflix/falkor/IterableBuilder$9$1;
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

.field final synthetic this$1:Lcom/netflix/falkor/IterableBuilder$9;

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/netflix/falkor/IterableBuilder$9;)V
    .locals 1

    .prologue
    .line 240
    iput-object p1, p0, Lcom/netflix/falkor/IterableBuilder$9$1;->this$1:Lcom/netflix/falkor/IterableBuilder$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iget-object v0, p0, Lcom/netflix/falkor/IterableBuilder$9$1;->this$1:Lcom/netflix/falkor/IterableBuilder$9;

    iget-object v0, v0, Lcom/netflix/falkor/IterableBuilder$9;->this$0:Lcom/netflix/falkor/IterableBuilder;

    iget-object v0, v0, Lcom/netflix/falkor/IterableBuilder;->iterable:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/falkor/IterableBuilder$9$1;->iterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .prologue
    .line 245
    :cond_0
    iget-object v0, p0, Lcom/netflix/falkor/IterableBuilder$9$1;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/netflix/falkor/IterableBuilder$9$1;->this$1:Lcom/netflix/falkor/IterableBuilder$9;

    iget-object v0, v0, Lcom/netflix/falkor/IterableBuilder$9;->val$func:Lcom/netflix/falkor/Func1;

    iget-object v2, p0, Lcom/netflix/falkor/IterableBuilder$9$1;->iterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/falkor/IterableBuilder$9$1;->value:Ljava/lang/Object;

    invoke-interface {v0, v2}, Lcom/netflix/falkor/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    :cond_1
    return v1
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 251
    iget-object v0, p0, Lcom/netflix/falkor/IterableBuilder$9$1;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 255
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
