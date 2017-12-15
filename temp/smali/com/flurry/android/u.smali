.class final Lcom/flurry/android/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/flurry/android/v;

.field private synthetic b:Z

.field private synthetic c:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/flurry/android/v;ZLandroid/content/Context;)V
    .locals 0

    .prologue
    .line 863
    iput-object p1, p0, Lcom/flurry/android/u;->a:Lcom/flurry/android/v;

    iput-boolean p2, p0, Lcom/flurry/android/u;->b:Z

    iput-object p3, p0, Lcom/flurry/android/u;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 867
    iget-object v0, p0, Lcom/flurry/android/u;->a:Lcom/flurry/android/v;

    invoke-static {v0}, Lcom/flurry/android/v;->d(Lcom/flurry/android/v;)V

    .line 868
    iget-object v0, p0, Lcom/flurry/android/u;->a:Lcom/flurry/android/v;

    invoke-static {v0}, Lcom/flurry/android/v;->e(Lcom/flurry/android/v;)V

    .line 869
    iget-boolean v0, p0, Lcom/flurry/android/u;->b:Z

    if-nez v0, :cond_0

    .line 872
    iget-object v0, p0, Lcom/flurry/android/u;->a:Lcom/flurry/android/v;

    invoke-static {v0}, Lcom/flurry/android/v;->g(Lcom/flurry/android/v;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/flurry/android/j;

    invoke-direct {v1, p0}, Lcom/flurry/android/j;-><init>(Lcom/flurry/android/u;)V

    invoke-static {}, Lcom/flurry/android/v;->d()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 881
    :cond_0
    invoke-static {}, Lcom/flurry/android/v;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 883
    iget-object v0, p0, Lcom/flurry/android/u;->a:Lcom/flurry/android/v;

    invoke-static {v0}, Lcom/flurry/android/v;->h(Lcom/flurry/android/v;)Lcom/flurry/android/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/l;->b()V

    .line 885
    :cond_1
    return-void
.end method
