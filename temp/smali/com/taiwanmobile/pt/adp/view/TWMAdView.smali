.class public Lcom/taiwanmobile/pt/adp/view/TWMAdView;
.super Landroid/widget/RelativeLayout;
.source "TWMAdView.java"

# interfaces
.implements Lcom/taiwanmobile/pt/adp/view/TWMAd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taiwanmobile/pt/adp/view/TWMAdView$a;,
        Lcom/taiwanmobile/pt/adp/view/TWMAdView$b;,
        Lcom/taiwanmobile/pt/adp/view/TWMAdView$c;,
        Lcom/taiwanmobile/pt/adp/view/TWMAdView$d;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

.field private c:I

.field private final d:Lcom/taiwanmobile/pt/adp/view/internal/AdViewServiceCallback;

.field private final e:Lcom/taiwanmobile/pt/adp/view/TWMAdView$c;

.field private f:Lcom/taiwanmobile/pt/adp/view/TWMAdView$d;

.field private g:Lcom/taiwanmobile/pt/adp/view/TWMAdSize;

.field private h:Ljava/lang/String;

.field private i:Lcom/taiwanmobile/pt/adp/view/TWMAdView$a;

.field private j:Lcom/taiwanmobile/pt/adp/view/TWMAdView$b;

.field private k:Ljava/lang/ref/WeakReference;

.field private l:Ljava/lang/ref/WeakReference;

.field private m:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

.field private n:Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;

.field private o:Z

.field private p:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;

