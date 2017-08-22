.class Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$a;
.super Ljava/lang/Thread;
.source "JSWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;


# direct methods
.method public constructor <init>(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)V
    .locals 0

    .prologue
    .line 1330
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$a;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$a;)Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;
    .locals 1

    .prologue
    .line 1328
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$a;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1335
    :goto_0
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$a;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->a(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 1344
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$a;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->a(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1345
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$a;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    new-instance v1, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$a$1;

    invoke-direct {v1, p0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$a$1;-><init>(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$a;)V

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->post(Ljava/lang/Runnable;)Z

    .line 1351
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$a;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-virtual {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->releaseProximity()V

    .line 1356
    :cond_0
    :goto_1
    return-void

    .line 1338
    :cond_1
    const-wide/16 v0, 0x32

    :try_start_0
    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$a;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1339
    :catch_0
    move-exception v0

    .line 1340
    const-string v1, "JSWebView"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/taiwanmobile/pt/util/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1352
    :cond_2
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$a;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->a(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1353
    const-string v0, "JSWebView"

    const-string v1, "countProximityWithinTime result: Fail, ad is already close."

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
