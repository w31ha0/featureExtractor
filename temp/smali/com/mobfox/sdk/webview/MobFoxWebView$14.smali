.class Lcom/mobfox/sdk/webview/MobFoxWebView$14;
.super Ljava/lang/Object;
.source "MobFoxWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 379
    iput-object p1, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$14;->this$0:Lcom/mobfox/sdk/webview/MobFoxWebView;

    iput-object p2, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$14;->val$self:Lcom/mobfox/sdk/webview/MobFoxWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$14;->val$self:Lcom/mobfox/sdk/webview/MobFoxWebView;

    invoke-virtual {v0}, Lcom/mobfox/sdk/webview/MobFoxWebView;->removeAllViews()V

    .line 383
    return-void
.end method
