.class final La/r;
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
    .line 440
    iput-object p1, p0, La/r;->a:La/j;

    iput-object p2, p0, La/r;->b:La/k;

    iput-object p3, p0, La/r;->c:La/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 444
    :try_start_0
    iget-object v0, p0, La/r;->a:La/j;

    iget-object v1, p0, La/r;->b:La/k;

    invoke-interface {v0, v1}, La/j;->then(La/k;)Ljava/lang/Object;

    move-result-object v0

    .line 445
    iget-object v1, p0, La/r;->c:La/s;

    invoke-virtual {v1, v0}, La/s;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    :goto_0
    return-void

    .line 446
    :catch_0
    move-exception v0

    .line 447
    iget-object v1, p0, La/r;->c:La/s;

    invoke-virtual {v1, v0}, La/s;->b(Ljava/lang/Exception;)V

    goto :goto_0
.end method
