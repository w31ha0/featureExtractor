.class Lcom/mobfox/sdk/webview/MobFoxWebView$5;
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


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/webview/MobFoxWebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mobfox/sdk/webview/MobFoxWebView;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$5;->this$0:Lcom/mobfox/sdk/webview/MobFoxWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handler(Ljava/lang/String;Lcom/github/lzyzsd/jsbridge/CallBackFunction;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "function"    # Lcom/github/lzyzsd/jsbridge/CallBackFunction;

    .prologue
    .line 174
    const-string v0, "MobFoxWebView"

    const-string v1, "ready"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v0, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$5;->this$0:Lcom/mobfox/sdk/webview/MobFoxWebView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mobfox/sdk/webview/MobFoxWebView;->ready:Z

    .line 178
    return-void
.end method
