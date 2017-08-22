.class Lcom/mobfox/sdk/nativeads/Native$1;
.super Ljava/lang/Object;
.source "Native.java"

# interfaces
.implements Lcom/mobfox/sdk/customevents/CustomEventNativeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/nativeads/Native;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobfox/sdk/nativeads/Native;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/nativeads/Native;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mobfox/sdk/nativeads/Native;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/mobfox/sdk/nativeads/Native$1;->this$0:Lcom/mobfox/sdk/nativeads/Native;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNativeClicked(Lcom/mobfox/sdk/customevents/CustomEventNative;)V
    .locals 4
    .param p1, "customEventNative"    # Lcom/mobfox/sdk/customevents/CustomEventNative;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/mobfox/sdk/nativeads/Native$1;->this$0:Lcom/mobfox/sdk/nativeads/Native;

    iget-object v0, v0, Lcom/mobfox/sdk/nativeads/Native;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/mobfox/sdk/nativeads/Native$1$3;

    iget-object v2, p0, Lcom/mobfox/sdk/nativeads/Native$1;->this$0:Lcom/mobfox/sdk/nativeads/Native;

    iget-object v2, v2, Lcom/mobfox/sdk/nativeads/Native;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/mobfox/sdk/nativeads/Native$1;->this$0:Lcom/mobfox/sdk/nativeads/Native;

    iget-object v3, v3, Lcom/mobfox/sdk/nativeads/Native;->self:Lcom/mobfox/sdk/nativeads/Native;

    invoke-direct {v1, p0, v2, v3}, Lcom/mobfox/sdk/nativeads/Native$1$3;-><init>(Lcom/mobfox/sdk/nativeads/Native$1;Landroid/content/Context;Lcom/mobfox/sdk/nativeads/Native;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 102
    return-void
.end method

.method public onNativeError(Ljava/lang/Exception;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mobfox/sdk/nativeads/Native$1;->this$0:Lcom/mobfox/sdk/nativeads/Native;

    iget-object v0, v0, Lcom/mobfox/sdk/nativeads/Native;->iter:Lcom/mobfox/sdk/nativeads/EventIterator;

    invoke-virtual {v0}, Lcom/mobfox/sdk/nativeads/EventIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/mobfox/sdk/nativeads/Native$1;->this$0:Lcom/mobfox/sdk/nativeads/Native;

    iget-object v0, v0, Lcom/mobfox/sdk/nativeads/Native;->iter:Lcom/mobfox/sdk/nativeads/EventIterator;

    invoke-virtual {v0, p0}, Lcom/mobfox/sdk/nativeads/EventIterator;->callNextEvent(Lcom/mobfox/sdk/customevents/CustomEventNativeListener;)V

    .line 93
    :goto_0
    return-void

    .line 86
    :cond_0
    const-string v0, "MobFoxNative"

    const-string v1, "no more custom events"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lcom/mobfox/sdk/nativeads/Native$1;->this$0:Lcom/mobfox/sdk/nativeads/Native;

    iget-object v0, v0, Lcom/mobfox/sdk/nativeads/Native;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/mobfox/sdk/nativeads/Native$1$2;

    iget-object v2, p0, Lcom/mobfox/sdk/nativeads/Native$1;->this$0:Lcom/mobfox/sdk/nativeads/Native;

    iget-object v2, v2, Lcom/mobfox/sdk/nativeads/Native;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/mobfox/sdk/nativeads/Native$1;->this$0:Lcom/mobfox/sdk/nativeads/Native;

    iget-object v3, v3, Lcom/mobfox/sdk/nativeads/Native;->self:Lcom/mobfox/sdk/nativeads/Native;

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/mobfox/sdk/nativeads/Native$1$2;-><init>(Lcom/mobfox/sdk/nativeads/Native$1;Landroid/content/Context;Lcom/mobfox/sdk/nativeads/Native;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onNativeReady(Lcom/mobfox/sdk/customevents/CustomEventNative;Lcom/mobfox/sdk/nativeads/NativeAd;)V
    .locals 7
    .param p1, "customEventNative"    # Lcom/mobfox/sdk/customevents/CustomEventNative;
    .param p2, "ad"    # Lcom/mobfox/sdk/nativeads/NativeAd;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mobfox/sdk/nativeads/Native$1;->this$0:Lcom/mobfox/sdk/nativeads/Native;

    iget-object v0, v0, Lcom/mobfox/sdk/nativeads/Native;->listener:Lcom/mobfox/sdk/nativeads/NativeListener;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/mobfox/sdk/nativeads/Native$1;->this$0:Lcom/mobfox/sdk/nativeads/Native;

    iget-object v6, v0, Lcom/mobfox/sdk/nativeads/Native;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/mobfox/sdk/nativeads/Native$1$1;

    iget-object v1, p0, Lcom/mobfox/sdk/nativeads/Native$1;->this$0:Lcom/mobfox/sdk/nativeads/Native;

    iget-object v2, v1, Lcom/mobfox/sdk/nativeads/Native;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/mobfox/sdk/nativeads/Native$1;->this$0:Lcom/mobfox/sdk/nativeads/Native;

    iget-object v3, v1, Lcom/mobfox/sdk/nativeads/Native;->self:Lcom/mobfox/sdk/nativeads/Native;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/mobfox/sdk/nativeads/Native$1$1;-><init>(Lcom/mobfox/sdk/nativeads/Native$1;Landroid/content/Context;Lcom/mobfox/sdk/nativeads/Native;Lcom/mobfox/sdk/customevents/CustomEventNative;Lcom/mobfox/sdk/nativeads/NativeAd;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 79
    :cond_0
    return-void
.end method
