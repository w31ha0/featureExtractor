.class Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$3;
.super Ljava/lang/Object;
.source "JSWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->a(IZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$3;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    iput-object p2, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$3;->b:Ljava/lang/String;

    .line 986
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 989
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$3;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$3;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->loadUrl(Ljava/lang/String;)V

    .line 990
    return-void
.end method
