.class Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$e$1;
.super Ljava/lang/Object;
.source "JSWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$e;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$e;


# direct methods
.method constructor <init>(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$e;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$e$1;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$e;

    .line 1050
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$e$1;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$e;->sendEmptyMessage(I)Z

    .line 1054
    return-void
.end method
