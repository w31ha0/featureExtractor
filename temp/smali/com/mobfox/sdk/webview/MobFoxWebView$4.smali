.class Lcom/mobfox/sdk/webview/MobFoxWebView$4;
.super Ljava/lang/Object;
.source "MobFoxWebView.java"

# interfaces
.implements Lcom/github/lzyzsd/jsbridge/BridgeHandler;


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

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$self:Lcom/mobfox/sdk/webview/MobFoxWebView;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/webview/MobFoxWebView;Landroid/content/Context;Lcom/mobfox/sdk/webview/MobFoxWebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mobfox/sdk/webview/MobFoxWebView;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$4;->this$0:Lcom/mobfox/sdk/webview/MobFoxWebView;

    iput-object p2, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$4;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$4;->val$self:Lcom/mobfox/sdk/webview/MobFoxWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handler(Ljava/lang/String;Lcom/github/lzyzsd/jsbridge/CallBackFunction;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "function"    # Lcom/github/lzyzsd/jsbridge/CallBackFunction;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$4;->this$0:Lcom/mobfox/sdk/webview/MobFoxWebView;

    iget-object v0, v0, Lcom/mobfox/sdk/webview/MobFoxWebView;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mobfox/sdk/webview/MobFoxWebView$4$1;

    iget-object v2, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$4;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$4;->val$self:Lcom/mobfox/sdk/webview/MobFoxWebView;

    const-string v4, "renderAdListener"

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/mobfox/sdk/webview/MobFoxWebView$4$1;-><init>(Lcom/mobfox/sdk/webview/MobFoxWebView$4;Landroid/content/Context;Lcom/mobfox/sdk/webview/MobFoxWebView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 168
    return-void
.end method
