.class Lcom/netflix/falkor/IterableBuilder$2$1;
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

.field final synthetic this$1:Lcom/netflix/falkor/IterableBuilder$2;


# direct methods
.method constructor <init>(Lcom/netflix/falkor/IterableBuilder$2;)V
    .locals 1

    .prologue
    .line 47
    iput-object p1, p0, Lcom/netflix/falkor/IterableBuilder$2$1;->this$1:Lcom/netflix/falkor/IterableBuilder$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iget-object v0, p0, Lcom/netflix/falkor/IterableBuilder$2$1;->this$1:Lcom/netflix/falkor/IterableBuilder$2;

    iget-object v0, v0, Lcom/netflix/falkor/IterableBuilder$2;->val$self:Lcom/netflix/falkor/IterableBuilder;

    invoke-virtual {v0}, Lcom/netflix/falkor/IterableBuilder;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/falkor/IterableBuilder$2$1;->iterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/netflix/falkor/IterableBuilder$2$1;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/netflix/falkor/IterableBuilder$2$1;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/netflix/falkor/IterableBuilder$2$1;->this$1:Lcom/netflix/falkor/IterableBuilder$2;

    iget-object v1, v1, Lcom/netflix/falkor/IterableBuilder$2;->val$action:Lcom/netflix/falkor/Action1;

    invoke-interface {v1, v0}, Lcom/netflix/falkor/Action1;->call(Ljava/lang/Object;)V

    .line 56
    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
