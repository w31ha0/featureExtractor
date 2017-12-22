.class public Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;
.super Lcom/netflix/mediaclient/android/widget/UnderlineTextView;
.source "AutoResizeTextView.java"


# static fields
.field public static final MIN_TEXT_SIZE:F = 4.0f

.field private static final mEllipsis:Ljava/lang/String; = "..."


# instance fields
.field private mAddEllipsis:Z

.field private mMaxTextSize:F

.field private mMinTextSize:F

.field private mNeedsResize:Z

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mTextSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/widget/UnderlineTextView;-><init>(Landroid/content/Context;)V

    .line 36
    iput-boolean v2, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mNeedsResize:Z

    .line 42
    iput v1, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mMaxTextSize:F

    .line 45
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mMinTextSize:F

    .line 48
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mSpacingMult:F

    .line 51
    iput v1, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mSpacingAdd:F

    .line 54
    iput-boolean v2, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mAddEllipsis:Z

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/android/widget/UnderlineTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iput-boolean v2, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mNeedsResize:Z

    .line 42
    iput v1, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mMaxTextSize:F

    .line 45
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mMinTextSize:F

    .line 48
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mSpacingMult:F

    .line 51
    iput v1, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mSpacingAdd:F

    .line 54
    iput-boolean v2, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mAddEllipsis:Z

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/android/widget/UnderlineTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    iput-boolean v2, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mNeedsResize:Z

    .line 42
    iput v1, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mMaxTextSize:F

    .line 45
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mMinTextSize:F

    .line 48
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mSpacingMult:F

    .line 51
    iput v1, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mSpacingAdd:F

    .line 54
    iput-boolean v2, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mAddEllipsis:Z

    .line 78
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mTextSize:F

    .line 79
    return-void
.end method

