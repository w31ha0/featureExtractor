.class Lorg/chromium/base/BaseChromiumApplication$WindowCallbackProxy;
.super Ljava/lang/Object;
.source "BaseChromiumApplication.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mCallback:Landroid/view/Window$Callback;

.field final synthetic this$0:Lorg/chromium/base/BaseChromiumApplication;


# direct methods
.method public constructor <init>(Lorg/chromium/base/BaseChromiumApplication;Landroid/app/Activity;Landroid/view/Window$Callback;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lorg/chromium/base/BaseChromiumApplication$WindowCallbackProxy;->this$0:Lorg/chromium/base/BaseChromiumApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p3, p0, Lorg/chromium/base/BaseChromiumApplication$WindowCallbackProxy;->mCallback:Landroid/view/Window$Callback;

    .line 78
    iput-object p2, p0, Lorg/chromium/base/BaseChromiumApplication$WindowCallbackProxy;->mActivity:Landroid/app/Activity;

    .line 79
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onWindowFocusChanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    array-length v0, p3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    aget-object v0, p3, v2

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 85
    aget-object v0, p3, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/base/BaseChromiumApplication$WindowCallbackProxy;->onWindowFocusChanged(Z)V

    .line 86
    const/4 v0, 0x0

    .line 89
    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/chromium/base/BaseChromiumApplication$WindowCallbackProxy;->mCallback:Landroid/view/Window$Callback;

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 97
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/AbstractMethodError;

    if-eqz v1, :cond_1

    .line 98
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    .line 100
    :cond_1
    throw v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lorg/chromium/base/BaseChromiumApplication$WindowCallbackProxy;->mCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    .line 108
    iget-object v0, p0, Lorg/chromium/base/BaseChromiumApplication$WindowCallbackProxy;->this$0:Lorg/chromium/base/BaseChromiumApplication;

    invoke-static {v0}, Lorg/chromium/base/BaseChromiumApplication;->access$000(Lorg/chromium/base/BaseChromiumApplication;)Lorg/chromium/base/ObserverList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/base/BaseChromiumApplication$WindowFocusChangedListener;

    .line 109
    iget-object v2, p0, Lorg/chromium/base/BaseChromiumApplication$WindowCallbackProxy;->mActivity:Landroid/app/Activity;

    invoke-interface {v0, v2, p1}, Lorg/chromium/base/BaseChromiumApplication$WindowFocusChangedListener;->onWindowFocusChanged(Landroid/app/Activity;Z)V

    goto :goto_0

    .line 111
    :cond_0
    return-void
.end method
