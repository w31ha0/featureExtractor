.class final La/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:La/j;

.field final synthetic b:La/k;

.field final synthetic c:La/s;


# direct methods
.method constructor <init>(La/j;La/k;La/s;)V
    .locals 0

    .prologue
    .line 473
    iput-object p1, p0, La/m;->a:La/j;

    iput-object p2, p0, La/m;->b:La/k;

    iput-object p3, p0, La/m;->c:La/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 477
    :try_start_0
    iget-object v0, p0, La/m;->a:La/j;

    iget-object v1, p0, La/m;->b:La/k;

    invoke-interface {v0, v1}, La/j;->then(La/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/k;

    .line 478
    if-nez v0, :cond_0

    .line 479
    iget-object v0, p0, La/m;->c:La/s;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, La/s;->b(Ljava/lang/Object;)V

    .line 498
    :goto_0
    return-void

    .line 481
    :cond_0
    new-instance v1, La/n;

    invoke-direct {v1, p0}, La/n;-><init>(La/m;)V

    invoke-virtual {v0, v1}, La/k;->a(La/j;)La/k;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 495
    :catch_0
    move-exception v0

    .line 496
    iget-object v1, p0, La/m;->c:La/s;

    invoke-virtual {v1, v0}, La/s;->b(Ljava/lang/Exception;)V

    goto :goto_0
.end method
