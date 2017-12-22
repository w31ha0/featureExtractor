.class public Lcom/netflix/mediaclient/android/widget/NetflixTextButton;
.super Landroid/support/v7/widget/AppCompatButton;
.source "NetflixTextButton.java"


# instance fields
.field protected mAttributes:Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    new-instance v0, Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->setAttributes(Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;)V

    .line 60
    return-void
.end method


# virtual methods
.method public applyFrom(I)V
    .locals 3

    .prologue
    .line 68
    new-instance v0, Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1, p1}, Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->setAttributes(Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;)V

    .line 69
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 84
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v1

    .line 85
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aget-object v1, v1, v2

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aget-object v1, v1, v2

    .line 89
    :goto_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    .line 91
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x3

    aget-object v3, v3, v4

    .line 87
    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 93
    invoke-super {p0}, Landroid/support/v7/widget/AppCompatButton;->onFinishInflate()V

    .line 94
    return-void

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v1

    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aget-object v1, v1, v2

    goto :goto_1
.end method

.method protected setAttributes(Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;)V
    .locals 2

    .prologue
    .line 76
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->mAttributes:Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;

    .line 77
    new-instance v0, Lcom/netflix/mediaclient/android/widget/NetflixButtonDrawable;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->mAttributes:Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixButtonDrawable;-><init>(Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 78
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->mAttributes:Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;

    iget-object v0, v0, Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;->textColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 79
    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .prologue
    .line 118
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->mAttributes:Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;

    if-nez v0, :cond_0

    .line 119
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/AppCompatButton;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 128
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->mAttributes:Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;

    iget-object v0, v0, Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;->iconColor:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->mAttributes:Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;

    iget v1, v1, Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;->iconSize:I

    .line 122
    invoke-static {p1, v0, v1}, Lcom/netflix/android/widgetry/utils/UiUtils;->tintAndGet(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->mAttributes:Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;

    iget-object v1, v1, Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;->iconColor:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->mAttributes:Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;

    iget v2, v2, Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;->iconSize:I

    .line 123
    invoke-static {p2, v1, v2}, Lcom/netflix/android/widgetry/utils/UiUtils;->tintAndGet(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->mAttributes:Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;

    iget-object v2, v2, Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;->iconColor:Landroid/content/res/ColorStateList;

    iget-object v3, p0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->mAttributes:Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;

    iget v3, v3, Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;->iconSize:I

    .line 124
    invoke-static {p3, v2, v3}, Lcom/netflix/android/widgetry/utils/UiUtils;->tintAndGet(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->mAttributes:Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;

    iget-object v3, v3, Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;->iconColor:Landroid/content/res/ColorStateList;

    iget-object v4, p0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->mAttributes:Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;

    iget v4, v4, Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;->iconSize:I

    .line 125
    invoke-static {p4, v3, v4}, Lcom/netflix/android/widgetry/utils/UiUtils;->tintAndGet(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 121
    invoke-super {p0, v0, v1, v2, v3}, Landroid/support/v7/widget/AppCompatButton;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .prologue
    .line 132
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->mAttributes:Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;

    if-nez v0, :cond_0

    .line 133
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/AppCompatButton;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 142
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->mAttributes:Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;

    iget-object v0, v0, Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;->iconColor:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->mAttributes:Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;

    iget v1, v1, Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;->iconSize:I

    .line 136
    invoke-static {p1, v0, v1}, Lcom/netflix/android/widgetry/utils/UiUtils;->tintAndGet(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->mAttributes:Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;

    iget-object v1, v1, Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;->iconColor:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->mAttributes:Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;

    iget v2, v2, Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;->iconSize:I

    .line 137
    invoke-static {p2, v1, v2}, Lcom/netflix/android/widgetry/utils/UiUtils;->tintAndGet(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->mAttributes:Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;

    iget-object v2, v2, Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;->iconColor:Landroid/content/res/ColorStateList;

    iget-object v3, p0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->mAttributes:Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;

    iget v3, v3, Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;->iconSize:I

    .line 138
    invoke-static {p3, v2, v3}, Lcom/netflix/android/widgetry/utils/UiUtils;->tintAndGet(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->mAttributes:Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;

    iget-object v3, v3, Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;->iconColor:Landroid/content/res/ColorStateList;

    iget-object v4, p0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->mAttributes:Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;

    iget v4, v4, Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;->iconSize:I

    .line 139
    invoke-static {p4, v3, v4}, Lcom/netflix/android/widgetry/utils/UiUtils;->tintAndGet(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 135
    invoke-super {p0, v0, v1, v2, v3}, Landroid/support/v7/widget/AppCompatButton;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 108
    if-eqz p1, :cond_1

    .line 109
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v3, v1

    :goto_0
    if-eqz p2, :cond_2

    .line 110
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v2, v1

    :goto_1
    if-eqz p3, :cond_3

    .line 111
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_2
    if-eqz p4, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 108
    :cond_0
    invoke-virtual {p0, v3, v2, v1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 114
    return-void

    :cond_1
    move-object v3, v0

    .line 109
    goto :goto_0

    :cond_2
    move-object v2, v0

    .line 110
    goto :goto_1

    :cond_3
    move-object v1, v0

    .line 111
    goto :goto_2
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 98
    if-eqz p1, :cond_1

    .line 99
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v3, v1

    :goto_0
    if-eqz p2, :cond_2

    .line 100
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v2, v1

    :goto_1
    if-eqz p3, :cond_3

    .line 101
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_2
    if-eqz p4, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 98
    :cond_0
    invoke-virtual {p0, v3, v2, v1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 104
    return-void

    :cond_1
    move-object v3, v0

    .line 99
    goto :goto_0

    :cond_2
    move-object v2, v0

    .line 100
    goto :goto_1

    :cond_3
    move-object v1, v0

    .line 101
    goto :goto_2
.end method
