.class Lcom/mobfox/sdk/webview/MobFoxWebView$17;
.super Ljava/lang/Object;
.source "MobFoxWebView.java"

# interfaces
.implements Lcom/github/lzyzsd/jsbridge/CallBackFunction;


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

.field final synthetic val$self:Lcom/mobfox/sdk/webview/MobFoxWebView;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/webview/MobFoxWebView;Lcom/mobfox/sdk/webview/MobFoxWebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mobfox/sdk/webview/MobFoxWebView;

    .prologue
    .line 411
    iput-object p1, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$17;->this$0:Lcom/mobfox/sdk/webview/MobFoxWebView;

    iput-object p2, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$17;->val$self:Lcom/mobfox/sdk/webview/MobFoxWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 415
    if-nez p1, :cond_0

    :try_start_0
    const-string p1, ""

    .line 416
    :cond_0
    const-string v0, "null"

    if-ne p1, v0, :cond_1

    const-string p1, ""

    .line 418
    :cond_1
    iget-object v0, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$17;->val$self:Lcom/mobfox/sdk/webview/MobFoxWebView;

    iget-object v0, v0, Lcom/mobfox/sdk/webview/MobFoxWebView;->renderAdListener:Lcom/mobfox/sdk/webview/MobFoxWebViewRenderAdListener;

    if-nez v0, :cond_2

    .line 423
    :goto_0
    return-void

    .line 420
    :cond_2
    iget-object v0, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$17;->this$0:Lcom/mobfox/sdk/webview/MobFoxWebView;

    iget-object v0, v0, Lcom/mobfox/sdk/webview/MobFoxWebView;->renderAdListener:Lcom/mobfox/sdk/webview/MobFoxWebViewRenderAdListener;

    iget-object v1, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$17;->val$self:Lcom/mobfox/sdk/webview/MobFoxWebView;

    invoke-interface {v0, v1, p1}, Lcom/mobfox/sdk/webview/MobFoxWebViewRenderAdListener;->onRendered(Lcom/mobfox/sdk/webview/MobFoxWebView;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 422
    :catch_0
    move-exception v0

    goto :goto_0
.end method
