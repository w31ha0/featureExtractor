.class public Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;
.super Landroid/app/Activity;
.source "TWMAdActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$a;,
        Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$b;,
        Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;,
        Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$d;,
        Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$StaticMethodWrapper;,
        Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$e;,
        Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$f;
    }
.end annotation


# static fields
.field public static final CAMERA_REQUEST_THUMBNAIL:I = 0x1080037

.field private static c:Z

.field private static final d:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$StaticMethodWrapper;


# instance fields
.field private a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$d;

.field private b:Z

.field private e:J

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Landroid/widget/ImageButton;

.field private i:Landroid/widget/ImageButton;

.field private j:Landroid/widget/ImageButton;

.field private k:Ljava/util/Timer;

.field private l:I

.field private m:Ljava/lang/ref/WeakReference;

.field private n:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

.field private o:Landroid/widget/RelativeLayout;

.field private p:Landroid/widget/ProgressBar;

.field private q:Landroid/widget/ImageButton;

.field private r:Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 492
    const/4 v0, 0x0

    sput-boolean v0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->c:Z

    .line 493
    new-instance v0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$StaticMethodWrapper;

    invoke-direct {v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$StaticMethodWrapper;-><init>()V

    sput-object v0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->d:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$StaticMethodWrapper;

    .line 872
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 66
    iput-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$d;

    .line 381
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->b:Z

    .line 1088
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->e:J

    .line 1089
    iput v3, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->f:I

    .line 1092
    iput-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->h:Landroid/widget/ImageButton;

    .line 1093
    iput-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->i:Landroid/widget/ImageButton;

    .line 1094
    iput-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->j:Landroid/widget/ImageButton;

    .line 1095
    iput-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->k:Ljava/util/Timer;

    .line 1097
    iput v3, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->l:I

    .line 1098
    iput-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->m:Ljava/lang/ref/WeakReference;

    .line 1100
    iput-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->n:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    .line 1101
    iput-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->o:Landroid/widget/RelativeLayout;

    .line 1102
    iput-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->p:Landroid/widget/ProgressBar;

    .line 1103
    iput-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->q:Landroid/widget/ImageButton;

    .line 1105
    iput-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->r:Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;

    .line 59
    return-void
.end method

.method static synthetic a(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;)I
    .locals 1

    .prologue
    .line 1097
    iget v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->l:I

    return v0
.end method

.method static synthetic a(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;J)V
    .locals 1

    .prologue
    .line 1088
    iput-wide p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->e:J

    return-void
.end method

.method static synthetic a(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 790
    invoke-direct {p0, p1}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0, p1, p2, p3}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;Ljava/util/Timer;)V
    .locals 0

    .prologue
    .line 1095
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->k:Ljava/util/Timer;

    return-void
.end method

.method static synthetic a(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;Z)V
    .locals 0

    .prologue
    .line 381
    iput-boolean p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->b:Z

    return-void
.end method

