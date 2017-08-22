.class Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$c;
.super Ljava/lang/Thread;
.source "JSWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field a:I

.field b:[S

.field c:D

.field d:I

.field final synthetic e:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

.field private final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;II)V
    .locals 1

    .prologue
    .line 904
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$c;->e:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 896
    const-string v0, "ProcessAudioThread"

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$c;->f:Ljava/lang/String;

    .line 906
    iput p2, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$c;->a:I

    .line 907
    iput p3, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$c;->d:I

    .line 908
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 913
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$c;->e:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    iget-object v0, v0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->a:Landroid/media/AudioRecord;

    if-nez v0, :cond_1

    .line 955
    :cond_0
    :goto_0
    return-void

    .line 915
    :cond_1
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$c;->e:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    iget v0, v0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->b:I

    if-ne v0, v1, :cond_2

    .line 916
    const-string v0, "ProcessAudioThread"

    const-string v1, "still running"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 919
    :cond_2
    const-string v0, "ProcessAudioThread"

    const-string v3, "run"

    invoke-static {v0, v3}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$c;->c:D

    .line 921
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$c;->e:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    iget-object v0, v0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->a:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 922
    iget v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$c;->a:I

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$c;->b:[S

    .line 923
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$c;->e:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    iput v1, v0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->b:I

    .line 924
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$c;->e:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    iget v0, v0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->b:I

    if-eq v0, v1, :cond_4

    .line 942
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$c;->e:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    iget v0, v0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->b:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    .line 947
    iget v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$c;->d:I

    if-lez v0, :cond_7

    .line 949
    iget-object v3, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$c;->e:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    iget-wide v4, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$c;->c:D

    iget v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$c;->d:I

    int-to-double v6, v0

    cmpl-double v0, v4, v6

    if-lez v0, :cond_6

    move v0, v1

    :goto_2
    invoke-static {v3, v1, v0, v2}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->a(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;IZI)V

    goto :goto_0

    .line 927
    :cond_4
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$c;->e:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    iget-object v0, v0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->a:Landroid/media/AudioRecord;

    iget-object v3, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$c;->b:[S

    iget v4, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$c;->a:I

    invoke-virtual {v0, v3, v2, v4}, Landroid/media/AudioRecord;->read([SII)I

    move-result v3

    .line 928
    const-wide/16 v4, 0x0

    .line 930
    iget-object v6, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$c;->b:[S

    array-length v7, v6

    move v0, v2

    :goto_3
    if-lt v0, v7, :cond_5

    .line 934
    long-to-double v4, v4

    int-to-double v6, v3

    div-double/2addr v4, v6

    .line 936
    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    invoke-static {v4, v5}, Ljava/lang/Math;->log10(D)D

    move-result-wide v4

    mul-double/2addr v4, v6

    .line 937
    iget-wide v6, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$c;->c:D

    cmpl-double v0, v4, v6

    if-ltz v0, :cond_3

    .line 938
    iput-wide v4, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$c;->c:D

    goto :goto_1

    .line 930
    :cond_5
    aget-short v8, v6, v0

    .line 931
    mul-int/2addr v8, v8

    int-to-long v8, v8

    add-long/2addr v4, v8

    .line 930
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    move v0, v2

    .line 949
    goto :goto_2

    .line 953
    :cond_7
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$c;->e:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    iget-wide v4, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$c;->c:D

    double-to-int v1, v4

    invoke-static {v0, v2, v2, v1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->a(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;IZI)V

    goto/16 :goto_0
.end method
