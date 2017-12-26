.class Lcom/a/a/a/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/a/a/a/m;

.field final b:Lcom/a/a/a/o;


# direct methods
.method constructor <init>(Lcom/a/a/a/m;Lcom/a/a/a/o;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/a/a/a/i;->a:Lcom/a/a/a/m;

    .line 38
    iput-object p2, p0, Lcom/a/a/a/i;->b:Lcom/a/a/a/o;

    .line 39
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/a/a/a/m;Lcom/a/a/a/h;Lb/a/a/a/a/e/m;)Lcom/a/a/a/i;
    .locals 3

    .prologue
    .line 27
    const-string v0, "Crashlytics SAM"

    invoke-static {v0}, Lb/a/a/a/a/b/v;->b(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 29
    new-instance v1, Lcom/a/a/a/g;

    invoke-direct {v1, p0, v0, p2, p3}, Lcom/a/a/a/g;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/a/a/a/h;Lb/a/a/a/a/e/m;)V

    .line 31
    new-instance v2, Lcom/a/a/a/o;

    invoke-direct {v2, p0, v1, p2, v0}, Lcom/a/a/a/o;-><init>(Landroid/content/Context;Lb/a/a/a/a/d/o;Lcom/a/a/a/h;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 33
    new-instance v0, Lcom/a/a/a/i;

    invoke-direct {v0, p1, v2}, Lcom/a/a/a/i;-><init>(Lcom/a/a/a/m;Lcom/a/a/a/o;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/a/a/a/i;->b:Lcom/a/a/a/o;

    invoke-virtual {v0}, Lcom/a/a/a/o;->b()V

    .line 115
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/a/a/a/i;->b:Lcom/a/a/a/o;

    iget-object v1, p0, Lcom/a/a/a/i;->a:Lcom/a/a/a/m;

    sget-object v2, Lcom/a/a/a/l;->a:Lcom/a/a/a/l;

    invoke-static {v1, v2, p1}, Lcom/a/a/a/k;->a(Lcom/a/a/a/m;Lcom/a/a/a/l;Landroid/app/Activity;)Lcom/a/a/a/k;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/o;->a(Ljava/lang/Object;Z)V

    .line 74
    return-void
.end method

.method public a(Lb/a/a/a/a/g/b;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/a/a/a/i;->b:Lcom/a/a/a/o;

    invoke-virtual {v0, p1, p2}, Lcom/a/a/a/o;->a(Lb/a/a/a/a/g/b;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 48
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onCrash called from main thread!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/a/a/a/i;->b:Lcom/a/a/a/o;

    iget-object v1, p0, Lcom/a/a/a/i;->a:Lcom/a/a/a/m;

    invoke-static {v1, p1}, Lcom/a/a/a/k;->b(Lcom/a/a/a/m;Ljava/lang/String;)Lcom/a/a/a/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/a/o;->a(Ljava/lang/Object;)V

    .line 56
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 68
    iget-object v0, p0, Lcom/a/a/a/i;->b:Lcom/a/a/a/o;

    iget-object v1, p0, Lcom/a/a/a/i;->a:Lcom/a/a/a/m;

    invoke-static {v1}, Lcom/a/a/a/k;->a(Lcom/a/a/a/m;)Lcom/a/a/a/k;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/o;->a(Ljava/lang/Object;Z)V

    .line 69
    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/a/a/a/i;->b:Lcom/a/a/a/o;

    iget-object v1, p0, Lcom/a/a/a/i;->a:Lcom/a/a/a/m;

    sget-object v2, Lcom/a/a/a/l;->g:Lcom/a/a/a/l;

    invoke-static {v1, v2, p1}, Lcom/a/a/a/k;->a(Lcom/a/a/a/m;Lcom/a/a/a/l;Landroid/app/Activity;)Lcom/a/a/a/k;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/o;->a(Ljava/lang/Object;Z)V

    .line 79
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/a/a/a/i;->b:Lcom/a/a/a/o;

    iget-object v1, p0, Lcom/a/a/a/i;->a:Lcom/a/a/a/m;

    invoke-static {v1, p1}, Lcom/a/a/a/k;->a(Lcom/a/a/a/m;Ljava/lang/String;)Lcom/a/a/a/k;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/o;->a(Ljava/lang/Object;Z)V

    .line 60
    return-void
.end method

.method public c(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/a/a/a/i;->b:Lcom/a/a/a/o;

    iget-object v1, p0, Lcom/a/a/a/i;->a:Lcom/a/a/a/m;

    sget-object v2, Lcom/a/a/a/l;->e:Lcom/a/a/a/l;

    invoke-static {v1, v2, p1}, Lcom/a/a/a/k;->a(Lcom/a/a/a/m;Lcom/a/a/a/l;Landroid/app/Activity;)Lcom/a/a/a/k;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/o;->a(Ljava/lang/Object;Z)V

    .line 84
    return-void
.end method

.method public d(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lcom/a/a/a/i;->b:Lcom/a/a/a/o;

    iget-object v1, p0, Lcom/a/a/a/i;->a:Lcom/a/a/a/m;

    sget-object v2, Lcom/a/a/a/l;->c:Lcom/a/a/a/l;

    invoke-static {v1, v2, p1}, Lcom/a/a/a/k;->a(Lcom/a/a/a/m;Lcom/a/a/a/l;Landroid/app/Activity;)Lcom/a/a/a/k;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/o;->a(Ljava/lang/Object;Z)V

    .line 89
    return-void
.end method

.method public e(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/a/a/a/i;->b:Lcom/a/a/a/o;

    iget-object v1, p0, Lcom/a/a/a/i;->a:Lcom/a/a/a/m;

    sget-object v2, Lcom/a/a/a/l;->d:Lcom/a/a/a/l;

    invoke-static {v1, v2, p1}, Lcom/a/a/a/k;->a(Lcom/a/a/a/m;Lcom/a/a/a/l;Landroid/app/Activity;)Lcom/a/a/a/k;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/o;->a(Ljava/lang/Object;Z)V

    .line 94
    return-void
.end method

.method public f(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/a/a/a/i;->b:Lcom/a/a/a/o;

    iget-object v1, p0, Lcom/a/a/a/i;->a:Lcom/a/a/a/m;

    sget-object v2, Lcom/a/a/a/l;->b:Lcom/a/a/a/l;

    invoke-static {v1, v2, p1}, Lcom/a/a/a/k;->a(Lcom/a/a/a/m;Lcom/a/a/a/l;Landroid/app/Activity;)Lcom/a/a/a/k;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/o;->a(Ljava/lang/Object;Z)V

    .line 99
    return-void
.end method

.method public g(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/a/a/a/i;->b:Lcom/a/a/a/o;

    iget-object v1, p0, Lcom/a/a/a/i;->a:Lcom/a/a/a/m;

    sget-object v2, Lcom/a/a/a/l;->f:Lcom/a/a/a/l;

    invoke-static {v1, v2, p1}, Lcom/a/a/a/k;->a(Lcom/a/a/a/m;Lcom/a/a/a/l;Landroid/app/Activity;)Lcom/a/a/a/k;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/o;->a(Ljava/lang/Object;Z)V

    .line 104
    return-void
.end method
