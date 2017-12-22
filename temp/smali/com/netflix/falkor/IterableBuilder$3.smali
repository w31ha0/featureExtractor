.class final Lcom/netflix/falkor/IterableBuilder$3;
.super Ljava/lang/Object;
.source "IterableBuilder.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$func:Lcom/netflix/falkor/Func;


# direct methods
.method constructor <init>(Lcom/netflix/falkor/Func;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/netflix/falkor/IterableBuilder$3;->val$func:Lcom/netflix/falkor/Func;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/netflix/falkor/IterableBuilder$3;->val$func:Lcom/netflix/falkor/Func;

    invoke-interface {v0}, Lcom/netflix/falkor/Func;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
