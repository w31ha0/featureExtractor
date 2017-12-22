.class Lorg/chromium/base/BaseChromiumApplication$1;
.super Ljava/lang/Object;
.source "BaseChromiumApplication.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field final synthetic this$0:Lorg/chromium/base/BaseChromiumApplication;


# direct methods
.method constructor <init>(Lorg/chromium/base/BaseChromiumApplication;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lorg/chromium/base/BaseChromiumApplication$1;->this$0:Lorg/chromium/base/BaseChromiumApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 167
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 168
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const-class v2, Landroid/view/Window$Callback;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/Window$Callback;

    aput-object v5, v3, v4

    new-instance v4, Lorg/chromium/base/BaseChromiumApplication$WindowCallbackProxy;

    iget-object v5, p0, Lorg/chromium/base/BaseChromiumApplication$1;->this$0:Lorg/chromium/base/BaseChromiumApplication;

    invoke-direct {v4, v5, p1, v0}, Lorg/chromium/base/BaseChromiumApplication$WindowCallbackProxy;-><init>(Lorg/chromium/base/BaseChromiumApplication;Landroid/app/Activity;Landroid/view/Window$Callback;)V

    invoke-static {v2, v3, v4}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Window$Callback;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 171
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 182
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 193
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 204
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 215
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 226
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 237
    return-void
.end method
