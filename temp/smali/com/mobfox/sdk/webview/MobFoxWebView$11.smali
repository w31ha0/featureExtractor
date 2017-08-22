.class Lcom/mobfox/sdk/webview/MobFoxWebView$11;
.super Lcom/mobfox/sdk/runnables/WebViewRunnable;
.source "MobFoxWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/webview/MobFoxWebView;-><init>(Landroid/content/Context;Lcom/mobfox/sdk/webview/MobFoxWebViewLoadAdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobfox/sdk/webview/MobFoxWebView;

.field final synthetic val$self:Lcom/mobfox/sdk/webview/MobFoxWebView;

.field final synthetic val$t:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/webview/MobFoxWebView;Landroid/content/Context;Lcom/mobfox/sdk/webview/MobFoxWebView;Ljava/lang/String;Lcom/mobfox/sdk/webview/MobFoxWebView;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mobfox/sdk/webview/MobFoxWebView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "wv"    # Lcom/mobfox/sdk/webview/MobFoxWebView;
    .param p4, "memberName"    # Ljava/lang/String;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$11;->this$0:Lcom/mobfox/sdk/webview/MobFoxWebView;

    iput-object p5, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$11;->val$self:Lcom/mobfox/sdk/webview/MobFoxWebView;

    iput-object p6, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$11;->val$t:Ljava/lang/Throwable;

    invoke-direct {p0, p2, p3, p4}, Lcom/mobfox/sdk/runnables/WebViewRunnable;-><init>(Landroid/content/Context;Lcom/mobfox/sdk/webview/MobFoxWebView;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public mobFoxRun()V
    .locals 4

    .prologue
    .line 302
    iget-object v0, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$11;->val$self:Lcom/mobfox/sdk/webview/MobFoxWebView;

    iget-object v0, v0, Lcom/mobfox/sdk/webview/MobFoxWebView;->loadAdListener:Lcom/mobfox/sdk/webview/MobFoxWebViewLoadAdListener;

    iget-object v1, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$11;->val$self:Lcom/mobfox/sdk/webview/MobFoxWebView;

    new-instance v2, Ljava/lang/Exception;

    iget-object v3, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$11;->val$t:Ljava/lang/Throwable;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/mobfox/sdk/webview/MobFoxWebViewLoadAdListener;->onError(Lcom/mobfox/sdk/webview/MobFoxWebView;Ljava/lang/Exception;)V

    .line 303
    return-void
.end method
