.class Lcom/a/a/a/c;
.super Lcom/a/a/a/i;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private final c:Landroid/app/Application;

.field private final d:Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method constructor <init>(Lcom/a/a/a/m;Lcom/a/a/a/o;Landroid/app/Application;)V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/a/a/a/i;-><init>(Lcom/a/a/a/m;Lcom/a/a/a/o;)V

    .line 24
    new-instance v0, Lcom/a/a/a/d;

    invoke-direct {v0, p0}, Lcom/a/a/a/d;-><init>(Lcom/a/a/a/c;)V

    iput-object v0, p0, Lcom/a/a/a/c;->d:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 77
    iput-object p3, p0, Lcom/a/a/a/c;->c:Landroid/app/Application;

    .line 78
    invoke-static {}, Lcom/a/a/a/a;->b()Lcom/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/a/a;->C()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Registering activity lifecycle callbacks for session analytics."

    invoke-static {v0, v1}, Lb/a/a/a/a/b/m;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/a/a/a/c;->d:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p3, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 81
    return-void
.end method

.method public static a(Landroid/app/Application;Lcom/a/a/a/m;Lcom/a/a/a/h;Lb/a/a/a/a/e/m;)Lcom/a/a/a/c;
    .locals 3

    .prologue
    .line 65
    const-string v0, "Crashlytics Trace Manager"

    invoke-static {v0}, Lb/a/a/a/a/b/v;->b(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 67
    new-instance v1, Lcom/a/a/a/g;

    invoke-direct {v1, p0, v0, p2, p3}, Lcom/a/a/a/g;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/a/a/a/h;Lb/a/a/a/a/e/m;)V

    .line 69
    new-instance v2, Lcom/a/a/a/o;

    invoke-direct {v2, p0, v1, p2, v0}, Lcom/a/a/a/o;-><init>(Landroid/content/Context;Lb/a/a/a/a/d/o;Lcom/a/a/a/h;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 71
    new-instance v0, Lcom/a/a/a/c;

    invoke-direct {v0, p1, v2, p0}, Lcom/a/a/a/c;-><init>(Lcom/a/a/a/m;Lcom/a/a/a/o;Landroid/app/Application;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 85
    invoke-static {}, Lcom/a/a/a/a;->b()Lcom/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/a/a;->C()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Unregistering activity lifecycle callbacks for session analytics"

    invoke-static {v0, v1}, Lb/a/a/a/a/b/m;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/a/a/a/c;->c:Landroid/app/Application;

    iget-object v1, p0, Lcom/a/a/a/c;->d:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 88
    invoke-super {p0}, Lcom/a/a/a/i;->a()V

    .line 89
    return-void
.end method
