.class Lcom/mobfox/sdk/webview/MobFoxWebView$12;
.super Ljava/lang/Object;
.source "MobFoxWebView.java"

# interfaces
.implements Lcom/mobfox/sdk/webview/MobFoxWebViewClient$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/webview/MobFoxWebView;->init(Lcom/mobfox/sdk/webview/MobFoxWebView;)V
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
    .line 311
    iput-object p1, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$12;->this$0:Lcom/mobfox/sdk/webview/MobFoxWebView;

    iput-object p2, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$12;->val$self:Lcom/mobfox/sdk/webview/MobFoxWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoRedirect(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 335
    iget-object v0, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$12;->this$0:Lcom/mobfox/sdk/webview/MobFoxWebView;

    iget-object v6, v0, Lcom/mobfox/sdk/webview/MobFoxWebView;->mainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/mobfox/sdk/webview/MobFoxWebView$12$3;

    iget-object v1, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$12;->this$0:Lcom/mobfox/sdk/webview/MobFoxWebView;

    iget-object v2, v1, Lcom/mobfox/sdk/webview/MobFoxWebView;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$12;->val$self:Lcom/mobfox/sdk/webview/MobFoxWebView;

    const-string v4, "renderAdListener"

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/mobfox/sdk/webview/MobFoxWebView$12$3;-><init>(Lcom/mobfox/sdk/webview/MobFoxWebView$12;Landroid/content/Context;Lcom/mobfox/sdk/webview/MobFoxWebView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 341
    return-void
.end method

.method public onClick(Ljava/lang/String;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 315
    iget-object v0, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$12;->this$0:Lcom/mobfox/sdk/webview/MobFoxWebView;

    iget-object v6, v0, Lcom/mobfox/sdk/webview/MobFoxWebView;->mainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/mobfox/sdk/webview/MobFoxWebView$12$1;

    iget-object v1, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$12;->this$0:Lcom/mobfox/sdk/webview/MobFoxWebView;

    iget-object v2, v1, Lcom/mobfox/sdk/webview/MobFoxWebView;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$12;->val$self:Lcom/mobfox/sdk/webview/MobFoxWebView;

    const-string v4, "renderAdListener"

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/mobfox/sdk/webview/MobFoxWebView$12$1;-><init>(Lcom/mobfox/sdk/webview/MobFoxWebView$12;Landroid/content/Context;Lcom/mobfox/sdk/webview/MobFoxWebView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 321
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 7
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 325
    iget-object v0, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$12;->this$0:Lcom/mobfox/sdk/webview/MobFoxWebView;

    iget-object v6, v0, Lcom/mobfox/sdk/webview/MobFoxWebView;->mainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/mobfox/sdk/webview/MobFoxWebView$12$2;

    iget-object v1, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$12;->this$0:Lcom/mobfox/sdk/webview/MobFoxWebView;

    iget-object v2, v1, Lcom/mobfox/sdk/webview/MobFoxWebView;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$12;->val$self:Lcom/mobfox/sdk/webview/MobFoxWebView;

    const-string v4, "renderAdListener"

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/mobfox/sdk/webview/MobFoxWebView$12$2;-><init>(Lcom/mobfox/sdk/webview/MobFoxWebView$12;Landroid/content/Context;Lcom/mobfox/sdk/webview/MobFoxWebView;Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 331
    return-void
.end method
