.class Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$9;
.super Ljava/lang/Object;
.source "TWMFloatAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;


# direct methods
.method constructor <init>(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$9;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    .line 724
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$9;)Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;
    .locals 1

    .prologue
    .line 724
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$9;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 728
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$9;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->m(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 756
    :goto_0
    return-void

    .line 730
    :cond_0
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$9;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->p(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 732
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$9$1;

    invoke-direct {v1, p0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$9$1;-><init>(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$9;)V

    .line 754
    const-wide/16 v2, 0xc8

    .line 732
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
