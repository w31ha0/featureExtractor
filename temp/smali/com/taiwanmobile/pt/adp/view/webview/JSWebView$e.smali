.class Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$e;
.super Landroid/os/Handler;
.source "JSWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field a:F

.field b:I

.field c:Z

.field public d:Z

.field private e:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(FILcom/taiwanmobile/pt/adp/view/webview/JSWebView;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1004
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1001
    iput-boolean v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$e;->c:Z

    .line 1002
    iput-boolean v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$e;->d:Z

    .line 1006
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$e;->e:Ljava/lang/ref/WeakReference;

    .line 1007
    iput p1, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$e;->a:F

    .line 1008
    iput p2, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$e;->b:I

    .line 1010
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 1015
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$e;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$e;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1016
    :cond_0
    const-string v0, "SwithFlashLightHandler"

    const-string v1, "reference is null"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    :goto_0
    return-void

    .line 1020
    :cond_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1022
    iget v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$e;->b:I

    if-gez v0, :cond_2

    iget v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$e;->b:I

    if-eq v0, v3, :cond_2

    .line 1023
    const-string v0, "SwithFlashLightHandler"

    const-string v1, "bad argument"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1027
    :cond_2
    iget v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$e;->b:I

    if-nez v0, :cond_3

    .line 1028
    iput-boolean v4, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$e;->d:Z

    .line 1029
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$e;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-virtual {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->releaseCamera()V

    goto :goto_0

    .line 1032
    :cond_3
    iput-boolean v2, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$e;->d:Z

    .line 1035
    iget-boolean v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$e;->c:Z

    if-eqz v0, :cond_5

    .line 1036
    const-string v0, "SwithFlashLightHandler"

    const-string v1, "torch is turn off!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$e;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->b(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;I)V

    .line 1038
    iput-boolean v4, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$e;->c:Z

    .line 1039
    iget v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$e;->b:I

    if-eq v0, v3, :cond_4

    .line 1040
    iget v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$e;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$e;->b:I

    .line 1050
    :cond_4
    :goto_1
    new-instance v0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$e$1;

    invoke-direct {v0, p0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$e$1;-><init>(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$e;)V

    .line 1055
    iget v1, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$e;->a:F

    float-to-long v2, v1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    .line 1050
    invoke-virtual {p0, v0, v2, v3}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$e;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1044
    :cond_5
    const-string v0, "SwithFlashLightHandler"

    const-string v1, "torch is turn on!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$e;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v0, v2}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->b(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;I)V

    .line 1046
    iput-boolean v2, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$e;->c:Z

    goto :goto_1
.end method
