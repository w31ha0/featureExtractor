.class public Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;
.super Ljava/lang/Object;
.source "TWMFloatAdView.java"

# interfaces
.implements Lcom/taiwanmobile/pt/adp/view/TWMAd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;,
        Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$b;,
        Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$c;,
        Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$d;
    }
.end annotation


# instance fields
.field private A:Landroid/widget/RelativeLayout;

.field private B:Landroid/widget/ImageView;

.field private C:Landroid/widget/ImageView;

.field private D:Landroid/os/Handler;

.field private E:Z

.field private F:Z

.field private G:Ljava/lang/String;

.field private H:Z

.field private I:Z

.field private final J:Lcom/taiwanmobile/pt/adp/view/internal/AdViewServiceCallback;

.field private K:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$d;

.field private L:Landroid/content/BroadcastReceiver;

.field private a:Ljava/lang/String;

.field private b:Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

.field private c:Ljava/lang/String;

.field private d:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$c;

.field private e:Ljava/lang/ref/WeakReference;

.field private f:Ljava/lang/ref/WeakReference;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

.field private l:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

.field private m:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;

.field private n:Landroid/view/WindowManager$LayoutParams;

.field private o:Z

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:Z

.field private v:Landroid/widget/ImageView;

.field private w:Z

.field private x:Z

.field private y:I

