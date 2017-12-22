.class public Lcom/netflix/mediaclient/android/widget/EmptyStateView;
.super Landroid/support/constraint/ConstraintLayout;
.source "EmptyStateView.java"


# instance fields
.field protected mButton:Lcom/netflix/mediaclient/android/widget/NetflixTextButton;

.field protected mExtraPadding:Landroid/view/View;

.field protected mIconImageView:Landroid/widget/ImageView;

.field protected mIconSize:I

.field protected mIconSizeCompressed:I

.field protected mMessageText:Lcom/netflix/mediaclient/android/widget/NetflixTextView;

.field protected mMinHeightForIcon:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/EmptyStateView;->init()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/support/constraint/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/EmptyStateView;->init()V

    .line 42
    invoke-virtual {p0, p2}, Lcom/netflix/mediaclient/android/widget/EmptyStateView;->applyAttributes(Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/support/constraint/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/EmptyStateView;->init()V

    .line 49
    invoke-virtual {p0, p2}, Lcom/netflix/mediaclient/android/widget/EmptyStateView;->applyAttributes(Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method


# virtual methods
.method protected applyAttributes(Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/EmptyStateView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/R$styleable;->EmptyStateView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 54
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/android/widget/EmptyStateView;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/android/widget/EmptyStateView;->setMessageText(Ljava/lang/String;)V

    .line 56
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/android/widget/EmptyStateView;->setButtonText(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    return-void
.end method

.method protected init()V
    .locals 3

    .prologue
    const v1, 0x7f0b0110

    .line 62
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/EmptyStateView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f030056

    invoke-static {v0, v2, p0}, Lcom/netflix/mediaclient/android/widget/EmptyStateView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 63
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/EmptyStateView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 64
    const v2, 0x7f0a0144

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/netflix/mediaclient/android/widget/EmptyStateView;->mIconSize:I

    .line 65
    const v2, 0x7f0a0145

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/netflix/mediaclient/android/widget/EmptyStateView;->mIconSizeCompressed:I

    .line 66
    const v2, 0x7f0a0146

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/EmptyStateView;->mMinHeightForIcon:I

    .line 68
    const v0, 0x7f10019e

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/EmptyStateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/EmptyStateView;->mIconImageView:Landroid/widget/ImageView;

    .line 69
    const v0, 0x7f10019f

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/EmptyStateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/EmptyStateView;->mExtraPadding:Landroid/view/View;

    .line 70
    const v0, 0x7f1001a0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/EmptyStateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/NetflixTextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/EmptyStateView;->mMessageText:Lcom/netflix/mediaclient/android/widget/NetflixTextView;

    .line 71
    const v0, 0x7f1001a1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/EmptyStateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/EmptyStateView;->mButton:Lcom/netflix/mediaclient/android/widget/NetflixTextButton;

    .line 73
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/EmptyStateView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 75
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/EmptyStateView;->mButton:Lcom/netflix/mediaclient/android/widget/NetflixTextButton;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->applyFrom(I)V

    .line 79
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/EmptyStateView;->mMessageText:Lcom/netflix/mediaclient/android/widget/NetflixTextView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->setTextColorIfApplicable(Landroid/widget/TextView;)V

    .line 82
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/EmptyStateView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0147

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 83
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/EmptyStateView;->getPaddingStart()I

    move-result v1

    if-nez v1, :cond_2

    .line 84
    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/netflix/android/widgetry/utils/UiUtils;->setPadding(Landroid/view/View;II)V

    .line 86
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/EmptyStateView;->getPaddingEnd()I

    move-result v1

    if-nez v1, :cond_3

    .line 87
    const/4 v1, 0x2

    invoke-static {p0, v1, v0}, Lcom/netflix/android/widgetry/utils/UiUtils;->setPadding(Landroid/view/View;II)V

    .line 89
    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/EmptyStateView;->getPaddingBottom()I

    move-result v0

    if-nez v0, :cond_4

    .line 90
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/EmptyStateView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0143

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/netflix/android/widgetry/utils/UiUtils;->setPadding(Landroid/view/View;II)V

    .line 93
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/EmptyStateView;->mMessageText:Lcom/netflix/mediaclient/android/widget/NetflixTextView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->setTextColorIfApplicable(Landroid/widget/TextView;)V

    .line 94
    return-void

    .line 76
    :cond_5
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/EmptyStateView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->isThemed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v2, p0, Lcom/netflix/mediaclient/android/widget/EmptyStateView;->mButton:Lcom/netflix/mediaclient/android/widget/NetflixTextButton;

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->isLightTheme()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->applyFrom(I)V

    goto :goto_0

    :cond_6
    const v0, 0x7f0b0113

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 119
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/EmptyStateView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/EmptyStateView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 120
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/EmptyStateView;->mIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 122
    iget v2, p0, Lcom/netflix/mediaclient/android/widget/EmptyStateView;->mMinHeightForIcon:I

    if-le v0, v2, :cond_0

    .line 123
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/EmptyStateView;->mIconSize:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 124
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/EmptyStateView;->mIconSize:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 125
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/EmptyStateView;->mExtraPadding:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 132
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/support/constraint/ConstraintLayout;->onMeasure(II)V

    .line 133
    return-void

    .line 127
    :cond_0
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/EmptyStateView;->mIconSizeCompressed:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 128
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/EmptyStateView;->mIconSizeCompressed:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 129
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/EmptyStateView;->mExtraPadding:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/EmptyStateView;->mButton:Lcom/netflix/mediaclient/android/widget/NetflixTextButton;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    return-void
.end method

.method public setButtonText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/EmptyStateView;->mButton:Lcom/netflix/mediaclient/android/widget/NetflixTextButton;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->setText(Ljava/lang/CharSequence;)V

    .line 110
    return-void
.end method

.method public setIconDrawable(I)V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/EmptyStateView;->mIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 102
    return-void
.end method

.method public setIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/EmptyStateView;->mIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    return-void
.end method

.method public setMessageText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/EmptyStateView;->mMessageText:Lcom/netflix/mediaclient/android/widget/NetflixTextView;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/widget/NetflixTextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    return-void
.end method
