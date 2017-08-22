.class public abstract Lcom/mobfox/sdk/runnables/NativeRunnable;
.super Lcom/mobfox/sdk/runnables/MobFoxRunnable;
.source "NativeRunnable.java"


# instance fields
.field aNative:Lcom/mobfox/sdk/nativeads/Native;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mobfox/sdk/nativeads/Native;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "aNative"    # Lcom/mobfox/sdk/nativeads/Native;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/mobfox/sdk/runnables/MobFoxRunnable;-><init>(Landroid/content/Context;)V

    .line 16
    iput-object p2, p0, Lcom/mobfox/sdk/runnables/NativeRunnable;->aNative:Lcom/mobfox/sdk/nativeads/Native;

    .line 17
    return-void
.end method


# virtual methods
.method protected condition()Z
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/mobfox/sdk/runnables/NativeRunnable;->aNative:Lcom/mobfox/sdk/nativeads/Native;

    invoke-virtual {v0}, Lcom/mobfox/sdk/nativeads/Native;->getListener()Lcom/mobfox/sdk/nativeads/NativeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
