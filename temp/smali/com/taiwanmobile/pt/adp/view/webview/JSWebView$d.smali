.class Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$d;
.super Ljava/lang/Thread;
.source "JSWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;I)V
    .locals 0

    .prologue
    .line 1283
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$d;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1284
    iput p2, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$d;->b:I

    .line 1285
    return-void
.end method

.method static synthetic a(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$d;)Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;
    .locals 1

    .prologue
    .line 1280
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$d;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1290
    :goto_0
    iget v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$d;->b:I

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$d;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->c(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$d;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->a(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 1299
    :cond_0
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$d;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->c(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)I

    move-result v0

    iget v1, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$d;->b:I

    if-lt v0, v1, :cond_3

    .line 1301
    const-string v0, "JSWebView"

    const-string v1, "requestProximityWithTimeAndTouches result: Success."

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$d;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    new-instance v1, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$d$1;

    invoke-direct {v1, p0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$d$1;-><init>(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$d;)V

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->post(Ljava/lang/Runnable;)Z

    .line 1308
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$d;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-virtual {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->releaseProximity()V

    .line 1325
    :cond_1
    :goto_1
    return-void

    .line 1293
    :cond_2
    const-wide/16 v0, 0x32

    :try_start_0
    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$d;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1294
    :catch_0
    move-exception v0

    .line 1295
    const-string v1, "JSWebView"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/taiwanmobile/pt/util/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1310
    :cond_3
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$d;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->a(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 1312
    const-string v0, "JSWebView"

    const-string v1, "requestProximityWithTimeAndTouches result: Fail, cover time is not enough! "

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$d;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    new-instance v1, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$d$2;

    invoke-direct {v1, p0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$d$2;-><init>(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$d;)V

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->post(Ljava/lang/Runnable;)Z

    .line 1319
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$d;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-virtual {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->releaseProximity()V

    goto :goto_1

    .line 1321
    :cond_4
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$d;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->a(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1323
    const-string v0, "JSWebView"

    const-string v1, "requestProximityWithTimeAndTouches result: Fail, ad is already close."

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
