.class Lcom/mobfox/sdk/webview/MobFoxWebView$13;
.super Ljava/lang/Object;
.source "MobFoxWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/webview/MobFoxWebView;->loadAd(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobfox/sdk/webview/MobFoxWebView;

.field final synthetic val$h:Landroid/os/Handler;

.field final synthetic val$options:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/webview/MobFoxWebView;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mobfox/sdk/webview/MobFoxWebView;

    .prologue
    .line 360
    iput-object p1, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$13;->this$0:Lcom/mobfox/sdk/webview/MobFoxWebView;

    iput-object p2, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$13;->val$h:Landroid/os/Handler;

    iput-object p3, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$13;->val$options:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 364
    iget-object v0, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$13;->this$0:Lcom/mobfox/sdk/webview/MobFoxWebView;

    iget-boolean v0, v0, Lcom/mobfox/sdk/webview/MobFoxWebView;->ready:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$13;->this$0:Lcom/mobfox/sdk/webview/MobFoxWebView;

    iget-object v0, v0, Lcom/mobfox/sdk/webview/MobFoxWebView;->waterfalls:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$13;->val$h:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 369
    :goto_0
    return-void

    .line 368
    :cond_1
    iget-object v0, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$13;->this$0:Lcom/mobfox/sdk/webview/MobFoxWebView;

    iget-object v1, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$13;->val$options:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mobfox/sdk/webview/MobFoxWebView;->access$000(Lcom/mobfox/sdk/webview/MobFoxWebView;Ljava/lang/String;)V

    goto :goto_0
.end method
