.class La/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/j",
        "<TTResult;",
        "La/k",
        "<TTContinuationResult;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:La/j;

.field final synthetic b:La/k;


# direct methods
.method constructor <init>(La/k;La/j;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, La/q;->b:La/k;

    iput-object p2, p0, La/q;->a:La/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(La/k;)La/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/k",
            "<TTResult;>;)",
            "La/k",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 372
    invoke-virtual {p1}, La/k;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {p1}, La/k;->f()Ljava/lang/Exception;

    move-result-object v0

    invoke-static {v0}, La/k;->a(Ljava/lang/Exception;)La/k;

    move-result-object v0

    .line 377
    :goto_0
    return-object v0

    .line 374
    :cond_0
    invoke-virtual {p1}, La/k;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 375
    invoke-static {}, La/k;->g()La/k;

    move-result-object v0

    goto :goto_0

    .line 377
    :cond_1
    iget-object v0, p0, La/q;->a:La/j;

    invoke-virtual {p1, v0}, La/k;->a(La/j;)La/k;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic then(La/k;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 369
    invoke-virtual {p0, p1}, La/q;->a(La/k;)La/k;

    move-result-object v0

    return-object v0
.end method
