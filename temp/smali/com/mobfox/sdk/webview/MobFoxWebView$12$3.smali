.class Lcom/mobfox/sdk/webview/MobFoxWebView$12$3;
.super Lcom/mobfox/sdk/runnables/WebViewRunnable;
.source "MobFoxWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/webview/MobFoxWebView$12;->onAutoRedirect(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mobfox/sdk/webview/MobFoxWebView$12;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/webview/MobFoxWebView$12;Landroid/content/Context;Lcom/mobfox/sdk/webview/MobFoxWebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mobfox/sdk/webview/MobFoxWebView$12;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "wv"    # Lcom/mobfox/sdk/webview/MobFoxWebView;
    .param p4, "memberName"    # Ljava/lang/String;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$12$3;->this$1:Lcom/mobfox/sdk/webview/MobFoxWebView$12;

    iput-object p5, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$12$3;->val$url:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4}, Lcom/mobfox/sdk/runnables/WebViewRunnable;-><init>(Landroid/content/Context;Lcom/mobfox/sdk/webview/MobFoxWebView;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public mobFoxRun()V
    .locals 3

    .prologue
    .line 338
    iget-object v0, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$12$3;->this$1:Lcom/mobfox/sdk/webview/MobFoxWebView$12;

    iget-object v0, v0, Lcom/mobfox/sdk/webview/MobFoxWebView$12;->this$0:Lcom/mobfox/sdk/webview/MobFoxWebView;

    iget-object v0, v0, Lcom/mobfox/sdk/webview/MobFoxWebView;->renderAdListener:Lcom/mobfox/sdk/webview/MobFoxWebViewRenderAdListener;

    iget-object v1, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$12$3;->this$1:Lcom/mobfox/sdk/webview/MobFoxWebView$12;

    iget-object v1, v1, Lcom/mobfox/sdk/webview/MobFoxWebView$12;->val$self:Lcom/mobfox/sdk/webview/MobFoxWebView;

    iget-object v2, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$12$3;->val$url:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/mobfox/sdk/webview/MobFoxWebViewRenderAdListener;->onAutoRedirect(Lcom/mobfox/sdk/webview/MobFoxWebView;Ljava/lang/String;)V

    .line 339
    return-void
.end method