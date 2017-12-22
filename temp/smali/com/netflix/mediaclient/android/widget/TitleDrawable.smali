.class public Lcom/netflix/mediaclient/android/widget/TitleDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "TitleDrawable.java"


# static fields
.field private static final DEBUG_BORDERS:Z


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mDirty:Z

.field private mHorizontalTextAlignment:Landroid/text/Layout$Alignment;

.field private mHorizontallyCentered:Z

.field private mMaxLines:I

.field private final mPaint:Landroid/text/TextPaint;

.field private mTextContainerWidth:I

.field private mTextLayout:Landroid/text/StaticLayout;

.field private mTextPaddingBottom:I

.field private mTextPaddingLeft:I

.field private mTextPaddingRight:I

.field private mTextPaddingTop:I

.field private mTextSize:I

.field private mVerticallyCentered:Z

.field private mVideoTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 44
    const/4 v0, 0x3

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mMaxLines:I

    .line 46
    iput-boolean v1, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mVerticallyCentered:Z

    .line 47
    iput-boolean v1, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mHorizontallyCentered:Z

    .line 48
    iput-boolean v2, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mDirty:Z

    .line 49
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mHorizontalTextAlignment:Landroid/text/Layout$Alignment;

    .line 53
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mPaint:Landroid/text/TextPaint;

    .line 54
    return-void
.end method

.method private invalidateTextLayout()V
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mVideoTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v2, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mTextPaddingLeft:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mTextPaddingRight:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mTextContainerWidth:I

    .line 103
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mHorizontallyCentered:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    :goto_0
    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mHorizontalTextAlignment:Landroid/text/Layout$Alignment;

    .line 106
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mVideoTitle:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mVideoTitle:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iget-object v3, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mPaint:Landroid/text/TextPaint;

    iget v4, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mTextContainerWidth:I

    iget-object v5, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mHorizontalTextAlignment:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    iget v10, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mTextContainerWidth:I

    iget v11, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mMaxLines:I

    move v8, v1

    invoke-static/range {v0 .. v11}, Lcom/netflix/mediaclient/ui/common/StaticLayoutWithMaxLines;->instantiate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;II)Landroid/text/StaticLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mTextLayout:Landroid/text/StaticLayout;

    .line 111
    :goto_1
    return-void

    .line 103
    :cond_0
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 108
    :cond_1
    iput v1, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mTextContainerWidth:I

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mTextLayout:Landroid/text/StaticLayout;

    goto :goto_1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mDirty:Z

    if-eqz v0, :cond_0

    .line 69
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->invalidateTextLayout()V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mDirty:Z

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mTextLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_2

    .line 79
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    .line 82
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mTextContainerWidth:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 83
    iget-boolean v2, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mVerticallyCentered:Z

    if-eqz v2, :cond_3

    .line 85
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v0, v2, v0

    int-to-float v0, v0

    .line 90
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 91
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 92
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 93
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 95
    :cond_2
    return-void

    .line 87
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    sub-int v0, v2, v0

    iget v2, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mTextPaddingTop:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mTextPaddingBottom:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 115
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getAlpha()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mDirty:Z

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 130
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 133
    :cond_1
    return-void
.end method

.method public setBackground(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 253
    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 254
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 250
    return-void
.end method

.method public setBounds(IIII)V
    .locals 1

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-ne v0, p2, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-eq v0, p4, :cond_1

    .line 163
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mDirty:Z

    .line 166
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 168
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 169
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 171
    :cond_2
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 149
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mDirty:Z

    .line 152
    :cond_1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 154
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 155
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 157
    :cond_2
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mDirty:Z

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 143
    return-void
.end method

.method public setHorizontallyCentered(Z)V
    .locals 1

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mHorizontallyCentered:Z

    if-eq v0, p1, :cond_0

    .line 242
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mDirty:Z

    .line 245
    :cond_0
    iput-boolean p1, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mHorizontallyCentered:Z

    .line 246
    return-void
.end method

.method public setMaxLines(I)V
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mMaxLines:I

    if-eq v0, p1, :cond_0

    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mDirty:Z

    .line 219
    :cond_0
    iput p1, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mMaxLines:I

    .line 220
    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mDirty:Z

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 180
    return-void
.end method

.method public setTextPadding(I)V
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mTextPaddingTop:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mTextPaddingRight:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mTextPaddingBottom:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mTextPaddingLeft:I

    if-eq v0, p1, :cond_1

    .line 195
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mDirty:Z

    .line 198
    :cond_1
    iput p1, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mTextPaddingLeft:I

    iput p1, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mTextPaddingBottom:I

    iput p1, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mTextPaddingRight:I

    iput p1, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mTextPaddingTop:I

    .line 199
    return-void
.end method

.method public setTextPadding(IIII)V
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mTextPaddingTop:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mTextPaddingRight:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mTextPaddingBottom:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mTextPaddingLeft:I

    if-eq v0, p4, :cond_1

    .line 204
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mDirty:Z

    .line 207
    :cond_1
    iput p1, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mTextPaddingTop:I

    .line 208
    iput p2, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mTextPaddingRight:I

    .line 209
    iput p3, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mTextPaddingBottom:I

    .line 210
    iput p4, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mTextPaddingLeft:I

    .line 211
    return-void
.end method

.method public setTextSize(I)V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    int-to-float v1, p1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mDirty:Z

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mPaint:Landroid/text/TextPaint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 189
    iput p1, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mTextSize:I

    .line 190
    return-void
.end method

.method public setVerticallyCentered(Z)V
    .locals 1

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mVerticallyCentered:Z

    if-eq v0, p1, :cond_0

    .line 234
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mDirty:Z

    .line 236
    :cond_0
    iput-boolean p1, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mVerticallyCentered:Z

    .line 237
    return-void
.end method

.method public setVideoTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mVideoTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mVideoTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mDirty:Z

    .line 228
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->mVideoTitle:Ljava/lang/CharSequence;

    .line 229
    return-void
.end method
