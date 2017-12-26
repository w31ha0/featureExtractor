.class Lcom/a/a/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/Date;

.field final synthetic b:Ljava/lang/Thread;

.field final synthetic c:Ljava/lang/Throwable;

.field final synthetic d:Lcom/a/a/z;


# direct methods
.method constructor <init>(Lcom/a/a/z;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lcom/a/a/am;->d:Lcom/a/a/z;

    iput-object p2, p0, Lcom/a/a/am;->a:Ljava/util/Date;

    iput-object p3, p0, Lcom/a/a/am;->b:Ljava/lang/Thread;

    iput-object p4, p0, Lcom/a/a/am;->c:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 367
    iget-object v0, p0, Lcom/a/a/am;->d:Lcom/a/a/z;

    invoke-static {v0}, Lcom/a/a/z;->a(Lcom/a/a/z;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/a/a/am;->d:Lcom/a/a/z;

    iget-object v1, p0, Lcom/a/a/am;->a:Ljava/util/Date;

    iget-object v2, p0, Lcom/a/a/am;->b:Ljava/lang/Thread;

    iget-object v3, p0, Lcom/a/a/am;->c:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2, v3}, Lcom/a/a/z;->b(Lcom/a/a/z;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 370
    :cond_0
    return-void
.end method
