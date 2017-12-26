.class Lb/a/a/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field final synthetic a:Lb/a/a/a/d;

.field final synthetic b:Lb/a/a/a/b;


# direct methods
.method constructor <init>(Lb/a/a/a/b;Lb/a/a/a/d;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lb/a/a/a/c;->b:Lb/a/a/a/b;

    iput-object p2, p0, Lb/a/a/a/c;->a:Lb/a/a/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lb/a/a/a/c;->a:Lb/a/a/a/d;

    invoke-virtual {v0, p1, p2}, Lb/a/a/a/d;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 90
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lb/a/a/a/c;->a:Lb/a/a/a/d;

    invoke-virtual {v0, p1}, Lb/a/a/a/d;->e(Landroid/app/Activity;)V

    .line 121
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lb/a/a/a/c;->a:Lb/a/a/a/d;

    invoke-virtual {v0, p1}, Lb/a/a/a/d;->c(Landroid/app/Activity;)V

    .line 105
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lb/a/a/a/c;->a:Lb/a/a/a/d;

    invoke-virtual {v0, p1}, Lb/a/a/a/d;->b(Landroid/app/Activity;)V

    .line 100
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lb/a/a/a/c;->a:Lb/a/a/a/d;

    invoke-virtual {v0, p1, p2}, Lb/a/a/a/d;->b(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 116
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lb/a/a/a/c;->a:Lb/a/a/a/d;

    invoke-virtual {v0, p1}, Lb/a/a/a/d;->a(Landroid/app/Activity;)V

    .line 95
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lb/a/a/a/c;->a:Lb/a/a/a/d;

    invoke-virtual {v0, p1}, Lb/a/a/a/d;->d(Landroid/app/Activity;)V

    .line 110
    return-void
.end method
