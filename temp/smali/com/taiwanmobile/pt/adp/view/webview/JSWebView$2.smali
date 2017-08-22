.class Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$2;
.super Ljava/lang/Object;
.source "JSWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->a(FI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;


# direct methods
.method constructor <init>(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$2;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    .line 861
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 865
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$2;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    const/4 v1, 0x0

    iput v1, v0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->b:I

    .line 867
    return-void
.end method
