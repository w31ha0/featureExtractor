.class Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b$3;
.super Ljava/lang/Object;
.source "JSWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;


# direct methods
.method constructor <init>(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b$3;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;

    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 449
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b$3;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;

    const-string v1, "main"

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->extraClickAd(Ljava/lang/String;)V

    .line 450
    return-void
.end method
