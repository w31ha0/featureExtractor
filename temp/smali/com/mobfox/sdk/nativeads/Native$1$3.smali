.class Lcom/mobfox/sdk/nativeads/Native$1$3;
.super Lcom/mobfox/sdk/runnables/NativeRunnable;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/nativeads/Native$1;->onNativeClicked(Lcom/mobfox/sdk/customevents/CustomEventNative;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mobfox/sdk/nativeads/Native$1;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/nativeads/Native$1;Landroid/content/Context;Lcom/mobfox/sdk/nativeads/Native;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mobfox/sdk/nativeads/Native$1;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "aNative"    # Lcom/mobfox/sdk/nativeads/Native;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/mobfox/sdk/nativeads/Native$1$3;->this$1:Lcom/mobfox/sdk/nativeads/Native$1;

    invoke-direct {p0, p2, p3}, Lcom/mobfox/sdk/runnables/NativeRunnable;-><init>(Landroid/content/Context;Lcom/mobfox/sdk/nativeads/Native;)V

    return-void
.end method


# virtual methods
.method public mobFoxRun()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/mobfox/sdk/nativeads/Native$1$3;->this$1:Lcom/mobfox/sdk/nativeads/Native$1;

    iget-object v0, v0, Lcom/mobfox/sdk/nativeads/Native$1;->this$0:Lcom/mobfox/sdk/nativeads/Native;

    iget-object v0, v0, Lcom/mobfox/sdk/nativeads/Native;->listener:Lcom/mobfox/sdk/nativeads/NativeListener;

    iget-object v1, p0, Lcom/mobfox/sdk/nativeads/Native$1$3;->this$1:Lcom/mobfox/sdk/nativeads/Native$1;

    iget-object v1, v1, Lcom/mobfox/sdk/nativeads/Native$1;->this$0:Lcom/mobfox/sdk/nativeads/Native;

    iget-object v1, v1, Lcom/mobfox/sdk/nativeads/Native;->ad:Lcom/mobfox/sdk/nativeads/NativeAd;

    invoke-interface {v0, v1}, Lcom/mobfox/sdk/nativeads/NativeListener;->onNativeClick(Lcom/mobfox/sdk/nativeads/NativeAd;)V

    .line 100
    return-void
.end method
