.class Lcom/mobfox/sdk/webview/MobFoxWebView$16;
.super Lcom/mobfox/sdk/runnables/WebViewRunnable;
.source "MobFoxWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/webview/MobFoxWebView;->renderAd(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobfox/sdk/webview/MobFoxWebView;

.field final synthetic val$adResp:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/webview/MobFoxWebView;Landroid/content/Context;Lcom/mobfox/sdk/webview/MobFoxWebView;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mobfox/sdk/webview/MobFoxWebView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "wv"    # Lcom/mobfox/sdk/webview/MobFoxWebView;
    .param p4, "memberName"    # Ljava/lang/String;

    .prologue
    .line 398
    iput-object p1, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$16;->this$0:Lcom/mobfox/sdk/webview/MobFoxWebView;

    iput-object p5, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$16;->val$adResp:Lorg/json/JSONObject;

    invoke-direct {p0, p2, p3, p4}, Lcom/mobfox/sdk/runnables/WebViewRunnable;-><init>(Landroid/content/Context;Lcom/mobfox/sdk/webview/MobFoxWebView;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public mobFoxRun()V
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$16;->this$0:Lcom/mobfox/sdk/webview/MobFoxWebView;

    iget-object v1, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$16;->val$adResp:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/mobfox/sdk/webview/MobFoxWebView;->renderAd(Lorg/json/JSONObject;)V

    .line 402
    return-void
.end method
