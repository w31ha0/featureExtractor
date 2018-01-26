.class public Lcom/biznessapps/fragments/CustomizableViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "CustomizableViewPager.java"


# instance fields
.field private enableScrolling:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/biznessapps/fragments/CustomizableViewPager;->enableScrolling:Z

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/biznessapps/fragments/CustomizableViewPager;->enableScrolling:Z

    .line 27
    return-void
.end method


# virtual methods
.method public enableScrolling(Z)V
    .locals 0
    .param p1, "shouldBeEnabled"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/biznessapps/fragments/CustomizableViewPager;->enableScrolling:Z

    .line 36
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/biznessapps/fragments/CustomizableViewPager;->enableScrolling:Z

    if-nez v0, :cond_0

    .line 43
    iget-boolean v0, p0, Lcom/biznessapps/fragments/CustomizableViewPager;->enableScrolling:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/biznessapps/fragments/CustomizableViewPager;->requestDisallowInterceptTouchEvent(Z)V

    .line 45
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 43
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
