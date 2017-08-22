.class Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$10;
.super Ljava/lang/Object;
.source "TWMFloatAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->a(Landroid/widget/RelativeLayout;Landroid/view/WindowManager$LayoutParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

.field private final synthetic b:Landroid/view/WindowManager;

.field private final synthetic c:Landroid/widget/RelativeLayout;

.field private final synthetic d:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method constructor <init>(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;Landroid/view/WindowManager;Landroid/widget/RelativeLayout;Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$10;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    iput-object p2, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$10;->b:Landroid/view/WindowManager;

    iput-object p3, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$10;->c:Landroid/widget/RelativeLayout;

    iput-object p4, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$10;->d:Landroid/view/WindowManager$LayoutParams;

    .line 805
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 809
    :try_start_0
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$10;->b:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$10;->c:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$10;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 814
    :goto_0
    return-void

    .line 810
    :catch_0
    move-exception v0

    .line 811
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 812
    const-string v1, "TWMFloatAdView"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/taiwanmobile/pt/util/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
