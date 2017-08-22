.class Lcom/mobfox/sdk/webview/MobFoxWebView$15;
.super Ljava/lang/Object;
.source "MobFoxWebView.java"

# interfaces
.implements Lcom/github/lzyzsd/jsbridge/CallBackFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/webview/MobFoxWebView;->_loadAd(Ljava/lang/String;)V
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
    .line 385
    iput-object p1, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$15;->this$0:Lcom/mobfox/sdk/webview/MobFoxWebView;

    iput-object p2, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$15;->val$self:Lcom/mobfox/sdk/webview/MobFoxWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(Ljava/lang/String;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 388
    iget-object v0, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$15;->val$self:Lcom/mobfox/sdk/webview/MobFoxWebView;

    const-string v1, "loadAd"

    iget-object v2, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$15;->val$self:Lcom/mobfox/sdk/webview/MobFoxWebView;

    iget-object v2, v2, Lcom/mobfox/sdk/webview/MobFoxWebView;->options:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/mobfox/sdk/webview/MobFoxWebView;->callHandler(Ljava/lang/String;Ljava/lang/String;Lcom/github/lzyzsd/jsbridge/CallBackFunction;)V

    .line 389
    return-void
.end method
