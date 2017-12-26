.class La/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/j",
        "<TTContinuationResult;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:La/m;


# direct methods
.method constructor <init>(La/m;)V
    .locals 0

    .prologue
    .line 481
    iput-object p1, p0, La/n;->a:La/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(La/k;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/k",
            "<TTContinuationResult;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 484
    invoke-virtual {p1}, La/k;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, La/n;->a:La/m;

    iget-object v0, v0, La/m;->c:La/s;

    invoke-virtual {v0}, La/s;->c()V

    .line 491
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 486
    :cond_0
    invoke-virtual {p1}, La/k;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 487
    iget-object v0, p0, La/n;->a:La/m;

    iget-object v0, v0, La/m;->c:La/s;

    invoke-virtual {p1}, La/k;->f()Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {v0, v1}, La/s;->b(Ljava/lang/Exception;)V

    goto :goto_0

    .line 489
    :cond_1
    iget-object v0, p0, La/n;->a:La/m;

    iget-object v0, v0, La/m;->c:La/s;

    invoke-virtual {p1}, La/k;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, La/s;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public synthetic then(La/k;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 481
    invoke-virtual {p0, p1}, La/n;->a(La/k;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
