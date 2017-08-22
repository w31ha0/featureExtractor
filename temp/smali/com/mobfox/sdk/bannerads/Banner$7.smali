.class Lcom/mobfox/sdk/bannerads/Banner$7;
.super Ljava/lang/Object;
.source "Banner.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/bannerads/Banner;->getLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobfox/sdk/bannerads/Banner;

.field final synthetic val$displayMetrics:Landroid/util/DisplayMetrics;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/bannerads/Banner;Landroid/util/DisplayMetrics;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mobfox/sdk/bannerads/Banner;

    .prologue
    .line 593
    iput-object p1, p0, Lcom/mobfox/sdk/bannerads/Banner$7;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iput-object p2, p0, Lcom/mobfox/sdk/bannerads/Banner$7;->val$displayMetrics:Landroid/util/DisplayMetrics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .prologue
    .line 596
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 597
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner$7;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v0, v0, Lcom/mobfox/sdk/bannerads/Banner;->self:Lcom/mobfox/sdk/bannerads/Banner;

    invoke-virtual {v0}, Lcom/mobfox/sdk/bannerads/Banner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 599
    :cond_0
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner$7;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v0, v0, Lcom/mobfox/sdk/bannerads/Banner;->self:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v1, p0, Lcom/mobfox/sdk/bannerads/Banner$7;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v1, v1, Lcom/mobfox/sdk/bannerads/Banner;->self:Lcom/mobfox/sdk/bannerads/Banner;

    invoke-virtual {v1}, Lcom/mobfox/sdk/bannerads/Banner;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/mobfox/sdk/bannerads/Banner$7;->val$displayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/mobfox/sdk/bannerads/Banner;->adspace_width:I

    .line 600
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner$7;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v0, v0, Lcom/mobfox/sdk/bannerads/Banner;->self:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v1, p0, Lcom/mobfox/sdk/bannerads/Banner$7;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v1, v1, Lcom/mobfox/sdk/bannerads/Banner;->self:Lcom/mobfox/sdk/bannerads/Banner;

    invoke-virtual {v1}, Lcom/mobfox/sdk/bannerads/Banner;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/mobfox/sdk/bannerads/Banner$7;->val$displayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/mobfox/sdk/bannerads/Banner;->adspace_height:I

    .line 601
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner$7;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v0, v0, Lcom/mobfox/sdk/bannerads/Banner;->self:Lcom/mobfox/sdk/bannerads/Banner;

    iget v0, v0, Lcom/mobfox/sdk/bannerads/Banner;->adspace_height:I

    const/16 v1, 0xf5

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner$7;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget v0, v0, Lcom/mobfox/sdk/bannerads/Banner;->adspace_height:I

    const/16 v1, 0xff

    if-ge v0, v1, :cond_1

    .line 602
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner$7;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v0, v0, Lcom/mobfox/sdk/bannerads/Banner;->self:Lcom/mobfox/sdk/bannerads/Banner;

    const/16 v1, 0xfa

    iput v1, v0, Lcom/mobfox/sdk/bannerads/Banner;->adspace_height:I

    .line 604
    :cond_1
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner$7;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v0, v0, Lcom/mobfox/sdk/bannerads/Banner;->self:Lcom/mobfox/sdk/bannerads/Banner;

    new-instance v1, Lcom/mobfox/sdk/bannerads/Banner$7$1;

    invoke-direct {v1, p0}, Lcom/mobfox/sdk/bannerads/Banner$7$1;-><init>(Lcom/mobfox/sdk/bannerads/Banner$7;)V

    invoke-virtual {v0, v1}, Lcom/mobfox/sdk/bannerads/Banner;->post(Ljava/lang/Runnable;)Z

    .line 610
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner$7;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    invoke-virtual {v0}, Lcom/mobfox/sdk/bannerads/Banner;->getBannerPosition()V

    .line 611
    return-void
.end method
