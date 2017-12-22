.class public Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;
.super Landroid/widget/RelativeLayout;
.source "BuffetBar.java"


# instance fields
.field private mActionView:Landroid/widget/Button;

.field private mMaxInlineActionWidth:I

.field private mMaxWidth:I

.field private mMessageView:Landroid/widget/TextView;

.field private mMessageViewGroup:Landroid/view/ViewGroup;

.field private mOnAttachStateChangeListener:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout$OnAttachStateChangeListener;

.field private mOnLayoutChangeListener:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout$OnLayoutChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 751
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 752
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x1

    .line 755
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 756
    sget-object v0, Lcom/netflix/android/widgetry/R$styleable;->SnackbarLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 757
    sget v1, Lcom/netflix/android/widgetry/R$styleable;->SnackbarLayout_android_maxWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->mMaxWidth:I

    .line 758
    sget v1, Lcom/netflix/android/widgetry/R$styleable;->SnackbarLayout_maxActionInlineWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->mMaxInlineActionWidth:I

    .line 760
    sget v1, Lcom/netflix/android/widgetry/R$styleable;->SnackbarLayout_elevation:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 761
    sget v1, Lcom/netflix/android/widgetry/R$styleable;->SnackbarLayout_elevation:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 764
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 766
    invoke-virtual {p0, v3}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->setClickable(Z)V

    .line 771
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/netflix/android/widgetry/R$layout;->design_layout_buffet_include:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 773
    invoke-static {p0, v3}, Landroid/support/v4/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    .line 775
    invoke-static {p0, v3}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 779
    invoke-static {p0, v3}, Landroid/support/v4/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    .line 780
    new-instance v0, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout$1;

    invoke-direct {v0, p0}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout$1;-><init>(Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;)V

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 791
    return-void
.end method


# virtual methods
.method animateChildrenIn(II)V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 824
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->mMessageViewGroup:Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 825
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->mMessageViewGroup:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    int-to-long v2, p1

    .line 826
    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 828
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->mActionView:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 829
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->mActionView:Landroid/widget/Button;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 830
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->mActionView:Landroid/widget/Button;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    int-to-long v2, p1

    .line 831
    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 833
    :cond_0
    return-void
.end method

.method animateChildrenOut(II)V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 836
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->mMessageViewGroup:Landroid/view/ViewGroup;

    invoke-static {v0, v4}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 837
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->mMessageViewGroup:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    int-to-long v2, p1

    .line 838
    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 840
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->mActionView:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 841
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->mActionView:Landroid/widget/Button;

    invoke-static {v0, v4}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 842
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->mActionView:Landroid/widget/Button;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    int-to-long v2, p1

    .line 843
    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 845
    :cond_0
    return-void
.end method

.method getActionView()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 810
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->mActionView:Landroid/widget/Button;

    return-object v0
.end method

.method getMessageView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->mMessageView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getMessageViewGroup()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 806
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->mMessageViewGroup:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 857
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 858
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->mOnAttachStateChangeListener:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout$OnAttachStateChangeListener;

    if-eqz v0, :cond_0

    .line 859
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->mOnAttachStateChangeListener:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout$OnAttachStateChangeListener;

    invoke-interface {v0, p0}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout$OnAttachStateChangeListener;->onViewAttachedToWindow(Landroid/view/View;)V

    .line 862
    :cond_0
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 863
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 867
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 868
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->mOnAttachStateChangeListener:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout$OnAttachStateChangeListener;

    if-eqz v0, :cond_0

    .line 869
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->mOnAttachStateChangeListener:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout$OnAttachStateChangeListener;

    invoke-interface {v0, p0}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout$OnAttachStateChangeListener;->onViewDetachedFromWindow(Landroid/view/View;)V

    .line 871
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 795
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 796
    sget v0, Lcom/netflix/android/widgetry/R$id;->snackbar_text:I

    invoke-virtual {p0, v0}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->mMessageView:Landroid/widget/TextView;

    .line 797
    sget v0, Lcom/netflix/android/widgetry/R$id;->snackbar_text_group:I

    invoke-virtual {p0, v0}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->mMessageViewGroup:Landroid/view/ViewGroup;

    .line 798
    sget v0, Lcom/netflix/android/widgetry/R$id;->snackbar_action:I

    invoke-virtual {p0, v0}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->mActionView:Landroid/widget/Button;

    .line 799
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .prologue
    .line 849
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 850
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->mOnLayoutChangeListener:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout$OnLayoutChangeListener;

    if-eqz v0, :cond_0

    .line 851
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->mOnLayoutChangeListener:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout$OnLayoutChangeListener;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout$OnLayoutChangeListener;->onLayoutChange(Landroid/view/View;IIII)V

    .line 853
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 815
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 817
    iget v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->mMaxWidth:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->mMaxWidth:I

    if-le v0, v1, :cond_0

    .line 818
    iget v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->mMaxWidth:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 819
    invoke-super {p0, v0, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 821
    :cond_0
    return-void
.end method

.method setOnAttachStateChangeListener(Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout$OnAttachStateChangeListener;)V
    .locals 0

    .prologue
    .line 878
    iput-object p1, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->mOnAttachStateChangeListener:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout$OnAttachStateChangeListener;

    .line 879
    return-void
.end method

.method setOnLayoutChangeListener(Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout$OnLayoutChangeListener;)V
    .locals 0

    .prologue
    .line 874
    iput-object p1, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->mOnLayoutChangeListener:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout$OnLayoutChangeListener;

    .line 875
    return-void
.end method
