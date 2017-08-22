.class Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$2;
.super Ljava/lang/Object;
.source "TWMFloatAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->a(Landroid/widget/RelativeLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

.field private final synthetic b:Landroid/view/WindowManager;

.field private final synthetic c:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;Landroid/view/WindowManager;Landroid/widget/RelativeLayout;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$2;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    iput-object p2, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$2;->b:Landroid/view/WindowManager;

    iput-object p3, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$2;->c:Landroid/widget/RelativeLayout;

    .line 827
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 831
    :try_start_0
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$2;->b:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$2;->c:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 836
    :goto_0
    return-void

    .line 832
    :catch_0
    move-exception v0

    .line 833
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 834
    const-string v1, "TWMFloatAdView"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/taiwanmobile/pt/util/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
