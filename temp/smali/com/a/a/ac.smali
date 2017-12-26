.class Lcom/a/a/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/z;


# direct methods
.method constructor <init>(Lcom/a/a/z;)V
    .locals 0

    .prologue
    .line 513
    iput-object p1, p0, Lcom/a/a/ac;->a:Lcom/a/a/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 516
    iget-object v0, p0, Lcom/a/a/ac;->a:Lcom/a/a/z;

    invoke-static {v0}, Lcom/a/a/z;->a(Lcom/a/a/z;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 517
    iget-object v0, p0, Lcom/a/a/ac;->a:Lcom/a/a/z;

    invoke-static {v0}, Lcom/a/a/z;->c(Lcom/a/a/z;)Lcom/a/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/h;->t()Lcom/a/a/c/a/c;

    move-result-object v0

    .line 518
    if-eqz v0, :cond_0

    .line 519
    iget-object v1, p0, Lcom/a/a/ac;->a:Lcom/a/a/z;

    invoke-static {v1, v0}, Lcom/a/a/z;->a(Lcom/a/a/z;Lcom/a/a/c/a/c;)V

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/a/a/ac;->a:Lcom/a/a/z;

    invoke-static {v0}, Lcom/a/a/z;->d(Lcom/a/a/z;)V

    .line 522
    iget-object v0, p0, Lcom/a/a/ac;->a:Lcom/a/a/z;

    invoke-static {v0}, Lcom/a/a/z;->b(Lcom/a/a/z;)V

    .line 523
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Open sessions were closed and a new session was opened."

    invoke-interface {v0, v1, v2}, Lb/a/a/a/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 529
    :goto_0
    return-object v0

    .line 527
    :cond_1
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Skipping session finalization because a crash has already occurred."

    invoke-interface {v0, v1, v2}, Lb/a/a/a/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 513
    invoke-virtual {p0}, Lcom/a/a/ac;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
