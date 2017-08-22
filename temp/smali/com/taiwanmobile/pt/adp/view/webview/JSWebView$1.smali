.class Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$1;
.super Ljava/lang/Object;
.source "JSWebView.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;
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
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$1;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    .line 1359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 1372
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1362
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$1;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->a(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$1;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->b(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 1363
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v4

    float-to-double v0, v0

    .line 1364
    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$1;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v2}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->b(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)D

    move-result-wide v2

    cmpl-double v0, v2, v0

    if-lez v0, :cond_0

    .line 1365
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$1;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->c(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->a(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;I)V

    .line 1366
    const-string v0, "JSWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Proximity sensor of covering time = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$1;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v2}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->c(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    :cond_0
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$1;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    float-to-double v2, v1

    invoke-static {v0, v2, v3}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->a(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;D)V

    .line 1370
    return-void
.end method