.field private q:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/taiwanmobile/pt/adp/view/TWMAdSize;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 880
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 87
    iput-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->a:Ljava/lang/String;

    .line 171
    iput-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->b:Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

    .line 308
    const/4 v0, 0x1

    iput v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->c:I

    .line 320
    new-instance v0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$1;

    invoke-direct {v0, p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView$1;-><init>(Lcom/taiwanmobile/pt/adp/view/TWMAdView;)V

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->d:Lcom/taiwanmobile/pt/adp/view/internal/AdViewServiceCallback;

    .line 383
    new-instance v0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$c;

    invoke-direct {v0, p0, v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdView$c;-><init>(Lcom/taiwanmobile/pt/adp/view/TWMAdView;Lcom/taiwanmobile/pt/adp/view/TWMAdView$c;)V

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->e:Lcom/taiwanmobile/pt/adp/view/TWMAdView$c;

    .line 385
    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 386
    :goto_0
    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->f:Lcom/taiwanmobile/pt/adp/view/TWMAdView$d;

    .line 686
    iput-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->k:Ljava/lang/ref/WeakReference;

    .line 687
    iput-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->l:Ljava/lang/ref/WeakReference;

    .line 707
    iput-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->m:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    .line 708
    iput-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->n:Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;

    .line 746
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->o:Z

    .line 752
    iput-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->p:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;

    .line 849
    new-instance v0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$2;

    invoke-direct {v0, p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView$2;-><init>(Lcom/taiwanmobile/pt/adp/view/TWMAdView;)V

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->q:Landroid/content/BroadcastReceiver;

    .line 881
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->l:Ljava/lang/ref/WeakReference;

    .line 882
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->k:Ljava/lang/ref/WeakReference;

    .line 883
    iput-object p2, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->g:Lcom/taiwanmobile/pt/adp/view/TWMAdSize;

    .line 884
    iput-object p3, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->h:Ljava/lang/String;

    .line 885
    invoke-direct {p0, p2}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->b(Lcom/taiwanmobile/pt/adp/view/TWMAdSize;)V

    .line 888
    return-void

    .line 386
    :cond_0
    new-instance v0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$d;

    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->d:Lcom/taiwanmobile/pt/adp/view/internal/AdViewServiceCallback;

    invoke-direct {v0, p0, v2, v3}, Lcom/taiwanmobile/pt/adp/view/TWMAdView$d;-><init>(Lcom/taiwanmobile/pt/adp/view/TWMAdView;Landroid/content/Context;Lcom/taiwanmobile/pt/adp/view/internal/AdViewServiceCallback;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 891
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    iput-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->a:Ljava/lang/String;

    .line 171
    iput-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->b:Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

    .line 308
    const/4 v0, 0x1

    iput v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->c:I

    .line 320
    new-instance v0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$1;

    invoke-direct {v0, p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView$1;-><init>(Lcom/taiwanmobile/pt/adp/view/TWMAdView;)V

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->d:Lcom/taiwanmobile/pt/adp/view/internal/AdViewServiceCallback;

    .line 383
    new-instance v0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$c;

    invoke-direct {v0, p0, v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdView$c;-><init>(Lcom/taiwanmobile/pt/adp/view/TWMAdView;Lcom/taiwanmobile/pt/adp/view/TWMAdView$c;)V

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->e:Lcom/taiwanmobile/pt/adp/view/TWMAdView$c;

    .line 385
    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 386
    :goto_0
    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->f:Lcom/taiwanmobile/pt/adp/view/TWMAdView$d;

    .line 686
    iput-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->k:Ljava/lang/ref/WeakReference;

    .line 687
    iput-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->l:Ljava/lang/ref/WeakReference;

    .line 707
    iput-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->m:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    .line 708
    iput-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->n:Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;

    .line 746
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->o:Z

    .line 752
    iput-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->p:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;

    .line 849
    new-instance v0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$2;

    invoke-direct {v0, p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView$2;-><init>(Lcom/taiwanmobile/pt/adp/view/TWMAdView;)V

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->q:Landroid/content/BroadcastReceiver;

    .line 892
    invoke-direct {p0, p1, p2}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 895
    return-void

    .line 386
    :cond_0
    new-instance v0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$d;

    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->d:Lcom/taiwanmobile/pt/adp/view/internal/AdViewServiceCallback;

    invoke-direct {v0, p0, v2, v3}, Lcom/taiwanmobile/pt/adp/view/TWMAdView$d;-><init>(Lcom/taiwanmobile/pt/adp/view/TWMAdView;Landroid/content/Context;Lcom/taiwanmobile/pt/adp/view/internal/AdViewServiceCallback;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 898
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    iput-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->a:Ljava/lang/String;

    .line 171
    iput-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->b:Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

    .line 308
    const/4 v0, 0x1

    iput v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->c:I

    .line 320
    new-instance v0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$1;

    invoke-direct {v0, p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView$1;-><init>(Lcom/taiwanmobile/pt/adp/view/TWMAdView;)V

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->d:Lcom/taiwanmobile/pt/adp/view/internal/AdViewServiceCallback;

    .line 383
    new-instance v0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$c;

    invoke-direct {v0, p0, v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdView$c;-><init>(Lcom/taiwanmobile/pt/adp/view/TWMAdView;Lcom/taiwanmobile/pt/adp/view/TWMAdView$c;)V

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->e:Lcom/taiwanmobile/pt/adp/view/TWMAdView$c;

    .line 385
    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 386
    :goto_0
    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->f:Lcom/taiwanmobile/pt/adp/view/TWMAdView$d;

    .line 686
    iput-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->k:Ljava/lang/ref/WeakReference;

    .line 687
    iput-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->l:Ljava/lang/ref/WeakReference;

    .line 707
    iput-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->m:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    .line 708
    iput-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->n:Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;

    .line 746
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->o:Z

    .line 752
    iput-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->p:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;

    .line 849
    new-instance v0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$2;

    invoke-direct {v0, p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView$2;-><init>(Lcom/taiwanmobile/pt/adp/view/TWMAdView;)V

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->q:Landroid/content/BroadcastReceiver;

    .line 899
    invoke-direct {p0, p1, p2}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 902
    return-void

    .line 386
    :cond_0
    new-instance v0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$d;

    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->d:Lcom/taiwanmobile/pt/adp/view/internal/AdViewServiceCallback;

    invoke-direct {v0, p0, v2, v3}, Lcom/taiwanmobile/pt/adp/view/TWMAdView$d;-><init>(Lcom/taiwanmobile/pt/adp/view/TWMAdView;Landroid/content/Context;Lcom/taiwanmobile/pt/adp/view/internal/AdViewServiceCallback;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/taiwanmobile/pt/adp/view/TWMAdView;)Lcom/taiwanmobile/pt/adp/view/TWMAdView$a;
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->i:Lcom/taiwanmobile/pt/adp/view/TWMAdView$a;

    return-object v0
.end method

.method private a(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 494
    const-string v0, "http://schemas.android.com/apk/lib/com.taiwanmobile.pt.adp.view"

    invoke-interface {p3, v0, p1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 496
    if-eqz v1, :cond_1

    .line 497
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 498
    const-string v2, "^@([^:]+)\\:(.*)$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 499
    const-string v0, "^@([^:]+)\\:(.*)$"

    const-string v2, "$1"

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 500
    const-string v2, "^@([^:]+)\\:(.*)$"

    const-string v3, "@$2"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 502
    :cond_0
    const-string v2, "@string/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 503
    const-string v2, "@string/"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 504
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 505
    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->isInEditMode()Z

    move-result v4

    if-nez v4, :cond_1

    .line 507
    :try_start_0
    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ":string/"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 508
    const/4 v2, 0x1

    .line 507
    invoke-virtual {v4, v0, v3, v2}, Landroid/content/res/Resources;->getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    iget-object v0, v3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 515
    iget-object v0, v3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 525
    :cond_1
    return-object v1

    .line 509
    :catch_0
    move-exception v0

    .line 510
    const-string v2, "TWMAdView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not find resource for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 511
    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 510
    invoke-static {v2, v1, v0}, Lcom/taiwanmobile/pt/util/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 512
    throw v0

    .line 517
    :cond_2
    const-string v0, "TWMAdView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Resource "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 518
    const-string v2, " was not a string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 517
    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Resource "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 520
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was not a string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 519
    invoke-direct {v0, v1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 315
    const-string v0, "TWMAdView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "currentUsageTime(before) : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->c:I

    .line 317
    const-string v0, "TWMAdView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "currentUsageTime(after) : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    return-void
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 391
    const-string v0, "TWMAdView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getChildCount() : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string v0, "TWMAdView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "is outer view(1) videoView ? "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 393
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 392
    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const-string v0, "TWMAdView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "is inner view(0) videoView ? "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 395
    invoke-virtual {p0, v3}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 394
    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    sparse-switch p1, :sswitch_data_0

    .line 428
    :goto_0
    :sswitch_0
    return-void

    .line 402
    :sswitch_1
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->n:Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;

    invoke-virtual {v0, v3}, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;->setBackgroundColor(I)V

    .line 403
    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->m:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-virtual {p0, v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->bringChildToFront(Landroid/view/View;)V

    .line 405
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->n:Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;->setVisibility(I)V

    .line 406
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->m:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-virtual {v0, v3}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->setVisibility(I)V

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->m:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-virtual {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 409
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->m:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-virtual {v0, v3}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->setVisibility(I)V

    .line 411
    :cond_1
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->m:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-virtual {v0, p2, p3, p4}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->loadContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 416
    :sswitch_2
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->n:Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;->setBackgroundColor(I)V

    .line 417
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->n:Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;

    invoke-virtual {v0}, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 420
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->n:Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;

    invoke-virtual {p0, v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->addView(Landroid/view/View;)V

    .line 422
    :cond_2
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->n:Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->e:Lcom/taiwanmobile/pt/adp/view/TWMAdView$c;

    invoke-virtual {v0, p2, p3, p4, v1}, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;->loadContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taiwanmobile/pt/adp/view/internal/BaseMediaListener;)V

    goto :goto_0

    .line 397
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x4 -> :sswitch_1
        0x8 -> :sswitch_1
        0x10 -> :sswitch_0
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    const/4 v3, -0x1

    const/4 v6, 0x0

    .line 579
    const-string v0, "TWMAdView"

    invoke-virtual {p0, v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 581
    if-nez p2, :cond_0

    .line 621
    :goto_0
    return-void

    .line 584
    :cond_0
    const-string v0, "adSize"

    invoke-direct {p0, v0, p1, p2}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->a(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v0

    .line 585
    const-string v1, "TWMAdView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "adSize : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    invoke-virtual {p0, v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->a(Ljava/lang/String;)[Lcom/taiwanmobile/pt/adp/view/TWMAdSize;

    move-result-object v4

    .line 591
    if-eqz v4, :cond_1

    array-length v1, v4

    if-nez v1, :cond_2

    .line 592
    :cond_1
    const-string v1, "TAMedia"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Attribute \"adSize\" invalid : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/taiwanmobile/pt/util/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 596
    :cond_2
    const-string v0, "TWMAdView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "arrayOfAdSize.length : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    const-string v0, "adunitId"

    invoke-direct {p0, v0, p1, p2}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->a(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v0

    .line 601
    const-string v1, "TWMAdView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "adunitId : "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    if-nez v0, :cond_3

    .line 603
    const-string v0, "TAMedia"

    const-string v1, "Required XML attribute \"adUnitId\" missing"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 606
    :cond_3
    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 607
    if-eqz v4, :cond_4

    array-length v0, v4

    if-nez v0, :cond_5

    .line 608
    :cond_4
    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Ads by TAMedia"

    .line 609
    sget-object v4, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->BANNER:Lcom/taiwanmobile/pt/adp/view/TWMAdSize;

    move-object v0, p0

    move-object v5, p2

    .line 608
    invoke-direct/range {v0 .. v5}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->a(Landroid/content/Context;Ljava/lang/String;ILcom/taiwanmobile/pt/adp/view/TWMAdSize;Landroid/util/AttributeSet;)V

    goto/16 :goto_0

    .line 611
    :cond_5
    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Ads by TAMedia"

    .line 612
    aget-object v4, v4, v6

    move-object v0, p0

    move-object v5, p2

    .line 611
    invoke-direct/range {v0 .. v5}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->a(Landroid/content/Context;Ljava/lang/String;ILcom/taiwanmobile/pt/adp/view/TWMAdSize;Landroid/util/AttributeSet;)V

    goto/16 :goto_0

    .line 615
    :cond_6
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->k:Ljava/lang/ref/WeakReference;

    .line 616
    aget-object v1, v4, v6

    iput-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->g:Lcom/taiwanmobile/pt/adp/view/TWMAdSize;

    .line 617
    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->h:Ljava/lang/String;

    .line 618
    invoke-virtual {p0, v6}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->setBackgroundColor(I)V

    .line 619
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->g:Lcom/taiwanmobile/pt/adp/view/TWMAdSize;

    invoke-direct {p0, v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->a(Lcom/taiwanmobile/pt/adp/view/TWMAdSize;)V

    goto/16 :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;ILcom/taiwanmobile/pt/adp/view/TWMAdSize;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    const/16 v3, 0x11

    .line 49
    if-nez p4, :cond_0

    .line 50
    sget-object p4, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->BANNER:Lcom/taiwanmobile/pt/adp/view/TWMAdSize;

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 54
    if-nez p5, :cond_2

    new-instance v0, Landroid/widget/TextView;

    .line 55
    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 58
    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 59
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61
    const v1, -0xbbbbbc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 63
    if-nez p5, :cond_3

    new-instance v1, Landroid/widget/LinearLayout;

    .line 64
    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 67
    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 69
    if-nez p5, :cond_4

    new-instance v2, Landroid/widget/LinearLayout;

    .line 70
    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 73
    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 74
    invoke-virtual {v2, p3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 76
    invoke-virtual {p4, p1}, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->getWidthInPixels(Landroid/content/Context;)I

    move-result v3

    .line 77
    invoke-virtual {p4, p1}, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->getHeightInPixels(Landroid/content/Context;)I

    move-result v4

    .line 80
    add-int/lit8 v5, v3, -0x2

    add-int/lit8 v6, v4, -0x2

    invoke-virtual {v1, v0, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 81
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 82
    invoke-virtual {p0, v2, v3, v4}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->addView(Landroid/view/View;II)V

    .line 85
    :cond_1
    return-void

    .line 55
    :cond_2
    new-instance v0, Landroid/widget/TextView;

    .line 56
    invoke-direct {v0, p1, p5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0

    .line 64
    :cond_3
    new-instance v1, Landroid/widget/LinearLayout;

    .line 65
    invoke-direct {v1, p1, p5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_1

    .line 70
    :cond_4
    new-instance v2, Landroid/widget/LinearLayout;

    .line 71
    invoke-direct {v2, p1, p5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_2
.end method

.method private a(Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;)V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->b:Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->b:Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

    invoke-interface {v0, p0, p1}, Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;->onFailedToReceiveAd(Lcom/taiwanmobile/pt/adp/view/TWMAd;Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;)V

    .line 177
    :cond_0
    return-void
.end method

.method private a(Lcom/taiwanmobile/pt/adp/view/TWMAdSize;)V
    .locals 3

    .prologue
    .line 435
    invoke-direct {p0, p1}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->c(Lcom/taiwanmobile/pt/adp/view/TWMAdSize;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 437
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 438
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 437
    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 439
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 441
    new-instance v2, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v2, v0}, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->n:Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;

    .line 442
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->n:Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 446
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->k:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 447
    new-instance v2, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v2, v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->m:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->m:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 452
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->m:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-virtual {p0, v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->addView(Landroid/view/View;)V

    .line 453
    return-void
.end method

.method static synthetic a(Lcom/taiwanmobile/pt/adp/view/TWMAdView;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 388
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/taiwanmobile/pt/adp/view/TWMAdView;Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;)V
    .locals 0

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->a(Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;)V

    return-void
.end method

.method static synthetic a(Lcom/taiwanmobile/pt/adp/view/TWMAdView;Lcom/taiwanmobile/pt/adp/view/TWMAdView$a;)V
    .locals 0

    .prologue
    .line 683
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->i:Lcom/taiwanmobile/pt/adp/view/TWMAdView$a;

    return-void
.end method

.method static synthetic a(Lcom/taiwanmobile/pt/adp/view/TWMAdView;Lcom/taiwanmobile/pt/adp/view/TWMAdView$b;)V
    .locals 0

    .prologue
    .line 684
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->j:Lcom/taiwanmobile/pt/adp/view/TWMAdView$b;

    return-void
.end method

.method static synthetic a(Lcom/taiwanmobile/pt/adp/view/TWMAdView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/taiwanmobile/pt/adp/view/TWMAdView;Z)V
    .locals 0

    .prologue
    .line 746
    iput-boolean p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->o:Z

    return-void
.end method

.method static synthetic b(Lcom/taiwanmobile/pt/adp/view/TWMAdView;)Lcom/taiwanmobile/pt/adp/view/TWMAdView$b;
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->j:Lcom/taiwanmobile/pt/adp/view/TWMAdView$b;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 691
    new-instance v1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 693
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 696
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 698
    const/4 v0, 0x1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 699
    const/high16 v0, -0x10000

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 700
    const/high16 v0, -0x1000000

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 701
    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 702
    const-string v0, "you must have INTERNET ,ACCESS_NETWORK_STATE,READ_PHONE_STATE and ACCESS_WIFI_STATE permission in AndroidManifest.xml"

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 704
    invoke-virtual {p0, v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->addView(Landroid/view/View;)V

    .line 705
    return-void
.end method

.method private b(Lcom/taiwanmobile/pt/adp/view/TWMAdSize;)V
    .locals 2

    .prologue
    .line 456
    const-string v0, "TWMAdView"

    const-string v1, "initialView invoked!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    const-string v0, "TWMAdView"

    invoke-virtual {p0, v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 459
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->k:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 460
    invoke-direct {p0, p1}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->e(Lcom/taiwanmobile/pt/adp/view/TWMAdSize;)V

    .line 461
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/taiwanmobile/pt/util/Utility;->checkPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 464
    invoke-direct {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->b()V

    .line 465
    const-string v0, "TWMAdView"

    .line 466
    const-string v1, "Permissions must be declared in AndroidManifest.xml."

    .line 465
    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 468
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->setBackgroundColor(I)V

    .line 469
    invoke-direct {p0, p1}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->f(Lcom/taiwanmobile/pt/adp/view/TWMAdSize;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/taiwanmobile/pt/adp/view/TWMAdView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 180
    const-string v0, "TWMAdView"

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

    .line 181
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->b:Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->b:Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

    invoke-interface {v0, p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;->onReceiveAd(Lcom/taiwanmobile/pt/adp/view/TWMAd;)V

    .line 184
    :cond_0
    return-void
.end method

.method private c(Lcom/taiwanmobile/pt/adp/view/TWMAdSize;)Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    .line 625
    const-string v0, "TWMAdView"

    const-string v1, "getAdjustmentParams invoked!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->getWidthInPixels(Landroid/content/Context;)I

    move-result v2

    .line 641
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->getHeightInPixels(Landroid/content/Context;)I

    move-result v0

    .line 640
    invoke-direct {v1, v2, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 642
    return-object v1
.end method

.method static synthetic c(Lcom/taiwanmobile/pt/adp/view/TWMAdView;)Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->n:Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;

    return-object v0
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 749
    iget-boolean v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->o:Z

    return v0
.end method

.method static synthetic d(Lcom/taiwanmobile/pt/adp/view/TWMAdView;)Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 849
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->q:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method private d(Lcom/taiwanmobile/pt/adp/view/TWMAdSize;)Landroid/view/ViewGroup$LayoutParams;
    .locals 5

    .prologue
    .line 648
    const-string v0, "TWMAdView"

    const-string v1, "getAdjustParamsByAdSize invoked!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    invoke-virtual {p1}, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->getWidth()I

    move-result v1

    .line 650
    invoke-virtual {p1}, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->getHeight()I

    move-result v2

    .line 652
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/taiwanmobile/pt/util/Utility;->getDeviceDensity(Landroid/content/Context;)I

    move-result v0

    .line 654
    mul-int/2addr v1, v0

    div-int/lit16 v1, v1, 0xa0

    .line 656
    mul-int/2addr v0, v2

    div-int/lit16 v2, v0, 0xa0

    .line 659
    const-string v0, "TWMAdView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "width : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    const-string v0, "TWMAdView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "height : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 664
    if-nez v0, :cond_0

    .line 665
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 671
    :goto_0
    return-object v0

    .line 667
    :cond_0
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 668
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method static synthetic e(Lcom/taiwanmobile/pt/adp/view/TWMAdView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->a:Ljava/lang/String;

    return-object v0
.end method

.method private e(Lcom/taiwanmobile/pt/adp/view/TWMAdSize;)V
    .locals 2

    .prologue
    .line 675
    const-string v0, "TWMAdView"

    const-string v1, "adjustAdView invoked!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    invoke-direct {p0, p1}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->d(Lcom/taiwanmobile/pt/adp/view/TWMAdSize;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 677
    const-string v0, "TWMAdView"

    const-string v1, "adjustAdView end!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    return-void
.end method

.method static synthetic f(Lcom/taiwanmobile/pt/adp/view/TWMAdView;)I
    .locals 1

    .prologue
    .line 310
    invoke-direct {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->getUsageTime()I

    move-result v0

    return v0
.end method

.method private f(Lcom/taiwanmobile/pt/adp/view/TWMAdSize;)V
    .locals 3

    .prologue
    .line 713
    invoke-direct {p0, p1}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->c(Lcom/taiwanmobile/pt/adp/view/TWMAdSize;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 715
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 716
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 715
    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 717
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 719
    new-instance v2, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v2, v0}, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->n:Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;

    .line 720
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->n:Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 724
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->l:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 725
    new-instance v2, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v2, v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->m:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    .line 730
    :goto_0
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->m:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 732
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->m:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-virtual {p0, v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->addView(Landroid/view/View;)V

    .line 734
    return-void

    .line 727
    :cond_0
    new-instance v2, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v2, v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->m:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    goto :goto_0
.end method

.method static synthetic g(Lcom/taiwanmobile/pt/adp/view/TWMAdView;)V
    .locals 0

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->a()V

    return-void
.end method

.method private getUsageTime()I
    .locals 1

    .prologue
    .line 311
    iget v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->c:I

    return v0
.end method

.method static synthetic h(Lcom/taiwanmobile/pt/adp/view/TWMAdView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/taiwanmobile/pt/adp/view/TWMAdView;)Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->b:Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

    return-object v0
.end method

.method static synthetic j(Lcom/taiwanmobile/pt/adp/view/TWMAdView;)Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;
    .locals 1

    .prologue
    .line 752
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->p:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;

    return-object v0
.end method

.method static synthetic k(Lcom/taiwanmobile/pt/adp/view/TWMAdView;)Lcom/taiwanmobile/pt/adp/view/TWMAdSize;
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->g:Lcom/taiwanmobile/pt/adp/view/TWMAdSize;

    return-object v0
.end method

.method static synthetic l(Lcom/taiwanmobile/pt/adp/view/TWMAdView;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->k:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic m(Lcom/taiwanmobile/pt/adp/view/TWMAdView;)Lcom/taiwanmobile/pt/adp/view/TWMAdView$d;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->f:Lcom/taiwanmobile/pt/adp/view/TWMAdView$d;

    return-object v0
.end method

.method static synthetic n(Lcom/taiwanmobile/pt/adp/view/TWMAdView;)Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->m:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/String;)[Lcom/taiwanmobile/pt/adp/view/TWMAdSize;
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 535
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 536
    array-length v0, v7

    new-array v4, v0, [Lcom/taiwanmobile/pt/adp/view/TWMAdSize;

    move v0, v1

    .line 537
    :goto_0
    array-length v2, v7

    if-lt v0, v2, :cond_1

    move-object v3, v4

    .line 573
    :cond_0
    :goto_1
    return-object v3

    .line 538
    :cond_1
    aget-object v2, v7, v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 540
    const-string v5, "^(\\d+|FULL_WIDTH)\\s*[xX]\\s*(\\d+|AUTO_HEIGHT)$"

    invoke-virtual {v2, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 541
    const-string v5, "[xX]"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 542
    aget-object v2, v5, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 543
    aget-object v2, v5, v9

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v9

    .line 547
    :try_start_0
    const-string v2, "FULL_WIDTH"

    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    move v6, v2

    .line 550
    :goto_2
    const-string v2, "AUTO_HEIGHT"

    const/4 v8, 0x1

    aget-object v8, v5, v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, -0x2

    .line 555
    :goto_3
    new-instance v5, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;

    invoke-direct {v5, v6, v2}, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;-><init>(II)V

    move-object v2, v5

    .line 566
    :goto_4
    if-eqz v2, :cond_0

    .line 570
    aput-object v2, v4, v0

    .line 537
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 548
    :cond_2
    const/4 v2, 0x0

    :try_start_1
    aget-object v2, v5, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move v6, v2

    goto :goto_2

    .line 551
    :cond_3
    const/4 v2, 0x1

    aget-object v2, v5, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    goto :goto_3

    .line 557
    :cond_4
    const-string v5, "IAB_WIDE_SKYSCRAPER"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v2, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->IAB_WIDE_SKYSCRAPER:Lcom/taiwanmobile/pt/adp/view/TWMAdSize;

    goto :goto_4

    .line 558
    :cond_5
    const-string v5, "IAB_LEADERBOARD"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    sget-object v2, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->IAB_LEADERBOARD:Lcom/taiwanmobile/pt/adp/view/TWMAdSize;

    goto :goto_4

    .line 559
    :cond_6
    const-string v5, "IAB_BANNER"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    sget-object v2, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->IAB_BANNER:Lcom/taiwanmobile/pt/adp/view/TWMAdSize;

    goto :goto_4

    .line 560
    :cond_7
    const-string v5, "IAB_MRECT"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    sget-object v2, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->IAB_MRECT:Lcom/taiwanmobile/pt/adp/view/TWMAdSize;

    goto :goto_4

    .line 561
    :cond_8
    const-string v5, "SMART_BANNER"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    sget-object v2, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->SMART_BANNER:Lcom/taiwanmobile/pt/adp/view/TWMAdSize;

    goto :goto_4

    .line 562
    :cond_9
    const-string v5, "BANNER"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object v2, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->BANNER:Lcom/taiwanmobile/pt/adp/view/TWMAdSize;

    goto :goto_4

    :cond_a
    move-object v2, v3

    .line 563
    goto :goto_4

    .line 552
    :catch_0
    move-exception v0

    goto/16 :goto_1
.end method

.method public destroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 271
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->n:Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->n:Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;

    invoke-virtual {v0}, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;->isplaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->n:Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;

    invoke-virtual {v0}, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;->pause()V

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->k:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->q:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 278
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->isReceiverRegistered()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    :try_start_0
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->q:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 281
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    const-string v1, "bcr"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->i:Lcom/taiwanmobile/pt/adp/view/TWMAdView$a;

    invoke-virtual {p0, v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 287
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->j:Lcom/taiwanmobile/pt/adp/view/TWMAdView$b;

    invoke-virtual {p0, v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 290
    const-string v0, "TWMAdView"

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->cancelRequest(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 294
    const-string v0, "TWMAdView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Remove ad info in hashmap, key = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->remove(Ljava/lang/String;)V

    .line 298
    :cond_2
    iput-object v3, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->i:Lcom/taiwanmobile/pt/adp/view/TWMAdView$a;

    .line 299
    iput-object v3, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->j:Lcom/taiwanmobile/pt/adp/view/TWMAdView$b;

    .line 300
    iput-object v3, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->f:Lcom/taiwanmobile/pt/adp/view/TWMAdView$d;

    .line 301
    iput-object v3, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->h:Ljava/lang/String;

    .line 302
    iput-object v3, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->b:Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

    .line 303
    iput-object v3, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->k:Ljava/lang/ref/WeakReference;

    .line 305
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->m:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-virtual {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->clearWebViewResource()V

    .line 306
    return-void

    .line 282
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getAdListener()Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->b:Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 759
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->h:Ljava/lang/String;

    return-object v0
.end method

.method public isReady()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 739
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->n:Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->m:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    if-eqz v0, :cond_0

    .line 740
    const/4 v0, 0x1

    .line 742
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadAd(Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;)V
    .locals 8

    .prologue
    .line 764
    const-string v0, "TWMAdView"

    const-string v1, "loadAd invoked!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->p:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;

    .line 767
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->k:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 768
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/taiwanmobile/pt/util/Utility;->checkPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 770
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->isActivitySettingValid(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 771
    const-string v0, "TWMAdView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isAdLoading ? "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->c()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    const-string v0, "TWMAdView"

    .line 773
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TWMAdActivity.isShowing() ? "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 774
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->isShowing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 773
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 772
    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    invoke-direct {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 778
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 779
    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->h:Ljava/lang/String;

    .line 780
    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->g:Lcom/taiwanmobile/pt/adp/view/TWMAdSize;

    .line 782
    iget-object v4, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->f:Lcom/taiwanmobile/pt/adp/view/TWMAdView$d;

    .line 783
    const/4 v5, 0x1

    .line 784
    iget-object v3, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->g:Lcom/taiwanmobile/pt/adp/view/TWMAdSize;

    sget-object v6, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->SMART_BANNER:Lcom/taiwanmobile/pt/adp/view/TWMAdSize;

    invoke-virtual {v3, v6}, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v6, "SB"

    .line 786
    :goto_0
    const-string v7, "TWMAdView"

    move-object v3, p1

    .line 777
    invoke-static/range {v0 .. v7}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->fireAdRequest2(Landroid/content/Context;Ljava/lang/String;Lcom/taiwanmobile/pt/adp/view/TWMAdSize;Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;ZLjava/lang/String;Ljava/lang/String;)V

    .line 795
    :cond_0
    :goto_1
    return-void

    .line 785
    :cond_1
    const-string v6, "B"

    goto :goto_0

    .line 790
    :cond_2
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->b:Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->b:Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

    sget-object v1, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;->INVALID_REQUEST:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;

    invoke-interface {v0, p0, v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;->onFailedToReceiveAd(Lcom/taiwanmobile/pt/adp/view/TWMAd;Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;)V

    goto :goto_1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 809
    const-string v0, "TWMAdView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onWindowFocusChanged("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") invoked!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    .line 812
    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 847
    :cond_0
    :goto_0
    return-void

    .line 816
    :cond_1
    const-string v3, "TWMAdView"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, "txId is null ? "

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->a:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    const-string v0, "TWMAdView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isAdLoading ? "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->c()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 819
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    iget-object v3, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;

    .line 820
    const-string v3, "TWMAdView"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "adunit is null ? "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_3

    :goto_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    if-eqz v0, :cond_0

    .line 822
    const-string v1, "adType"

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 823
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 825
    const-string v1, "lam"

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 824
    check-cast v1, Ljava/lang/Boolean;

    .line 826
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 827
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 831
    :pswitch_1
    invoke-virtual {v0}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->removeLeaveApplicationMark()V

    .line 832
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v1

    iget-object v3, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->a:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 833
    const-string v0, "TWMAdView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " onDismissScreen!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->b:Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

    invoke-interface {v0, p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;->onDismissScreen(Lcom/taiwanmobile/pt/adp/view/TWMAd;)V

    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 816
    goto/16 :goto_1

    :cond_3
    move v1, v2

    .line 820
    goto :goto_2

    .line 827
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 249
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->n:Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->n:Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;

    invoke-virtual {v0}, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;->isplaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->n:Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;

    invoke-virtual {v0}, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;->pause()V

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->k:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->q:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 256
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->isReceiverRegistered()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->q:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 259
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    const-string v1, "bcr"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->i:Lcom/taiwanmobile/pt/adp/view/TWMAdView$a;

    invoke-virtual {p0, v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 267
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->j:Lcom/taiwanmobile/pt/adp/view/TWMAdView$b;

    invoke-virtual {p0, v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 268
    return-void

    .line 260
    :catch_0
    move-exception v0

    .line 261
    const-string v1, "TWMAdView"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/taiwanmobile/pt/util/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    if-eqz v0, :cond_2

    .line 234
    const-string v0, "TWMAdView"

    const-string v1, "video is background"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->n:Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->n:Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;

    invoke-virtual {v0}, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;->isplaying()Z

    move-result v0

    if-nez v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->n:Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;

    invoke-virtual {v0}, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;->resume()V

    .line 246
    :cond_1
    return-void

    .line 235
    :cond_2
    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;

    if-eqz v0, :cond_0

    .line 236
    const-string v0, "TWMAdView"

    const-string v1, "video is forge-ground"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAdListener(Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;)V
    .locals 0

    .prologue
    .line 799
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->b:Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

    .line 800
    return-void
.end method

.method public stopLoading()V
    .locals 0

    .prologue
    .line 804
    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->pause()V

    .line 805
    return-void
.end method
