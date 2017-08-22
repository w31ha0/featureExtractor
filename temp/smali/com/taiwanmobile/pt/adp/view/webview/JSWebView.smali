.class public Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;
.super Landroid/webkit/WebView;
.source "JSWebView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$a;,
        Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;,
        Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$c;,
        Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$d;,
        Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$e;
    }
.end annotation


# instance fields
.field a:Landroid/media/AudioRecord;

.field b:I

.field private c:Ljava/lang/String;

.field private d:Landroid/hardware/Camera;

.field private e:Landroid/graphics/SurfaceTexture;

.field private f:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$e;

.field private g:Landroid/hardware/SensorManager;

.field private h:Landroid/hardware/Sensor;

.field private i:I

.field private j:I

.field private k:D

.field private l:Ljava/lang/ref/WeakReference;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Landroid/hardware/SensorEventListener;

.field private p:Lcom/taiwanmobile/pt/adp/view/webview/IRBehavior;

.field private q:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1432
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 77
    iput-object v2, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->c:Ljava/lang/String;

    .line 79
    iput-object v2, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->d:Landroid/hardware/Camera;

    .line 80
    iput-object v2, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->e:Landroid/graphics/SurfaceTexture;

    .line 82
    iput-object v2, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->f:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$e;

    .line 88
    iput v1, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->b:I

    .line 97
    const/4 v0, -0x1

    iput v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->i:I

    .line 98
    iput v1, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->j:I

    .line 99
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->k:D

    .line 107
    iput-object v2, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->l:Ljava/lang/ref/WeakReference;

    .line 109
    iput-object v2, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->m:Ljava/lang/String;

    .line 135
    iput-object v2, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->n:Ljava/lang/String;

    .line 1359
    new-instance v0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$1;

    invoke-direct {v0, p0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$1;-><init>(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)V

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->o:Landroid/hardware/SensorEventListener;

    .line 1423
    iput-object v2, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->p:Lcom/taiwanmobile/pt/adp/view/webview/IRBehavior;

    .line 1429
    iput-object v2, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->q:Ljava/lang/ref/WeakReference;

    .line 1433
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->l:Ljava/lang/ref/WeakReference;

    .line 1434
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->q:Ljava/lang/ref/WeakReference;

    .line 1435
    invoke-direct {p0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->c()V

    .line 1436
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1439
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 77
    iput-object v2, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->c:Ljava/lang/String;

    .line 79
    iput-object v2, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->d:Landroid/hardware/Camera;

    .line 80
    iput-object v2, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->e:Landroid/graphics/SurfaceTexture;

    .line 82
    iput-object v2, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->f:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$e;

    .line 88
    iput v1, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->b:I

    .line 97
    const/4 v0, -0x1

    iput v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->i:I

    .line 98
    iput v1, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->j:I

    .line 99
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->k:D

    .line 107
    iput-object v2, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->l:Ljava/lang/ref/WeakReference;

    .line 109
    iput-object v2, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->m:Ljava/lang/String;

    .line 135
    iput-object v2, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->n:Ljava/lang/String;

    .line 1359
    new-instance v0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$1;

    invoke-direct {v0, p0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$1;-><init>(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)V

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->o:Landroid/hardware/SensorEventListener;

    .line 1423
    iput-object v2, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->p:Lcom/taiwanmobile/pt/adp/view/webview/IRBehavior;

    .line 1429
    iput-object v2, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->q:Ljava/lang/ref/WeakReference;

    .line 1440
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->l:Ljava/lang/ref/WeakReference;

    .line 1441
    invoke-direct {p0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->c()V

    .line 1442
    return-void
.end method

.method static synthetic a(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->i:I

    return v0
.end method

.method private a(FI)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 840
    const-string v0, "JSWebView"

    const-string v2, "startRecorder involved!!!"

    invoke-static {v0, v2}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    invoke-direct {p0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->getValidSampleRates()[I

    move-result-object v6

    .line 842
    aget v0, v6, v3

    const/4 v2, -0x2

    if-ne v0, v2, :cond_1

    .line 845
    const-string v0, "JSWebView"

    const-string v1, "cant find supported rate"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    :cond_0
    :goto_0
    return-void

    .line 849
    :cond_1
    new-instance v0, Landroid/media/AudioRecord;

    aget v2, v6, v3

    .line 850
    const/16 v3, 0x10

    const/4 v4, 0x2

    aget v5, v6, v1

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 849
    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->a:Landroid/media/AudioRecord;

    .line 852
    const-string v0, "JSWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "audioRecorder getState!!!"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->a:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->a:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 858
    new-instance v0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$c;

    aget v1, v6, v1

    invoke-direct {v0, p0, v1, p2}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$c;-><init>(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;II)V

    .line 859
    invoke-virtual {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$c;->start()V

    .line 861
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$2;

    invoke-direct {v1, p0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$2;-><init>(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)V

    .line 868
    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v2, p1

    float-to-long v2, v2

    .line 861
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private a(I)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1120
    const-string v0, "JSWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "switchFlashLight involved!!! callType : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->d:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 1124
    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->d:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1130
    :cond_0
    if-nez p1, :cond_2

    .line 1131
    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->releaseCamera()V

    .line 1162
    :cond_1
    :goto_0
    return-void

    .line 1133
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 1134
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->d:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 1135
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->d:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1136
    const-string v1, "torch"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1137
    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->d:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1144
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-le v0, v1, :cond_3

    .line 1145
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->d:Landroid/hardware/Camera;

    new-instance v1, Landroid/graphics/SurfaceTexture;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1150
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->d:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    goto :goto_0

    .line 1147
    :catch_0
    move-exception v0

    .line 1148
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1151
    :cond_4
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1153
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->d:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1154
    const-string v1, "off"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1155
    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->d:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    .line 1125
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private a(IZI)V
    .locals 4

    .prologue
    .line 971
    const-string v0, "JSWebView"

    const-string v1, "detectSound involved!!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    const-string v1, ""

    .line 973
    const-string v0, "0"

    .line 974
    if-nez p1, :cond_1

    .line 975
    const-string v1, "maxDecibelCallback"

    .line 976
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 984
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "javascript:try{"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");}catch(e){}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 985
    const-string v1, "JSWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "urlStr"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    new-instance v1, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$3;

    invoke-direct {v1, p0, v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$3;-><init>(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->post(Ljava/lang/Runnable;)Z

    .line 992
    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->releaseMic()V

    .line 993
    return-void

    .line 978
    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 979
    const-string v1, "isOverDecibelCallback"

    .line 980
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;D)V
    .locals 1

    .prologue
    .line 99
    iput-wide p1, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->k:D

    return-void
.end method

.method static synthetic a(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;FI)V
    .locals 0

    .prologue
    .line 839
    invoke-direct {p0, p1, p2}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->a(FI)V

    return-void
.end method

.method static synthetic a(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;I)V
    .locals 0

    .prologue
    .line 98
    iput p1, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->j:I

    return-void
.end method

.method static synthetic a(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;IZI)V
    .locals 0

    .prologue
    .line 970
    invoke-direct {p0, p1, p2, p3}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->a(IZI)V

    return-void
.end method

.method static synthetic a(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$e;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->f:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$e;

    return-void
.end method

.method static synthetic a(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->n:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->c:Ljava/lang/String;

    .line 132
    iput-object p2, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->m:Ljava/lang/String;

    .line 133
    return-void
.end method

.method private a()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1089
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->l:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 1106
    :goto_0
    return v0

    .line 1092
    :cond_1
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1094
    const-string v0, "android.hardware.camera"

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1095
    const-string v0, "JSWebView"

    const-string v2, "Device has no camera!"

    invoke-static {v0, v2}, Lcom/taiwanmobile/pt/util/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1096
    goto :goto_0

    .line 1100
    :cond_2
    const-string v3, "android.permission.CAMERA"

    .line 1101
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1099
    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1102
    if-eqz v0, :cond_3

    move v0, v1

    .line 1103
    goto :goto_0

    .line 1106
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 884
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 885
    if-eqz v0, :cond_0

    .line 887
    const/4 v0, 0x0

    .line 889
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)D
    .locals 2

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->k:D

    return-wide v0
.end method

.method static synthetic b(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;I)V
    .locals 0

    .prologue
    .line 1119
    invoke-direct {p0, p1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1203
    invoke-direct {p0, p1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 1204
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->getTxId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1205
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->getTxId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;

    .line 1211
    if-eqz v0, :cond_2

    const-string v1, "adType"

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1212
    const-string v1, "isOpenChrome"

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1213
    const-string v1, "adType"

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1214
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1215
    const-string v2, "isOpenChrome"

    invoke-virtual {v0, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1216
    const-string v2, "JSWebView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "adType : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    sparse-switch v1, :sswitch_data_0

    .line 1246
    :cond_0
    :goto_0
    return-void

    .line 1224
    :sswitch_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1225
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1226
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1227
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1228
    if-eqz v0, :cond_1

    .line 1229
    const-string v0, "com.android.chrome"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1231
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1232
    :catch_0
    move-exception v0

    .line 1233
    const-string v0, "JSWebView"

    const-string v2, "openTargetUrl: Device has no Chrome or not Http !!"

    invoke-static {v0, v2}, Lcom/taiwanmobile/pt/util/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1235
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1239
    :sswitch_1
    invoke-direct {p0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->getTxId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->launchAdActivity(Ljava/lang/String;)V

    goto :goto_0

    .line 1243
    :cond_2
    const-string v1, "JSWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "adType is null ? "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "adType"

    invoke-virtual {v0, v3}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 1218
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_0
        0x80 -> :sswitch_0
    .end sparse-switch
.end method

.method private b()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1254
    const-string v0, "JSWebView"

    const-string v2, "openProximity invoke !!!"

    invoke-static {v0, v2}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->g:Landroid/hardware/SensorManager;

    .line 1256
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->g:Landroid/hardware/SensorManager;

    invoke-static {v0}, Lcom/taiwanmobile/pt/util/Utility;->getProximitySensor(Landroid/hardware/SensorManager;)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->h:Landroid/hardware/Sensor;

    .line 1257
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->h:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 1259
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    iput-wide v2, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->k:D

    .line 1260
    iput v1, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->j:I

    .line 1261
    iput v1, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->i:I

    .line 1264
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->g:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->o:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->h:Landroid/hardware/Sensor;

    invoke-virtual {v0, v2, v3, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1265
    const/4 v0, 0x1

    .line 1267
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic c(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->j:I

    return v0
.end method

.method private c()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1378
    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 1379
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1380
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 1381
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 1382
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 1384
    :cond_0
    invoke-virtual {p0, v3}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->setVerticalScrollBarEnabled(Z)V

    .line 1385
    invoke-virtual {p0, v3}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 1386
    invoke-virtual {p0, v3}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->setLongClickable(Z)V

    .line 1395
    new-instance v0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;-><init>(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;)V

    const-string v1, "android"

    invoke-virtual {p0, v0, v1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1397
    new-instance v1, Lcom/taiwanmobile/pt/adp/view/webview/client/WebChromeClientBase;

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/taiwanmobile/pt/adp/view/webview/client/WebChromeClientBase;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1398
    new-instance v0, Lcom/taiwanmobile/pt/adp/view/webview/client/WebViewClientBase;

    invoke-direct {p0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->getTxId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/taiwanmobile/pt/adp/view/webview/client/WebViewClientBase;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1399
    invoke-virtual {p0, v3}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->setBackgroundColor(I)V

    .line 1401
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->setVisibility(I)V

    .line 1403
    return-void
.end method

.method static synthetic c(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;I)V
    .locals 0

    .prologue
    .line 97
    iput p1, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->i:I

    return-void
.end method

.method static synthetic c(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 882
    invoke-direct {p0, p1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 1429
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->q:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic e(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->getTxId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->l:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic g(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->m:Ljava/lang/String;

    return-object v0
.end method

.method private getTargetUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->c:Ljava/lang/String;

    return-object v0
.end method

.method private getTxId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->m:Ljava/lang/String;

    return-object v0
.end method

.method private getValidSampleRates()[I
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 1066
    const-string v0, "JSWebView"

    const-string v2, "getValidSampleRates"

    invoke-static {v0, v2}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    new-array v2, v8, [I

    .line 1069
    const/4 v0, -0x2

    aput v0, v2, v1

    .line 1072
    const/4 v0, 0x6

    new-array v3, v0, [I

    fill-array-data v3, :array_0

    array-length v4, v3

    move v0, v1

    :goto_0
    if-lt v0, v4, :cond_0

    .line 1082
    :goto_1
    const-string v0, "JSWebView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "rate "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v1, v2, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    const-string v0, "JSWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "bufferSize "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v3, v2, v7

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    return-object v2

    .line 1072
    :cond_0
    aget v5, v3, v0

    .line 1073
    const/16 v6, 0x10

    invoke-static {v5, v6, v8}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v6

    .line 1075
    if-lez v6, :cond_1

    .line 1077
    aput v5, v2, v1

    .line 1078
    aput v6, v2, v7

    goto :goto_1

    .line 1072
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :array_0
    .array-data 4
        0x1f40
        0x2b11
        0x3e80
        0x5622
        0xac44
        0xbb80
    .end array-data
.end method

.method static synthetic h(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->getTargetUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic i(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Lcom/taiwanmobile/pt/adp/view/webview/IRBehavior;
    .locals 1

    .prologue
    .line 1423
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->p:Lcom/taiwanmobile/pt/adp/view/webview/IRBehavior;

    return-object v0
.end method

.method static synthetic j(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Z
    .locals 1

    .prologue
    .line 1088
    invoke-direct {p0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->a()Z

    move-result v0

    return v0
.end method

.method static synthetic k(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$e;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->f:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$e;

    return-object v0
.end method

.method static synthetic l(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Z
    .locals 1

    .prologue
    .line 1253
    invoke-direct {p0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->b()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public clearWebViewResource()V
    .locals 2

    .prologue
    .line 1406
    const-string v0, "JSWebView"

    const-string v1, "clearWebViewResource invoke"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1407
    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1408
    if-eqz v0, :cond_0

    .line 1409
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1412
    :cond_0
    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->stopLoading()V

    .line 1413
    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1414
    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->clearHistory()V

    .line 1415
    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->removeAllViews()V

    .line 1417
    :try_start_0
    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1421
    :goto_0
    return-void

    .line 1418
    :catch_0
    move-exception v0

    .line 1419
    const-string v1, "JSWebView"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/taiwanmobile/pt/util/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleNarrow(I)V
    .locals 2

    .prologue
    .line 832
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->l:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 837
    :cond_0
    :goto_0
    return-void

    .line 835
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:try{handleNarrow("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");}catch(e){}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 116
    const-string v0, "JSWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadContent("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") invoked!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->setVisibility(I)V

    .line 118
    invoke-direct {p0, p2, p3}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0, p1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->loadUrl(Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public pauseVideo()V
    .locals 4

    .prologue
    .line 1185
    .line 1186
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->n:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1187
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:try{stopVideo(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\');}catch(e){}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1191
    :goto_0
    const-string v1, "JSWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pauseVideo"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    invoke-virtual {p0, v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->loadUrl(Ljava/lang/String;)V

    .line 1193
    return-void

    .line 1189
    :cond_0
    const-string v0, "javascript:try{stopVideo(\'video\');}catch(e){}"

    goto :goto_0
.end method

.method public releaseCamera()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1165
    const-string v0, "JSWebView"

    const-string v1, "releaseCamera involved!!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->d:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 1167
    const-string v0, "JSWebView"

    const-string v1, "camera != null!!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->d:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1169
    const-string v1, "off"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1170
    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->d:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1171
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->d:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 1172
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->d:Landroid/hardware/Camera;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 1173
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->d:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 1174
    iput-object v2, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->d:Landroid/hardware/Camera;

    .line 1176
    :cond_0
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->f:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$e;

    if-eqz v0, :cond_1

    .line 1177
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->f:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$e;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$e;->d:Z

    .line 1178
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->f:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$e;

    invoke-virtual {v0, v2}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$e;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1179
    iput-object v2, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->f:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$e;

    .line 1182
    :cond_1
    return-void
.end method

.method public releaseMic()V
    .locals 2

    .prologue
    .line 872
    const-string v0, "JSWebView"

    const-string v1, "releaseMic involved!!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    const/4 v0, 0x2

    iput v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->b:I

    .line 874
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->a:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 875
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->a:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 876
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->a:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 877
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->a:Landroid/media/AudioRecord;

    .line 879
    :cond_0
    return-void
.end method

.method public releaseProximity()V
    .locals 2

    .prologue
    .line 1272
    const-string v0, "JSWebView"

    const-string v1, "releaseProximity invoke !!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    iget v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->i:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->g:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 1274
    const/4 v0, -0x1

    iput v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->i:I

    .line 1275
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->g:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->o:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1276
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->g:Landroid/hardware/SensorManager;

    .line 1278
    :cond_0
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 103
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->q:Ljava/lang/ref/WeakReference;

    .line 104
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->l:Ljava/lang/ref/WeakReference;

    .line 105
    return-void
.end method

.method public setIRBehavior(Lcom/taiwanmobile/pt/adp/view/webview/IRBehavior;)V
    .locals 0

    .prologue
    .line 1426
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->p:Lcom/taiwanmobile/pt/adp/view/webview/IRBehavior;

    .line 1427
    return-void
.end method
