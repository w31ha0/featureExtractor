.class Lcom/mobfox/sdk/webview/MobFoxWebView$3$1;
.super Lcom/mobfox/sdk/runnables/WebViewRunnable;
.source "MobFoxWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/webview/MobFoxWebView$3;->handler(Ljava/lang/String;Lcom/github/lzyzsd/jsbridge/CallBackFunction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mobfox/sdk/webview/MobFoxWebView$3;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/webview/MobFoxWebView$3;Landroid/content/Context;Lcom/mobfox/sdk/webview/MobFoxWebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mobfox/sdk/webview/MobFoxWebView$3;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "wv"    # Lcom/mobfox/sdk/webview/MobFoxWebView;
    .param p4, "memberName"    # Ljava/lang/String;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$3$1;->this$1:Lcom/mobfox/sdk/webview/MobFoxWebView$3;

    invoke-direct {p0, p2, p3, p4}, Lcom/mobfox/sdk/runnables/WebViewRunnable;-><init>(Landroid/content/Context;Lcom/mobfox/sdk/webview/MobFoxWebView;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public mobFoxRun()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$3$1;->this$1:Lcom/mobfox/sdk/webview/MobFoxWebView$3;

    iget-object v0, v0, Lcom/mobfox/sdk/webview/MobFoxWebView$3;->val$self:Lcom/mobfox/sdk/webview/MobFoxWebView;

    invoke-virtual {v0}, Lcom/mobfox/sdk/webview/MobFoxWebView;->removeAllViews()V

    .line 153
    iget-object v0, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$3$1;->this$1:Lcom/mobfox/sdk/webview/MobFoxWebView$3;

    iget-object v0, v0, Lcom/mobfox/sdk/webview/MobFoxWebView$3;->this$0:Lcom/mobfox/sdk/webview/MobFoxWebView;

    iget-object v0, v0, Lcom/mobfox/sdk/webview/MobFoxWebView;->renderAdListener:Lcom/mobfox/sdk/webview/MobFoxWebViewRenderAdListener;

    iget-object v1, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$3$1;->this$1:Lcom/mobfox/sdk/webview/MobFoxWebView$3;

    iget-object v1, v1, Lcom/mobfox/sdk/webview/MobFoxWebView$3;->val$self:Lcom/mobfox/sdk/webview/MobFoxWebView;

    invoke-interface {v0, v1}, Lcom/mobfox/sdk/webview/MobFoxWebViewRenderAdListener;->onAdClosed(Lcom/mobfox/sdk/webview/MobFoxWebView;)V

    .line 154
    return-void
.end method
