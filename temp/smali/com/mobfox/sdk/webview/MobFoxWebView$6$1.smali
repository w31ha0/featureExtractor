.class Lcom/mobfox/sdk/webview/MobFoxWebView$6$1;
.super Lcom/mobfox/sdk/runnables/WebViewRunnable;
.source "MobFoxWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/webview/MobFoxWebView$6;->handler(Ljava/lang/String;Lcom/github/lzyzsd/jsbridge/CallBackFunction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mobfox/sdk/webview/MobFoxWebView$6;

.field final synthetic val$error:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/webview/MobFoxWebView$6;Landroid/content/Context;Lcom/mobfox/sdk/webview/MobFoxWebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mobfox/sdk/webview/MobFoxWebView$6;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "wv"    # Lcom/mobfox/sdk/webview/MobFoxWebView;
    .param p4, "memberName"    # Ljava/lang/String;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$6$1;->this$1:Lcom/mobfox/sdk/webview/MobFoxWebView$6;

    iput-object p5, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$6$1;->val$error:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4}, Lcom/mobfox/sdk/runnables/WebViewRunnable;-><init>(Landroid/content/Context;Lcom/mobfox/sdk/webview/MobFoxWebView;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public mobFoxRun()V
    .locals 4

    .prologue
    .line 187
    iget-object v0, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$6$1;->this$1:Lcom/mobfox/sdk/webview/MobFoxWebView$6;

    iget-object v0, v0, Lcom/mobfox/sdk/webview/MobFoxWebView$6;->this$0:Lcom/mobfox/sdk/webview/MobFoxWebView;

    iget-object v0, v0, Lcom/mobfox/sdk/webview/MobFoxWebView;->renderAdListener:Lcom/mobfox/sdk/webview/MobFoxWebViewRenderAdListener;

    iget-object v1, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$6$1;->this$1:Lcom/mobfox/sdk/webview/MobFoxWebView$6;

    iget-object v1, v1, Lcom/mobfox/sdk/webview/MobFoxWebView$6;->val$self:Lcom/mobfox/sdk/webview/MobFoxWebView;

    new-instance v2, Ljava/lang/Exception;

    iget-object v3, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$6$1;->val$error:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/mobfox/sdk/webview/MobFoxWebViewRenderAdListener;->onError(Lcom/mobfox/sdk/webview/MobFoxWebView;Ljava/lang/Exception;)V

    .line 188
    return-void
.end method
