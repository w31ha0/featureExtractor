.class Lcom/android/slidingtab/SlidingTabLayout$InternalViewPagerListener;
.super Ljava/lang/Object;
.source "SlidingTabLayout.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/slidingtab/SlidingTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalViewPagerListener"
.end annotation


# instance fields
.field private mScrollState:I

.field final synthetic this$0:Lcom/android/slidingtab/SlidingTabLayout;


# direct methods
.method private constructor <init>(Lcom/android/slidingtab/SlidingTabLayout;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/slidingtab/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/android/slidingtab/SlidingTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/slidingtab/SlidingTabLayout;Lcom/android/slidingtab/SlidingTabLayout$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/slidingtab/SlidingTabLayout;
    .param p2, "x1"    # Lcom/android/slidingtab/SlidingTabLayout$1;

    .prologue
    .line 255
    invoke-direct {p0, p1}, Lcom/android/slidingtab/SlidingTabLayout$InternalViewPagerListener;-><init>(Lcom/android/slidingtab/SlidingTabLayout;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 281
    iput p1, p0, Lcom/android/slidingtab/SlidingTabLayout$InternalViewPagerListener;->mScrollState:I

    .line 283
    iget-object v0, p0, Lcom/android/slidingtab/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/android/slidingtab/SlidingTabLayout;

    invoke-static {v0}, Lcom/android/slidingtab/SlidingTabLayout;->access$400(Lcom/android/slidingtab/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/slidingtab/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/android/slidingtab/SlidingTabLayout;

    invoke-static {v0}, Lcom/android/slidingtab/SlidingTabLayout;->access$400(Lcom/android/slidingtab/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 286
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 260
    iget-object v3, p0, Lcom/android/slidingtab/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/android/slidingtab/SlidingTabLayout;

    invoke-static {v3}, Lcom/android/slidingtab/SlidingTabLayout;->access$200(Lcom/android/slidingtab/SlidingTabLayout;)Lcom/android/slidingtab/SlidingTabStrip;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/slidingtab/SlidingTabStrip;->getChildCount()I

    move-result v2

    .line 261
    .local v2, "tabStripChildCount":I
    if-eqz v2, :cond_0

    if-ltz p1, :cond_0

    if-lt p1, v2, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    iget-object v3, p0, Lcom/android/slidingtab/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/android/slidingtab/SlidingTabLayout;

    invoke-static {v3}, Lcom/android/slidingtab/SlidingTabLayout;->access$200(Lcom/android/slidingtab/SlidingTabLayout;)Lcom/android/slidingtab/SlidingTabStrip;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/android/slidingtab/SlidingTabStrip;->onViewPagerPageChanged(IF)V

    .line 267
    iget-object v3, p0, Lcom/android/slidingtab/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/android/slidingtab/SlidingTabLayout;

    invoke-static {v3}, Lcom/android/slidingtab/SlidingTabLayout;->access$200(Lcom/android/slidingtab/SlidingTabLayout;)Lcom/android/slidingtab/SlidingTabStrip;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/slidingtab/SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 268
    .local v1, "selectedTitle":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 269
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    float-to-int v0, v3

    .line 271
    .local v0, "extraOffset":I
    :goto_1
    iget-object v3, p0, Lcom/android/slidingtab/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/android/slidingtab/SlidingTabLayout;

    invoke-static {v3, p1, v0}, Lcom/android/slidingtab/SlidingTabLayout;->access$300(Lcom/android/slidingtab/SlidingTabLayout;II)V

    .line 273
    iget-object v3, p0, Lcom/android/slidingtab/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/android/slidingtab/SlidingTabLayout;

    invoke-static {v3}, Lcom/android/slidingtab/SlidingTabLayout;->access$400(Lcom/android/slidingtab/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 274
    iget-object v3, p0, Lcom/android/slidingtab/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/android/slidingtab/SlidingTabLayout;

    invoke-static {v3}, Lcom/android/slidingtab/SlidingTabLayout;->access$400(Lcom/android/slidingtab/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    goto :goto_0

    .line 269
    .end local v0    # "extraOffset":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 290
    iget v0, p0, Lcom/android/slidingtab/SlidingTabLayout$InternalViewPagerListener;->mScrollState:I

    if-nez v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/slidingtab/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/android/slidingtab/SlidingTabLayout;

    invoke-static {v0}, Lcom/android/slidingtab/SlidingTabLayout;->access$200(Lcom/android/slidingtab/SlidingTabLayout;)Lcom/android/slidingtab/SlidingTabStrip;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/slidingtab/SlidingTabStrip;->onViewPagerPageChanged(IF)V

    .line 292
    iget-object v0, p0, Lcom/android/slidingtab/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/android/slidingtab/SlidingTabLayout;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/slidingtab/SlidingTabLayout;->access$300(Lcom/android/slidingtab/SlidingTabLayout;II)V

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/android/slidingtab/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/android/slidingtab/SlidingTabLayout;

    invoke-static {v0}, Lcom/android/slidingtab/SlidingTabLayout;->access$400(Lcom/android/slidingtab/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/android/slidingtab/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/android/slidingtab/SlidingTabLayout;

    invoke-static {v0}, Lcom/android/slidingtab/SlidingTabLayout;->access$400(Lcom/android/slidingtab/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 298
    :cond_1
    return-void
.end method
