.class Lcom/mobfox/sdk/webview/MobFoxWebView$7$1;
.super Lcom/mobfox/sdk/runnables/WebViewRunnable;
.source "MobFoxWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/webview/MobFoxWebView$7;->handler(Ljava/lang/String;Lcom/github/lzyzsd/jsbridge/CallBackFunction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mobfox/sdk/webview/MobFoxWebView$7;

.field final synthetic val$respObj:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/webview/MobFoxWebView$7;Landroid/content/Context;Lcom/mobfox/sdk/webview/MobFoxWebView;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mobfox/sdk/webview/MobFoxWebView$7;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "wv"    # Lcom/mobfox/sdk/webview/MobFoxWebView;
    .param p4, "memberName"    # Ljava/lang/String;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$7$1;->this$1:Lcom/mobfox/sdk/webview/MobFoxWebView$7;

    iput-object p5, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$7$1;->val$respObj:Lorg/json/JSONObject;

    invoke-direct {p0, p2, p3, p4}, Lcom/mobfox/sdk/runnables/WebViewRunnable;-><init>(Landroid/content/Context;Lcom/mobfox/sdk/webview/MobFoxWebView;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public mobFoxRun()V
    .locals 3

    .prologue
    .line 211
    iget-object v0, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$7$1;->this$1:Lcom/mobfox/sdk/webview/MobFoxWebView$7;

    iget-object v0, v0, Lcom/mobfox/sdk/webview/MobFoxWebView$7;->val$self:Lcom/mobfox/sdk/webview/MobFoxWebView;

    iget-object v0, v0, Lcom/mobfox/sdk/webview/MobFoxWebView;->loadAdListener:Lcom/mobfox/sdk/webview/MobFoxWebViewLoadAdListener;

    iget-object v1, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$7$1;->this$1:Lcom/mobfox/sdk/webview/MobFoxWebView$7;

    iget-object v1, v1, Lcom/mobfox/sdk/webview/MobFoxWebView$7;->val$self:Lcom/mobfox/sdk/webview/MobFoxWebView;

    iget-object v2, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$7$1;->val$respObj:Lorg/json/JSONObject;

    invoke-interface {v0, v1, v2}, Lcom/mobfox/sdk/webview/MobFoxWebViewLoadAdListener;->onAdResponse(Lcom/mobfox/sdk/webview/MobFoxWebView;Lorg/json/JSONObject;)V

    .line 212
    return-void
.end method