.method private getTextHeight(Ljava/lang/CharSequence;Landroid/text/TextPaint;IF)I
    .locals 8

    .prologue
    .line 291
    invoke-virtual {p2, p4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 293
    new-instance v0, Landroid/text/StaticLayout;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iget v5, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mSpacingMult:F

    iget v6, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mSpacingAdd:F

    const/4 v7, 0x1

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 294
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    return v0
.end method


# virtual methods
.method public getAddEllipsis()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mAddEllipsis:Z

    return v0
.end method

.method public getMaxTextSize()F
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mMaxTextSize:F

    return v0
.end method

.method public getMinTextSize()F
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mMinTextSize:F

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .prologue
    .line 196
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mNeedsResize:Z

    if-eqz v0, :cond_1

    .line 197
    :cond_0
    sub-int v0, p4, p2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->getCompoundPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->getCompoundPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 198
    sub-int v1, p5, p3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->getCompoundPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->getCompoundPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 199
    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->resizeText(II)V

    .line 201
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/netflix/mediaclient/android/widget/UnderlineTextView;->onLayout(ZIIII)V

    .line 202
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .prologue
    .line 96
    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 97
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mNeedsResize:Z

    .line 99
    :cond_1
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mNeedsResize:Z

    .line 88
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->resetTextSize()V

    .line 89
    return-void
.end method

.method public resetTextSize()V
    .locals 2

    .prologue
    .line 185
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mTextSize:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 186
    const/4 v0, 0x0

    iget v1, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mTextSize:F

    invoke-super {p0, v0, v1}, Lcom/netflix/mediaclient/android/widget/UnderlineTextView;->setTextSize(IF)V

    .line 187
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mTextSize:F

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mMaxTextSize:F

    .line 189
    :cond_0
    return-void
.end method

.method public resizeText()V
    .locals 3

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 210
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 211
    invoke-virtual {p0, v1, v0}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->resizeText(II)V

    .line 212
    return-void
.end method

.method public resizeText(II)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 221
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 223
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    if-lez p2, :cond_0

    if-lez p1, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mTextSize:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    .line 231
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mMaxTextSize:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    iget v0, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mTextSize:F

    iget v3, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mMaxTextSize:F

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 234
    :goto_1
    invoke-direct {p0, v1, v2, p1, v0}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->getTextHeight(Ljava/lang/CharSequence;Landroid/text/TextPaint;IF)I

    move-result v3

    move v8, v0

    move v0, v3

    .line 237
    :goto_2
    if-le v0, p2, :cond_3

    iget v3, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mMinTextSize:F

    cmpl-float v3, v8, v3

    if-lez v3, :cond_3

    .line 238
    const/high16 v0, 0x40000000    # 2.0f

    sub-float v0, v8, v0

    iget v3, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mMinTextSize:F

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 239
    invoke-direct {p0, v1, v2, p1, v3}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->getTextHeight(Ljava/lang/CharSequence;Landroid/text/TextPaint;IF)I

    move-result v0

    move v8, v3

    goto :goto_2

    .line 231
    :cond_2
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mTextSize:F

    goto :goto_1

    .line 243
    :cond_3
    iget-boolean v3, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mAddEllipsis:Z

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mMinTextSize:F

    cmpl-float v3, v8, v3

    if-nez v3, :cond_4

    if-le v0, p2, :cond_4

    .line 245
    new-instance v0, Landroid/text/StaticLayout;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iget v5, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mSpacingMult:F

    iget v6, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mSpacingAdd:F

    move v3, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 247
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    if-lez v3, :cond_4

    .line 250
    invoke-virtual {v0, p2}, Landroid/text/StaticLayout;->getLineForVertical(I)I

    move-result v3

    add-int/lit8 v4, v3, -0x1

    .line 252
    if-gez v4, :cond_5

    .line 253
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    :cond_4
    :goto_3
    invoke-virtual {v2, v8}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 274
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mSpacingAdd:F

    iget v1, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mSpacingMult:F

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->setLineSpacing(FF)V

    .line 277
    iput-boolean v7, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mNeedsResize:Z

    goto :goto_0

    .line 257
    :cond_5
    invoke-virtual {v0, v4}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v5

    .line 258
    invoke-virtual {v0, v4}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v3

    .line 259
    invoke-virtual {v0, v4}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v0

    .line 260
    const-string/jumbo v4, "..."

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 263
    :goto_4
    int-to-float v6, p1

    add-float/2addr v0, v4

    cmpg-float v0, v6, v0

    if-gez v0, :cond_6

    .line 264
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v0, v3, 0x1

    invoke-interface {v1, v5, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    goto :goto_4

    .line 266
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1, v7, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method public setAddEllipsis(Z)V
    .locals 0

    .prologue
    .line 170
    iput-boolean p1, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mAddEllipsis:Z

    .line 171
    return-void
.end method

.method public setLineSpacing(FF)V
    .locals 0

    .prologue
    .line 124
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/android/widget/UnderlineTextView;->setLineSpacing(FF)V

    .line 125
    iput p2, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mSpacingMult:F

    .line 126
    iput p1, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mSpacingAdd:F

    .line 127
    return-void
.end method

.method public setMaxTextSize(F)V
    .locals 0

    .prologue
    .line 134
    iput p1, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mMaxTextSize:F

    .line 135
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->requestLayout()V

    .line 136
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->invalidate()V

    .line 137
    return-void
.end method

.method public setMinTextSize(F)V
    .locals 0

    .prologue
    .line 152
    iput p1, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mMinTextSize:F

    .line 153
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->requestLayout()V

    .line 154
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->invalidate()V

    .line 155
    return-void
.end method

.method public setTextSize(F)V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/widget/UnderlineTextView;->setTextSize(F)V

    .line 107
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mTextSize:F

    .line 108
    return-void
.end method

.method public setTextSize(IF)V
    .locals 1

    .prologue
    .line 115
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/android/widget/UnderlineTextView;->setTextSize(IF)V

    .line 116
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mTextSize:F

    .line 117
    return-void
.end method
