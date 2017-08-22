.class Lcom/mobfox/sdk/webview/MobFoxWebView$8;
.super Ljava/lang/Object;
.source "MobFoxWebView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 261
    iput-object p1, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$8;->this$0:Lcom/mobfox/sdk/webview/MobFoxWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 264
    iget-object v0, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$8;->this$0:Lcom/mobfox/sdk/webview/MobFoxWebView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mobfox/sdk/webview/MobFoxWebView;->userInteraction:Z

    .line 265
    const/4 v0, 0x0

    return v0
.end method