.method private a(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)V
    .locals 2

    .prologue
    .line 534
    const-string v0, "TWMAdActivity"

    const-string v1, "onShow invoked!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    const-string v0, "javascript:try{tamediaCustomLoad();}catch(e){}"

    invoke-virtual {p1, v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->loadUrl(Ljava/lang/String;)V

    .line 536
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v4, -0x1

    const/4 v7, 0x0

    const/16 v6, 0x3e9

    const/4 v5, -0x2

    .line 670
    const-string v0, "TWMAdActivity"

    const-string v1, "buildVideoViews invoked!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->o:Landroid/widget/RelativeLayout;

    .line 673
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Video;

    .line 674
    const-string v1, "fb"

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Video;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 676
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 679
    iget-object v3, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 681
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->requestWindowFeature(I)Z

    .line 683
    invoke-direct {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->b()I

    move-result v2

    if-eqz v2, :cond_0

    .line 684
    invoke-direct {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->b()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    .line 685
    :cond_0
    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->o:Landroid/widget/RelativeLayout;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 693
    :goto_0
    new-instance v2, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;

    invoke-direct {v2, p0}, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->r:Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;

    .line 694
    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->r:Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;

    invoke-virtual {v2, v6}, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;->setId(I)V

    .line 695
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 698
    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 699
    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 700
    iget-object v3, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->r:Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;

    invoke-virtual {v3, v2}, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 702
    new-instance v2, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;

    invoke-direct {v2, p0, p1}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;-><init>(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;Ljava/lang/String;)V

    .line 703
    iput-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$d;

    .line 704
    iget-object v3, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->r:Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;

    invoke-virtual {v3, v2}, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;->setTriListener(Lcom/taiwanmobile/pt/adp/view/internal/BaseMediaListener;)V

    .line 710
    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->o:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->r:Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 713
    new-instance v2, Landroid/widget/ImageButton;

    invoke-direct {v2, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->h:Landroid/widget/ImageButton;

    .line 714
    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->h:Landroid/widget/ImageButton;

    sget-object v3, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$e;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$e;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 715
    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->h:Landroid/widget/ImageButton;

    new-instance v3, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$f;

    invoke-direct {v3, p0, p1}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$f;-><init>(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 717
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-ge v2, v3, :cond_2

    .line 718
    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->h:Landroid/widget/ImageButton;

    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 723
    :goto_1
    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->h:Landroid/widget/ImageButton;

    .line 724
    const v3, 0x1080038

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 725
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 728
    const/4 v3, 0x7

    invoke-virtual {v2, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 729
    const/4 v3, 0x6

    invoke-virtual {v2, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 730
    iget-object v3, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->h:Landroid/widget/ImageButton;

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 731
    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->h:Landroid/widget/ImageButton;

    invoke-virtual {v2, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 732
    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->o:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->h:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 735
    if-eqz v1, :cond_4

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 736
    new-instance v1, Landroid/widget/ImageButton;

    invoke-direct {v1, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->j:Landroid/widget/ImageButton;

    .line 737
    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->j:Landroid/widget/ImageButton;

    sget-object v2, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$e;->b:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$e;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 738
    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->j:Landroid/widget/ImageButton;

    new-instance v2, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$f;

    invoke-direct {v2, p0, p1}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$f;-><init>(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 740
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_3

    .line 741
    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->j:Landroid/widget/ImageButton;

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 746
    :goto_2
    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->j:Landroid/widget/ImageButton;

    .line 747
    const-string v2, "/facebook.png"

    invoke-direct {p0, v2}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->c(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 746
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 748
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 751
    const/4 v2, 0x5

    invoke-virtual {v1, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 752
    const/4 v2, 0x6

    invoke-virtual {v1, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 753
    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->j:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 754
    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->j:Landroid/widget/ImageButton;

    invoke-virtual {v1, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 756
    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->o:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->j:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 762
    :goto_3
    new-instance v1, Landroid/widget/ImageButton;

    invoke-direct {v1, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->i:Landroid/widget/ImageButton;

    .line 763
    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->i:Landroid/widget/ImageButton;

    sget-object v2, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$e;->c:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$e;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 764
    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->i:Landroid/widget/ImageButton;

    new-instance v2, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$f;

    invoke-direct {v2, p0, p1}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$f;-><init>(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 766
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_5

    .line 767
    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->i:Landroid/widget/ImageButton;

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 772
    :goto_4
    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->i:Landroid/widget/ImageButton;

    .line 773
    const-string v2, "/know_more.png"

    invoke-direct {p0, v2}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->c(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 772
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 774
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 777
    const/4 v2, 0x7

    invoke-virtual {v1, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 778
    const/16 v2, 0x8

    invoke-virtual {v1, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 779
    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->i:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 780
    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->i:Landroid/widget/ImageButton;

    invoke-virtual {v1, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 782
    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->o:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->i:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 784
    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->setContentView(Landroid/view/View;)V

    .line 786
    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->r:Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;

    .line 787
    const-string v2, "mediaUrl"

    invoke-virtual {v0, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Video;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 786
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 788
    return-void

    .line 687
    :cond_1
    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->o:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 720
    :cond_2
    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->h:Landroid/widget/ImageButton;

    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 743
    :cond_3
    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->j:Landroid/widget/ImageButton;

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 758
    :cond_4
    const-string v2, "TWMAdActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "fburl : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 769
    :cond_5
    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->i:Landroid/widget/ImageButton;

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 113
    const-string v0, "TWMAdActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "doFinish("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->k:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->k:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 116
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->k:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 119
    :cond_0
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    const-string v1, "adsing"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 120
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 121
    const-string v1, "http://agent.tamedia.com.tw/rmadp/g/adv"

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 120
    invoke-static/range {v0 .. v5}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->reportVideoProgress(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 123
    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->finish()V

    .line 124
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v4, -0x1

    const/4 v6, 0x0

    const/4 v5, -0x2

    const/4 v3, 0x0

    .line 543
    const-string v0, "TWMAdActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "buildFundamentalViews("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 544
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 543
    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    .line 546
    const/16 v2, 0x400

    .line 545
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    .line 548
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->p:Landroid/widget/ProgressBar;

    .line 550
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 553
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 555
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 558
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 560
    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->p:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 561
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->requestWindowFeature(I)Z

    .line 562
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->o:Landroid/widget/RelativeLayout;

    .line 563
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->setContentView(Landroid/view/View;)V

    .line 566
    invoke-static {p0}, Lcom/taiwanmobile/pt/adp/view/tool/KeyboardDetector;->assistActivity(Landroid/app/Activity;)V

    .line 570
    if-eqz p4, :cond_2

    .line 571
    new-instance v0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-direct {v0, p0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->n:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    .line 572
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->n:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    new-instance v2, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$b;

    invoke-direct {v2, p0, v3}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$b;-><init>(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$b;)V

    invoke-virtual {v0, v2}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->setIRBehavior(Lcom/taiwanmobile/pt/adp/view/webview/IRBehavior;)V

    .line 573
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->n:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 574
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->n:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    new-instance v1, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$a;

    invoke-direct {v1, p0, p3}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$a;-><init>(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 575
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->n:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->loadContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->o:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->n:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    move-object v1, v3

    .line 613
    :goto_0
    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->q:Landroid/widget/ImageButton;

    .line 614
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->q:Landroid/widget/ImageButton;

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 615
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->q:Landroid/widget/ImageButton;

    .line 616
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 615
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 617
    if-nez v0, :cond_0

    .line 618
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 622
    :cond_0
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 623
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 625
    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->q:Landroid/widget/ImageButton;

    .line 626
    const-string v4, "/close_1_30.png"

    invoke-direct {p0, v4}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->c(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 625
    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 628
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-ge v2, v4, :cond_5

    .line 629
    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->q:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 633
    :goto_1
    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->q:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 635
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->q:Landroid/widget/ImageButton;

    new-instance v2, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$1;

    invoke-direct {v2, p0, p3}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$1;-><init>(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 643
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->o:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->q:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 644
    if-eqz p4, :cond_6

    .line 645
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->o:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->p:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 646
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->n:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-virtual {v0, v7}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->setVisibility(I)V

    .line 665
    :cond_1
    :goto_2
    return-void

    .line 578
    :cond_2
    const-string v0, "TWMAdActivity"

    const-string v1, "not expandable ad"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 580
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Interstitial;

    .line 581
    const-string v1, "kjsw"

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Interstitial;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 582
    const-string v1, "kjsw"

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Interstitial;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    iput-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->n:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    .line 583
    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->n:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-virtual {v1, p0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->setActivity(Landroid/app/Activity;)V

    .line 584
    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->n:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    new-instance v2, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$b;

    invoke-direct {v2, p0, v3}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$b;-><init>(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$b;)V

    invoke-virtual {v1, v2}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->setIRBehavior(Lcom/taiwanmobile/pt/adp/view/webview/IRBehavior;)V

    .line 585
    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->n:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    new-instance v2, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$a;

    invoke-direct {v2, p0, p3}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$a;-><init>(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 586
    const-string v1, "TWMAdActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "jsWebView is visibile ? "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->n:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-virtual {v4}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->getVisibility()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->n:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-virtual {v1, v6}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->setVisibility(I)V

    .line 590
    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->n:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-virtual {v1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_9

    .line 591
    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->o:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->n:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 592
    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->n:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-direct {p0, v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->a(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)V

    .line 595
    const-string v1, "adListener"

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Interstitial;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

    .line 596
    const-string v2, "ad"

    invoke-virtual {v0, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Interstitial;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taiwanmobile/pt/adp/view/TWMAd;

    .line 597
    if-eqz v1, :cond_9

    if-eqz v2, :cond_9

    .line 598
    invoke-interface {v1, v2}, Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;->onPresentScreen(Lcom/taiwanmobile/pt/adp/view/TWMAd;)V

    move-object v1, v0

    .line 601
    goto/16 :goto_0

    .line 602
    :cond_3
    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->finish()V

    .line 603
    const-string v1, "TWMAdActivity"

    const-string v2, "invalid request"

    invoke-static {v1, v2}, Lcom/taiwanmobile/pt/util/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    const-string v1, "TWMAdActivity"

    const-string v2, "jswebview is null"

    invoke-static {v1, v2}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 606
    goto/16 :goto_0

    .line 607
    :cond_4
    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->finish()V

    .line 608
    const-string v0, "TWMAdActivity"

    const-string v1, "invalid request"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    const-string v0, "TWMAdActivity"

    const-string v1, "interstitial is null"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v3

    goto/16 :goto_0

    .line 631
    :cond_5
    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->q:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 649
    :cond_6
    if-eqz v1, :cond_1

    .line 650
    const-string v0, "kcce"

    invoke-virtual {v1, v0}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Interstitial;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 651
    const-string v0, "kcce"

    invoke-virtual {v1, v0}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Interstitial;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 652
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 653
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->q:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 654
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->o:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->q:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 656
    :cond_7
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->q:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_2

    .line 659
    :cond_8
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->q:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_2

    :cond_9
    move-object v1, v0

    goto/16 :goto_0
.end method

.method static synthetic a(Z)V
    .locals 0

    .prologue
    .line 492
    sput-boolean p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->c:Z

    return-void
.end method

.method static synthetic a()Z
    .locals 1

    .prologue
    .line 492
    sget-boolean v0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->c:Z

    return v0
.end method

.method private b()I
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    const/16 v2, 0x9

    const/16 v3, 0x8

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 323
    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v4

    .line 324
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 325
    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 326
    iget v6, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 327
    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 330
    if-eqz v4, :cond_0

    const/4 v7, 0x2

    if-ne v4, v7, :cond_1

    .line 331
    :cond_0
    if-gt v5, v6, :cond_3

    .line 332
    :cond_1
    if-eq v4, v0, :cond_2

    const/4 v7, 0x3

    if-ne v4, v7, :cond_4

    .line 333
    :cond_2
    if-le v6, v5, :cond_4

    .line 334
    :cond_3
    packed-switch v4, :pswitch_data_0

    .line 348
    const-string v1, "TWMAdActivity"

    const-string v2, "Unknown screen orientation. Defaulting to portrait."

    invoke-static {v1, v2}, Lcom/taiwanmobile/pt/util/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 340
    goto :goto_0

    :pswitch_2
    move v0, v2

    .line 343
    goto :goto_0

    :pswitch_3
    move v0, v3

    .line 346
    goto :goto_0

    .line 357
    :cond_4
    packed-switch v4, :pswitch_data_1

    .line 371
    const-string v0, "TWMAdActivity"

    const-string v2, "Unknown screen orientation. Defaulting to landscape."

    invoke-static {v0, v2}, Lcom/taiwanmobile/pt/util/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 373
    goto :goto_0

    :pswitch_4
    move v0, v1

    .line 360
    goto :goto_0

    :pswitch_5
    move v0, v3

    .line 366
    goto :goto_0

    :pswitch_6
    move v0, v2

    .line 369
    goto :goto_0

    .line 334
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 357
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method static synthetic b(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;)Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;
    .locals 1

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->r:Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 792
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    const-string v1, "adsing"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 793
    new-instance v0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$2;

    invoke-direct {v0, p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$2;-><init>(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;)V

    invoke-virtual {p0, v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 800
    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->finish()V

    .line 801
    return-void
.end method

.method private c(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 875
    const-string v0, "TWMAdActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getDrawableByPath("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") invoked!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    const-class v0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 877
    const/4 v1, 0x0

    .line 879
    :try_start_0
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 881
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 882
    const/16 v3, 0xf0

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 883
    const/16 v3, 0xf0

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 884
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v0, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 886
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 891
    :goto_0
    return-object v0

    .line 887
    :catch_0
    move-exception v0

    .line 888
    const-string v2, "TWMAdActivity"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/taiwanmobile/pt/util/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic c(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 1098
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->m:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic d(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->k:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic e(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;)I
    .locals 1

    .prologue
    .line 322
    invoke-direct {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->b()I

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->o:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic g(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->h:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic h(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->j:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic i(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->i:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public static isShowing()Z
    .locals 1

    .prologue
    .line 318
    sget-object v0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->d:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$StaticMethodWrapper;

    invoke-virtual {v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$StaticMethodWrapper;->isShowing()Z

    move-result v0

    return v0
.end method

.method static synthetic j(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 1103
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->q:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic k(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;)J
    .locals 2

    .prologue
    .line 1088
    iget-wide v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->e:J

    return-wide v0
.end method

.method static synthetic l(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;)Z
    .locals 1

    .prologue
    .line 381
    iget-boolean v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->b:Z

    return v0
.end method

.method public static launchAdActivity(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1108
    sget-object v0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->d:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$StaticMethodWrapper;

    invoke-virtual {v0, p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$StaticMethodWrapper;->launchAdActivity(Ljava/lang/String;)V

    .line 1109
    return-void
.end method

.method static synthetic m(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;)Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;
    .locals 1

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->n:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    return-object v0
.end method

.method static synthetic n(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->p:Landroid/widget/ProgressBar;

    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    .line 518
    const v0, 0x1080037

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 519
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 520
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 521
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 522
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 523
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 524
    const-string v1, "TWMAdActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "imgString : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->n:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "javascript:try{showImage(\'capturePhoto\',\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 527
    const-string v2, "\');}catch(e){}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 526
    invoke-virtual {v1, v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->loadUrl(Ljava/lang/String;)V

    .line 529
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .prologue
    .line 419
    const-string v0, "TWMAdActivity"

    const-string v1, "onConfigurationChanged invoked!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 421
    const-string v0, "TWMAdActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "newConfig.orientation : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const-string v0, "TWMAdActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getScreenOrientation : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    iget v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->f:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 424
    invoke-direct {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->b()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 425
    invoke-direct {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->b()I

    move-result v0

    if-nez v0, :cond_1

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->o:Landroid/widget/RelativeLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 439
    :goto_0
    return-void

    .line 428
    :cond_1
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->o:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 896
    const-string v0, "TWMAdActivity"

    const-string v1, ">>>>> onCreate invoked!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 902
    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "txId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->g:Ljava/lang/String;

    .line 903
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 904
    :cond_0
    const-string v0, "TWMAdActivity"

    const-string v1, "invalid request !!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->finish()V

    .line 907
    :cond_1
    const-string v0, "TWMAdActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "txId : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->m:Ljava/lang/ref/WeakReference;

    .line 910
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;

    .line 912
    if-nez v0, :cond_2

    .line 913
    const-string v0, "TWMAdActivity"

    const-string v1, "invalid status, adunit is null, force activity finish."

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->finish()V

    .line 941
    :goto_0
    return-void

    .line 918
    :cond_2
    const-string v1, "ad"

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taiwanmobile/pt/adp/view/TWMAd;

    .line 919
    invoke-interface {v1}, Lcom/taiwanmobile/pt/adp/view/TWMAd;->stopLoading()V

    .line 920
    const-string v1, "adType"

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->f:I

    .line 921
    const-string v1, "TWMAdActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "adType : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    iget v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->f:I

    sparse-switch v1, :sswitch_data_0

    .line 938
    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->finish()V

    goto :goto_0

    .line 926
    :sswitch_0
    const-string v1, "subMediaUrl"

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 927
    const-string v2, "targetUrl"

    invoke-virtual {v0, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->g:Ljava/lang/String;

    const/4 v3, 0x1

    .line 925
    invoke-direct {p0, v1, v0, v2, v3}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 931
    :sswitch_1
    const-string v1, "mediaUrl"

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 932
    const-string v2, "targetUrl"

    invoke-virtual {v0, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->g:Ljava/lang/String;

    const/4 v3, 0x0

    .line 930
    invoke-direct {p0, v1, v0, v2, v3}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 935
    :sswitch_2
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->g:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 923
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x10 -> :sswitch_1
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1045
    const-string v0, "TWMAdActivity"

    const-string v1, "onDestroy invoked!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "txId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1052
    if-eqz v3, :cond_0

    .line 1053
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;

    .line 1054
    if-eqz v0, :cond_6

    .line 1055
    const-string v1, "ad"

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taiwanmobile/pt/adp/view/TWMAd;

    .line 1056
    instance-of v4, v0, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Video;

    if-eqz v4, :cond_4

    .line 1057
    const-string v4, "videoListener"

    invoke-virtual {v0, v4}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

    .line 1062
    :goto_0
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 1063
    invoke-interface {v0, v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;->onDismissScreen(Lcom/taiwanmobile/pt/adp/view/TWMAd;)V

    .line 1067
    :cond_0
    iget v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->f:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_5

    .line 1068
    const-string v0, "TWMInterstitialAd"

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->cancelRequest(Ljava/lang/String;)V

    .line 1073
    :cond_1
    :goto_1
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1074
    const-string v0, "TWMAdActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Remove ad info in hashmap, key = "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->remove(Ljava/lang/String;)V

    .line 1079
    :cond_2
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->n:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    if-eqz v0, :cond_3

    .line 1080
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->n:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-virtual {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->clearWebViewResource()V

    .line 1081
    iput-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->n:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    .line 1084
    :cond_3
    const/4 v0, 0x0

    sput-boolean v0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->c:Z

    .line 1085
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1086
    return-void

    .line 1059
    :cond_4
    const-string v4, "adListener"

    invoke-virtual {v0, v4}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

    goto :goto_0

    .line 1069
    :cond_5
    iget v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->f:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 1070
    const-string v0, "TWMVideoAd"

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->cancelRequest(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    move-object v0, v2

    move-object v1, v2

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    .line 70
    const-string v0, "TWMAdActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onKeyDown("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v1, "TWMAdActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "notifyVolumeChange is null ? "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$d;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    packed-switch p1, :pswitch_data_0

    .line 107
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 71
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 74
    :pswitch_0
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$d;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$d;

    invoke-interface {v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$d;->a()V

    goto :goto_1

    .line 79
    :pswitch_1
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$d;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$d;

    invoke-interface {v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$d;->b()V

    goto :goto_1

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 5

    .prologue
    .line 970
    const-string v0, "TWMAdActivity"

    const-string v1, "onPause invoked!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 973
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->k:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 974
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->k:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 975
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->k:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 978
    :cond_0
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->n:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    if-eqz v0, :cond_1

    .line 979
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->n:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-virtual {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->releaseCamera()V

    .line 980
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->n:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-virtual {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->releaseMic()V

    .line 981
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->n:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-virtual {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->releaseProximity()V

    .line 984
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->c:Z

    .line 988
    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "txId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 989
    const-string v0, "TWMAdActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "txId : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    const/4 v0, 0x0

    .line 991
    if-eqz v2, :cond_2

    .line 992
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;

    .line 993
    if-eqz v0, :cond_2

    .line 995
    const-string v1, "kbnpm"

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 1002
    :cond_2
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v1

    const-string v3, "adsing"

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v4}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1004
    iget v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->f:I

    sparse-switch v1, :sswitch_data_0

    .line 1041
    :cond_3
    :goto_0
    return-void

    .line 1006
    :sswitch_0
    if-eqz v0, :cond_4

    .line 1007
    check-cast v0, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Video;

    .line 1008
    const-string v1, "kis"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v3}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Video;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1009
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1011
    :cond_4
    const-string v0, "I"

    const-string v1, "4"

    invoke-direct {p0, v2, v0, v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1015
    :sswitch_1
    if-eqz v0, :cond_5

    .line 1016
    instance-of v1, v0, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Interstitial;

    if-eqz v1, :cond_5

    .line 1017
    check-cast v0, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Interstitial;

    .line 1018
    const-string v1, "kil"

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v3}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Interstitial;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1019
    const-string v1, "kcce"

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v3}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Interstitial;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1020
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1023
    :cond_5
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->n:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    if-eqz v0, :cond_3

    .line 1024
    const-string v0, "TWMAdActivity"

    const-string v1, "load sdkDestory!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->n:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    const-string v1, "javascript:try{sdkDestroy();}catch(e){}"

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 1004
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0x10 -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 946
    const-string v0, "TWMAdActivity"

    const-string v1, "onRestart invoked!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 948
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->n:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    if-eqz v0, :cond_0

    .line 949
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->n:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    const-string v1, "javascript:try{sdkRestart();}catch(e){}"

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->loadUrl(Ljava/lang/String;)V

    .line 951
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 961
    const-string v0, "TWMAdActivity"

    const-string v1, "onResume invoked!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 963
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->n:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    if-eqz v0, :cond_0

    .line 964
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->n:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    const-string v1, "javascript:try{sdkResume();}catch(e){}"

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->loadUrl(Ljava/lang/String;)V

    .line 966
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 955
    const-string v0, "TWMAdActivity"

    const-string v1, "onStart invoked!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 957
    return-void
.end method