.field private z:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->a:Ljava/lang/String;

    .line 73
    iput-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->b:Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

    .line 77
    iput-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->e:Ljava/lang/ref/WeakReference;

    .line 78
    iput-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->f:Ljava/lang/ref/WeakReference;

    .line 79
    iput-boolean v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->g:Z

    .line 80
    iput-boolean v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->h:Z

    .line 81
    iput-boolean v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->i:Z

    .line 82
    iput-boolean v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->j:Z

    .line 86
    iput-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->k:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    .line 90
    iput-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->l:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    .line 91
    iput-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->m:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;

    .line 93
    iput-boolean v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->o:Z

    .line 102
    iput-boolean v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->u:Z

    .line 105
    iput-boolean v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->w:Z

    .line 106
    iput-boolean v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->x:Z

    .line 110
    iput v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->y:I

    .line 125
    iput-boolean v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->E:Z

    .line 127
    iput-boolean v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->F:Z

    .line 128
    const-string v0, ""

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->G:Ljava/lang/String;

    .line 129
    iput-boolean v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->H:Z

    .line 130
    iput-boolean v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->I:Z

    .line 132
    new-instance v0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$1;

    invoke-direct {v0, p0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$1;-><init>(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)V

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->J:Lcom/taiwanmobile/pt/adp/view/internal/AdViewServiceCallback;

    .line 144
    iput-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->K:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$d;

    .line 949
    new-instance v0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$3;

    invoke-direct {v0, p0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$3;-><init>(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)V

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->L:Landroid/content/BroadcastReceiver;

    .line 147
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->f:Ljava/lang/ref/WeakReference;

    .line 148
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->e:Ljava/lang/ref/WeakReference;

    .line 149
    iput-object p2, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->c:Ljava/lang/String;

    .line 150
    iput-boolean p3, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->g:Z

    .line 151
    new-instance v0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$d;

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->J:Lcom/taiwanmobile/pt/adp/view/internal/AdViewServiceCallback;

    invoke-direct {v0, p0, p1, v1}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$d;-><init>(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;Landroid/content/Context;Lcom/taiwanmobile/pt/adp/view/internal/AdViewServiceCallback;)V

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->K:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$d;

    .line 153
    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.taiwanmobile.pt.adp.view.TWMFloatAdView"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 154
    const-string v0, "data"

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 155
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 156
    new-instance v1, Landroid/content/IntentFilter;

    const-string v0, "com.taiwanmobile.pt.adp.view.TWMFloatAdView"

    invoke-direct {v1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->L:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 158
    invoke-direct {p0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->d()V

    .line 159
    return-void
.end method

.method static synthetic A(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->l:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    return-object v0
.end method

.method static synthetic B(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->I:Z

    return v0
.end method

.method static synthetic C(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->v:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic D(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)V
    .locals 0

    .prologue
    .line 885
    invoke-direct {p0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->k()V

    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 279
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->k:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    if-eqz v0, :cond_0

    .line 284
    :try_start_0
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->k:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->clearCache(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 285
    :catch_0
    move-exception v0

    .line 286
    const-string v1, "TWMFloatAdView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "jsWebViewSmall"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/taiwanmobile/pt/util/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Landroid/widget/RelativeLayout;)V
    .locals 3

    .prologue
    .line 820
    if-nez p1, :cond_1

    .line 838
    :cond_0
    :goto_0
    return-void

    .line 822
    :cond_1
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 825
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 827
    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$2;-><init>(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;Landroid/view/WindowManager;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private a(Landroid/widget/RelativeLayout;Landroid/view/WindowManager$LayoutParams;)V
    .locals 3

    .prologue
    .line 799
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 817
    :cond_0
    :goto_0
    return-void

    .line 801
    :cond_1
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 804
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 805
    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$10;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$10;-><init>(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;Landroid/view/WindowManager;Landroid/widget/RelativeLayout;Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private a(Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;)V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->b:Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->b:Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

    invoke-interface {v0, p0, p1}, Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;->onFailedToReceiveAd(Lcom/taiwanmobile/pt/adp/view/TWMAd;Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;)V

    .line 214
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;I)V
    .locals 0

    .prologue
    .line 110
    iput p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->y:I

    return-void
.end method

.method static synthetic a(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->D:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;Landroid/widget/RelativeLayout;)V
    .locals 0

    .prologue
    .line 819
    invoke-direct {p0, p1}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->a(Landroid/widget/RelativeLayout;)V

    return-void
.end method

.method static synthetic a(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;Landroid/widget/RelativeLayout;Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    .prologue
    .line 797
    invoke-direct {p0, p1, p2}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->a(Landroid/widget/RelativeLayout;Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;)V
    .locals 0

    .prologue
    .line 210
    invoke-direct {p0, p1}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->a(Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;)V

    return-void
.end method

.method static synthetic a(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$c;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->d:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$c;

    return-void
.end method

.method static synthetic a(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->G:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 377
    invoke-direct {p0, p1, p2, p3}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;Z)V
    .locals 0

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->x:Z

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 217
    const-string v0, "TWMFloatAdView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "popAdReceive("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->b:Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->b:Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

    invoke-interface {v0, p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;->onReceiveAd(Lcom/taiwanmobile/pt/adp/view/TWMAd;)V

    .line 221
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 379
    new-instance v0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;

    invoke-direct {v0, p0, p3}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$a;-><init>(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;Ljava/lang/String;)V

    .line 380
    new-instance v1, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$b;-><init>(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$b;)V

    .line 381
    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->k:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->l:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    if-nez v2, :cond_1

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->k:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-virtual {v2, v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 385
    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->k:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-virtual {v2, v1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->setIRBehavior(Lcom/taiwanmobile/pt/adp/view/webview/IRBehavior;)V

    .line 386
    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->l:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-virtual {v2, v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 387
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->l:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->setIRBehavior(Lcom/taiwanmobile/pt/adp/view/webview/IRBehavior;)V

    .line 388
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->l:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-virtual {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->resumeTimers()V

    .line 389
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->k:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-virtual {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->resumeTimers()V

    .line 390
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->l:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&fz=1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->loadContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->k:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&fz=0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->loadContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 763
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->n:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_1

    .line 795
    :cond_0
    :goto_0
    return-void

    .line 766
    :cond_1
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 769
    const-string v0, "TWMFloatAdView"

    const-string v1, "removeFloatView invoked!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    iget-boolean v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->w:Z

    if-nez v0, :cond_0

    .line 772
    iput-boolean v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->w:Z

    .line 774
    iget v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->y:I

    if-nez v0, :cond_3

    .line 775
    const-string v0, "TWMFloatAdView"

    const-string v1, "removeFloatView invoked0!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->A:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->a(Landroid/widget/RelativeLayout;)V

    .line 790
    :cond_2
    :goto_1
    if-eqz p1, :cond_0

    .line 791
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->w:Z

    goto :goto_0

    .line 779
    :cond_3
    iget v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->y:I

    if-ne v0, v2, :cond_4

    .line 780
    const-string v0, "TWMFloatAdView"

    const-string v1, "removeFloatView invoked1!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->z:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->a(Landroid/widget/RelativeLayout;)V

    goto :goto_1

    .line 784
    :cond_4
    iget v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->y:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 785
    const-string v0, "TWMFloatAdView"

    const-string v1, "removeFloatView invoked2!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->A:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->a(Landroid/widget/RelativeLayout;)V

    .line 787
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->z:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->a(Landroid/widget/RelativeLayout;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->H:Z

    return v0
.end method

.method private b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 928
    const-string v0, "TWMFloatAdView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "getDrawableByPath("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") invoked!!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v2

    .line 946
    :goto_0
    return-object v0

    .line 931
    :cond_1
    const-class v0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 934
    :try_start_0
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 936
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 937
    const/16 v3, 0xf0

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 938
    const/16 v3, 0xf0

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 939
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v0, v3, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 941
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {v1, v0, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 942
    goto :goto_0

    :catch_0
    move-exception v0

    .line 943
    const-string v1, "TWMFloatAdView"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcom/taiwanmobile/pt/util/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    goto :goto_0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 295
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->l:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->I:Z

    if-nez v0, :cond_0

    .line 297
    :try_start_0
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->l:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->clearCache(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 298
    :catch_0
    move-exception v0

    .line 299
    const-string v1, "TWMFloatAdView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "jsWebViewBig"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/taiwanmobile/pt/util/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)V
    .locals 0

    .prologue
    .line 637
    invoke-direct {p0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->h()V

    return-void
.end method

.method static synthetic b(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;Z)V
    .locals 0

    .prologue
    .line 761
    invoke-direct {p0, p1}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->a(Z)V

    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 364
    const-string v0, "TWMFloatAdView"

    const-string v1, "releaseWebView"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->l:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->l:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-virtual {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->clearWebViewResource()V

    .line 367
    iput-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->l:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->k:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    if-eqz v0, :cond_1

    .line 372
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->k:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-virtual {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->clearWebViewResource()V

    .line 373
    iput-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->k:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    .line 375
    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)V
    .locals 0

    .prologue
    .line 685
    invoke-direct {p0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->i()V

    return-void
.end method

.method static synthetic c(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;Z)V
    .locals 0

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->o:Z

    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 396
    const-string v0, "TWMFloatAdView"

    const-string v1, "initialView invoked!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/taiwanmobile/pt/util/Utility;->checkPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 402
    const-string v0, "TWMFloatAdView"

    const-string v1, "Permissions must be declared in AndroidManifest.xml."

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    invoke-direct {p0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->g()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)V
    .locals 0

    .prologue
    .line 892
    invoke-direct {p0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->l()V

    return-void
.end method

.method static synthetic d(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;Z)V
    .locals 0

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->u:Z

    return-void
.end method

.method static synthetic e(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->a:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .locals 6

    .prologue
    const-wide v2, 0x3fe6666666666666L    # 0.7

    const-wide v4, 0x3fc999999999999aL    # 0.2

    .line 411
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 412
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 414
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 415
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->p:I

    .line 416
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->q:I

    .line 418
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/taiwanmobile/pt/util/Utility;->getScreenOrientation(Landroid/app/Activity;)I

    move-result v0

    if-nez v0, :cond_0

    .line 419
    iget v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->q:I

    int-to-double v0, v0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->t:I

    .line 420
    iget v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->p:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->r:I

    .line 421
    iget v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->q:I

    int-to-double v0, v0

    mul-double/2addr v0, v4

    double-to-int v0, v0

    iput v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->s:I

    .line 429
    :goto_0
    return-void

    .line 423
    :cond_0
    iget v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->q:I

    int-to-double v0, v0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->t:I

    .line 425
    iget v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->p:I

    int-to-double v0, v0

    mul-double/2addr v0, v4

    double-to-int v0, v0

    iput v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->r:I

    .line 426
    iget v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->q:I

    int-to-double v0, v0

    const-wide v2, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->s:I

    goto :goto_0
.end method

.method static synthetic e(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;Z)V
    .locals 0

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->j:Z

    return-void
.end method

.method static synthetic f(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->c:Ljava/lang/String;

    return-object v0
.end method

.method private f()V
    .locals 6

    .prologue
    .line 432
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->n:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 433
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/taiwanmobile/pt/util/Utility;->getScreenOrientation(Landroid/app/Activity;)I

    move-result v0

    if-nez v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->n:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->q:I

    int-to-double v2, v1

    const-wide v4, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 438
    :goto_0
    return-void

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->n:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->q:I

    int-to-double v2, v1

    const-wide v4, 0x3fd6666666666666L    # 0.35

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0
.end method

.method static synthetic f(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;Z)V
    .locals 0

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->i:Z

    return-void
.end method

.method static synthetic g(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->b:Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

    return-object v0
.end method

.method private g()V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, -0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 443
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->E:Z

    .line 444
    invoke-direct {p0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->e()V

    .line 445
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->n:Landroid/view/WindowManager$LayoutParams;

    .line 447
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->n:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 449
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->n:Landroid/view/WindowManager$LayoutParams;

    iput v7, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 451
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->n:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 453
    invoke-direct {p0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->f()V

    .line 456
    const-string v0, "android.view.WindowManager$LayoutParams"

    .line 458
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 459
    const-string v1, "privateFlags"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 460
    const-string v2, "PRIVATE_FLAG_NO_MOVE_ANIMATION"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 461
    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->n:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    .line 462
    iget-object v3, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->n:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 463
    or-int/2addr v0, v2

    .line 464
    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->n:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 474
    :goto_0
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 475
    new-instance v1, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->k:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    .line 476
    new-instance v1, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->l:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    .line 481
    :goto_1
    const-string v0, "TWMFloatAdView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isLeftSide"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->g:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    iget-boolean v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->g:Z

    if-eqz v0, :cond_2

    .line 486
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->n:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 488
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->r:I

    iget v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->s:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 489
    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->k:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-virtual {v1, v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 491
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 492
    iget v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->t:I

    .line 491
    invoke-direct {v0, v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 493
    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->l:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-virtual {v1, v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 520
    :goto_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 521
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 522
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->k:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-virtual {v0, v7, v4}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 523
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->l:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-virtual {v0, v7, v4}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 530
    :cond_0
    :goto_3
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->k:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-virtual {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 531
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->l:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-virtual {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 533
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->k:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-virtual {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 534
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->l:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-virtual {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 535
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->k:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-virtual {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 536
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->l:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-virtual {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 538
    invoke-direct {p0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->a()V

    .line 539
    invoke-direct {p0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->b()V

    .line 544
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->l:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->setBackgroundColor(I)V

    .line 545
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->k:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->setBackgroundColor(I)V

    .line 547
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->k:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-virtual {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 554
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->z:Landroid/widget/RelativeLayout;

    .line 555
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->z:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->l:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 556
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 559
    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 560
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 563
    new-instance v2, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->B:Landroid/widget/ImageView;

    .line 564
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->B:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 565
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->B:Landroid/widget/ImageView;

    const-string v2, "/float_close_big.png"

    invoke-direct {p0, v2}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 566
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->B:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 567
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->B:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setId(I)V

    .line 568
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->B:Landroid/widget/ImageView;

    new-instance v2, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$4;

    invoke-direct {v2, p0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$4;-><init>(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 577
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->z:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->B:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 578
    new-instance v2, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->C:Landroid/widget/ImageView;

    .line 579
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->C:Landroid/widget/ImageView;

    const-string v2, "/narrow_f.png"

    invoke-direct {p0, v2}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 580
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 582
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->B:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 583
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 584
    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->C:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 585
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->C:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 586
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->C:Landroid/widget/ImageView;

    new-instance v2, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$5;

    invoke-direct {v2, p0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$5;-><init>(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 595
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->z:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->C:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 597
    new-instance v2, Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->A:Landroid/widget/RelativeLayout;

    .line 599
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->A:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 600
    invoke-direct {v2, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 599
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 602
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->A:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->k:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 605
    new-instance v2, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->v:Landroid/widget/ImageView;

    .line 606
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->v:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 607
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->v:Landroid/widget/ImageView;

    const-string v2, "/float_close_small.png"

    invoke-direct {p0, v2}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 608
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->v:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 609
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->v:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setId(I)V

    .line 610
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->v:Landroid/widget/ImageView;

    new-instance v1, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$6;

    invoke-direct {v1, p0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$6;-><init>(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 616
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->A:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->v:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 617
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->n:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->r:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 618
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->n:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->s:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 620
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->A:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 621
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 623
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->A:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->n:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v0, v1}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->a(Landroid/widget/RelativeLayout;Landroid/view/WindowManager$LayoutParams;)V

    .line 625
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_4

    .line 626
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->v:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 627
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->B:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 628
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->C:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 635
    :goto_4
    return-void

    .line 466
    :catch_0
    move-exception v0

    .line 467
    const-string v1, "TWMFloatAdView"

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/taiwanmobile/pt/util/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 469
    :catch_1
    move-exception v0

    .line 470
    const-string v1, "TWMFloatAdView"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/taiwanmobile/pt/util/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 478
    :cond_1
    new-instance v1, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->k:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    .line 479
    new-instance v1, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->l:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    goto/16 :goto_1

    .line 497
    :cond_2
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->n:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x35

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 499
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->r:I

    iget v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->s:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 500
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 501
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 502
    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->k:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-virtual {v1, v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 504
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 505
    iget v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->t:I

    .line 504
    invoke-direct {v0, v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 507
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 508
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 509
    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->l:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-virtual {v1, v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 525
    :cond_3
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->k:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-virtual {v0, v5, v4}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 526
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->l:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-virtual {v0, v5, v4}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->setLayerType(ILandroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 631
    :cond_4
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->v:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 632
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->B:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 633
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->C:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4
.end method

.method static synthetic g(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;Z)V
    .locals 0

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->h:Z

    return-void
.end method

.method static synthetic h(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->m:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;

    return-object v0
.end method

.method private h()V
    .locals 4

    .prologue
    .line 639
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->n:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_1

    .line 683
    :cond_0
    :goto_0
    return-void

    .line 642
    :cond_1
    iget-boolean v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->w:Z

    if-nez v0, :cond_0

    .line 645
    iget-boolean v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->E:Z

    if-nez v0, :cond_0

    .line 648
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->E:Z

    .line 650
    const-string v0, "TWMFloatAdView"

    const-string v1, "setNarrowSize invoked!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    invoke-direct {p0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->e()V

    .line 654
    invoke-direct {p0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->f()V

    .line 655
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->n:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->r:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 656
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->n:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->s:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 657
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->A:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->n:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v0, v1}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->a(Landroid/widget/RelativeLayout;Landroid/view/WindowManager$LayoutParams;)V

    .line 658
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->A:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 659
    const/4 v0, 0x2

    iput v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->y:I

    .line 660
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$7;

    invoke-direct {v1, p0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$7;-><init>(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)V

    .line 681
    const-wide/16 v2, 0xc8

    .line 660
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method static synthetic h(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;Z)V
    .locals 0

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->E:Z

    return-void
.end method

.method static synthetic i(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->f:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private i()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    .line 687
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->n:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_1

    .line 759
    :cond_0
    :goto_0
    return-void

    .line 690
    :cond_1
    iget-boolean v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->j:Z

    if-nez v0, :cond_0

    .line 694
    iget-boolean v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->E:Z

    if-nez v0, :cond_0

    .line 697
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->E:Z

    .line 701
    iget-boolean v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->i:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->h:Z

    if-nez v0, :cond_3

    .line 702
    :cond_2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$8;

    invoke-direct {v1, p0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$8;-><init>(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)V

    .line 709
    const-wide/16 v2, 0x64

    .line 702
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 713
    :cond_3
    const-string v0, "TWMFloatAdView"

    const-string v1, "setExpandSize invoked!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    invoke-direct {p0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->e()V

    .line 717
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->n:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->q:I

    int-to-double v2, v1

    const-wide v4, 0x3fc3333333333333L    # 0.15

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 718
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->n:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->p:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 719
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->n:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->t:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 720
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->v:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 721
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 722
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->z:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->n:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v0, v1}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->a(Landroid/widget/RelativeLayout;Landroid/view/WindowManager$LayoutParams;)V

    .line 723
    const/4 v0, 0x2

    iput v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->y:I

    .line 724
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$9;

    invoke-direct {v1, p0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$9;-><init>(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)V

    .line 757
    const-wide/16 v2, 0x32

    .line 724
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method static synthetic j(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$c;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->d:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$c;

    return-object v0
.end method

.method private j()Z
    .locals 1

    .prologue
    .line 841
    iget-boolean v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->o:Z

    return v0
.end method

.method private k()V
    .locals 2

    .prologue
    .line 886
    const-string v0, "TWMFloatAdView"

    const-string v1, "showButtonNarrow invoked"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->C:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 888
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->C:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 890
    :cond_0
    return-void
.end method

.method static synthetic k(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)V
    .locals 0

    .prologue
    .line 911
    invoke-direct {p0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->n()V

    return-void
.end method

.method private l()V
    .locals 2

    .prologue
    .line 894
    const-string v0, "TWMFloatAdView"

    const-string v1, "disableButtonNarrow invoked"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->C:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 896
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->C:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 898
    :cond_0
    return-void
.end method

.method static synthetic l(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->g:Z

    return v0
.end method

.method private m()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 901
    const-string v0, "TWMFloatAdView"

    const-string v1, "showButtonClose invoked"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->v:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 903
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->v:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 905
    :cond_0
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->B:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 906
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->B:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 909
    :cond_1
    return-void
.end method

.method static synthetic m(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->w:Z

    return v0
.end method

.method private n()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 912
    const-string v0, "TWMFloatAdView"

    const-string v1, "disableButtonClose invoked"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->v:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 914
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->v:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 916
    :cond_0
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->B:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 917
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->B:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 919
    :cond_1
    return-void
.end method

.method static synthetic n(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->h:Z

    return v0
.end method

.method static synthetic o(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->i:Z

    return v0
.end method

.method static synthetic p(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->z:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic q(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->A:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic r(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)V
    .locals 0

    .prologue
    .line 363
    invoke-direct {p0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->c()V

    return-void
.end method

.method static synthetic s(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->j:Z

    return v0
.end method

.method static synthetic t(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->D:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic u(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->u:Z

    return v0
.end method

.method static synthetic v(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)V
    .locals 0

    .prologue
    .line 900
    invoke-direct {p0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->m()V

    return-void
.end method

.method static synthetic w(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->k:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    return-object v0
.end method

.method static synthetic x(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->n:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic y(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)V
    .locals 0

    .prologue
    .line 277
    invoke-direct {p0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->a()V

    return-void
.end method

.method static synthetic z(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->x:Z

    return v0
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 336
    const-string v0, "TWMFloatAdView"

    const-string v1, "destroy"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iput-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->d:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$c;

    .line 340
    iput-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->K:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$d;

    .line 341
    iput-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->c:Ljava/lang/String;

    .line 342
    iput-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->b:Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

    .line 343
    iput-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->e:Ljava/lang/ref/WeakReference;

    .line 345
    :try_start_0
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->L:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    :goto_0
    const-string v0, "TWMFloatAdView"

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->cancelRequest(Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 356
    const-string v0, "TWMFloatAdView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Remove ad info in hashmap, key = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->remove(Ljava/lang/String;)V

    .line 360
    :cond_0
    invoke-direct {p0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->c()V

    .line 361
    return-void

    .line 346
    :catch_0
    move-exception v0

    .line 347
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 348
    const-string v1, "TWMFloatAdView"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/taiwanmobile/pt/util/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAdListener()Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;
    .locals 1

    .prologue
    .line 845
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->b:Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

    return-object v0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 924
    const/4 v0, 0x0

    return v0
.end method

.method public loadAd(Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;)V
    .locals 8

    .prologue
    .line 850
    const-string v0, "TWMFloatAdView"

    const-string v1, "loadAd invoked!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->m:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;

    .line 853
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/taiwanmobile/pt/util/Utility;->checkPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 855
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->isActivitySettingValid(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 857
    const-string v0, "TWMFloatAdView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isAdLoading ? "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->j()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    const-string v0, "TWMFloatAdView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TWMAdActivity.isShowing() ? "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->isShowing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    invoke-direct {p0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->j()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 862
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->c:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->K:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$d;

    const/4 v5, 0x1

    .line 863
    const-string v6, "F"

    const-string v7, "TWMFloatAdView"

    move-object v3, p1

    .line 862
    invoke-static/range {v0 .. v7}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->fireAdRequest2(Landroid/content/Context;Ljava/lang/String;Lcom/taiwanmobile/pt/adp/view/TWMAdSize;Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;ZLjava/lang/String;Ljava/lang/String;)V

    .line 872
    :cond_0
    :goto_0
    return-void

    .line 867
    :cond_1
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->b:Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

    if-eqz v0, :cond_0

    .line 868
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->b:Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

    sget-object v1, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;->INVALID_REQUEST:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;

    invoke-interface {v0, p0, v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;->onFailedToReceiveAd(Lcom/taiwanmobile/pt/adp/view/TWMAd;Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 307
    iput-boolean v4, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->H:Z

    .line 308
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->A:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->A:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->z:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 312
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 314
    :cond_1
    const-string v0, "TWMFloatAdView"

    const-string v1, "pause"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const-string v0, "TWMFloatAdView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pause floatType"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->G:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-boolean v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->w:Z

    if-nez v0, :cond_2

    .line 317
    invoke-direct {p0, v4}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->a(Z)V

    .line 319
    :cond_2
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->l:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    if-eqz v0, :cond_4

    .line 320
    iget-boolean v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->I:Z

    if-nez v0, :cond_3

    .line 321
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->l:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->handleNarrow(I)V

    .line 323
    :cond_3
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->G:Ljava/lang/String;

    const-string v1, "A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 324
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->l:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-virtual {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->stopLoading()V

    .line 325
    iput-object v3, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->l:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    .line 326
    iput-boolean v4, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->I:Z

    .line 329
    :cond_4
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->D:Landroid/os/Handler;

    if-eqz v0, :cond_5

    .line 330
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->D:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 333
    :cond_5
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 244
    const-string v0, "TWMFloatAdView"

    const-string v1, "resume"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iput-boolean v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->H:Z

    .line 246
    iget-boolean v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->F:Z

    if-eqz v0, :cond_1

    .line 247
    iput-boolean v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->F:Z

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    iget-boolean v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->w:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->k:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    if-eqz v0, :cond_2

    .line 252
    invoke-direct {p0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->e()V

    .line 253
    invoke-direct {p0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->f()V

    .line 254
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->n:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->r:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 255
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->n:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->s:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 256
    invoke-direct {p0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->a()V

    .line 257
    invoke-direct {p0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->b()V

    .line 258
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->A:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->A:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->n:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v0, v1}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->a(Landroid/widget/RelativeLayout;Landroid/view/WindowManager$LayoutParams;)V

    .line 260
    iput v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->y:I

    .line 264
    :cond_2
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 265
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;

    .line 266
    if-eqz v0, :cond_0

    .line 267
    const-string v1, "lam"

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 268
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->b:Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

    if-eqz v1, :cond_0

    .line 269
    invoke-virtual {v0}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->removeLeaveApplicationMark()V

    .line 270
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v1

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 271
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->b:Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

    invoke-interface {v0, p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;->onDismissScreen(Lcom/taiwanmobile/pt/adp/view/TWMAd;)V

    goto :goto_0
.end method

.method public setAdListener(Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;)V
    .locals 0

    .prologue
    .line 876
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->b:Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

    .line 877
    return-void
.end method

.method public stopLoading()V
    .locals 0

    .prologue
    .line 881
    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->pause()V

    .line 882
    return-void
.end method
