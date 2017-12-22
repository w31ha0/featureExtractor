.class public Lcom/netflix/mediaclient/android/widget/EllipsizingTextView;
.super Landroid/widget/TextView;
.source "EllipsizingTextView.java"


# static fields
.field private static final DEFAULT_END_PUNCTUATION:Ljava/util/regex/Pattern;

.field private static final ELLIPSIS:Ljava/lang/String; = "\u2026"


# instance fields
.field private final ellipsizeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/android/widget/EllipsizingTextView$EllipsizeListener;",
            ">;"
        }
    .end annotation
.end field

.field private endPunctuationPattern:Ljava/util/regex/Pattern;

.field private fullText:Ljava/lang/String;

.field private isEllipsized:Z

.field private isStale:Z

.field private lineAdditionalVerticalPadding:F

.field private lineSpacingMultiplier:F

.field private maxLines:I

.field private programmaticChange:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    const-string/jumbo v0, "[\\.,\u2026;\\:\\s]*$"

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/android/widget/EllipsizingTextView;->DEFAULT_END_PUNCTUATION:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/android/widget/EllipsizingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/netflix/mediaclient/android/widget/EllipsizingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/EllipsizingTextView;->ellipsizeListeners:Ljava/util/List;

    .line 59
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/EllipsizingTextView;->lineSpacingMultiplier:F

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/EllipsizingTextView;->lineAdditionalVerticalPadding:F

    .line 76
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 77
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x1010153

    aput v1, v0, v2

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 78
    const v1, 0x7fffffff

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/android/widget/EllipsizingTextView;->setMaxLines(I)V

    .line 79
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    sget-object v0, Lcom/netflix/mediaclient/android/widget/EllipsizingTextView;->DEFAULT_END_PUNCTUATION:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/EllipsizingTextView;->setEndPunctuationPattern(Ljava/util/regex/Pattern;)V

    .line 81
    return-void
.end method

.method private createWorkingLayout(Ljava/lang/String;)Landroid/text/Layout;
    .locals 8

    .prologue
    .line 222
    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/EllipsizingTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    .line 223
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/EllipsizingTextView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/EllipsizingTextView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/EllipsizingTextView;->getPaddingRight()I

    move-result v3

    sub-int v3, v1, v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iget v5, p0, Lcom/netflix/mediaclient/android/widget/EllipsizingTextView;->lineSpacingMultiplier:F

    iget v6, p0, Lcom/netflix/mediaclient/android/widget/EllipsizingTextView;->lineAdditionalVerticalPadding:F

    const/4 v7, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 222
    return-object v0
.end method

.method private getFullyVisibleLinesCount()I
    .locals 3

    .prologue
    .line 215
    const-string/jumbo v0, ""

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/android/widget/EllipsizingTextView;->createWorkingLayout(Ljava/lang/String;)Landroid/text/Layout;

    move-result-object v0

    .line 216
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/EllipsizingTextView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/EllipsizingTextView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/EllipsizingTextView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 217
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    .line 218
    div-int v0, v1, v0

    return v0
.end method

.method private getLinesCount()I
    .locals 2

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/EllipsizingTextView;->ellipsizingLastFullyVisibleLine()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/EllipsizingTextView;->getFullyVisibleLinesCount()I

    move-result v0

    .line 201
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 202
    const/4 v0, 0x1

    .line 207
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/EllipsizingTextView;->maxLines:I

    goto :goto_0
.end method

.method private resetText()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 159
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/EllipsizingTextView;->fullText:Ljava/lang/String;

    .line 161
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/android/widget/EllipsizingTextView;->createWorkingLayout(Ljava/lang/String;)Landroid/text/Layout;

    move-result-object v1

    .line 162
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/EllipsizingTextView;->getLinesCount()I

    move-result v4

    .line 163
    invoke-virtual {v1}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    if-le v5, v4, :cond_4

    .line 165
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/EllipsizingTextView;->fullText:Ljava/lang/String;

    add-int/lit8 v5, v4, -0x1

    invoke-virtual {v1, v5}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 166
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "\u2026"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/android/widget/EllipsizingTextView;->createWorkingLayout(Ljava/lang/String;)Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    if-le v1, v4, :cond_0

    .line 167
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 168
    const/4 v5, -0x1

    if-ne v1, v5, :cond_2

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/EllipsizingTextView;->endPunctuationPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u2026"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v1, v2

    .line 178
    :goto_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/EllipsizingTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 179
    iput-boolean v2, p0, Lcom/netflix/mediaclient/android/widget/EllipsizingTextView;->programmaticChange:Z

    .line 181
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/EllipsizingTextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    iput-boolean v3, p0, Lcom/netflix/mediaclient/android/widget/EllipsizingTextView;->programmaticChange:Z

    .line 186
    :cond_1
    iput-boolean v3, p0, Lcom/netflix/mediaclient/android/widget/EllipsizingTextView;->isStale:Z

    .line 187
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/EllipsizingTextView;->isEllipsized:Z

    if-eq v1, v0, :cond_3

    .line 188
    iput-boolean v1, p0, Lcom/netflix/mediaclient/android/widget/EllipsizingTextView;->isEllipsized:Z

    .line 189
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/EllipsizingTextView;->ellipsizeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/EllipsizingTextView$EllipsizeListener;

    .line 190
    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/android/widget/EllipsizingTextView$EllipsizeListener;->ellipsizeStateChanged(Z)V

    goto :goto_2

    .line 171
    :cond_2
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 183
    :catchall_0
    move-exception v0

    iput-boolean v3, p0, Lcom/netflix/mediaclient/android/widget/EllipsizingTextView;->programmaticChange:Z

    throw v0

    .line 193
    :cond_3
    return-void

    :cond_4
    move v1, v3

    goto :goto_1
.end method


# virtual methods
.method public addEllipsizeListener(Lcom/netflix/mediaclient/android/widget/EllipsizingTextView$EllipsizeListener;)V
    .locals 1

    .prologue
    .line 88
    if-nez p1, :cond_0

    .line 89
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/EllipsizingTextView;->ellipsizeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    return-void
.end method

.method public ellipsizingLastFullyVisibleLine()Z
    .locals 2

    .prologue
    .line 115
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/EllipsizingTextView;->maxLines:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMaxLines()I
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Override"
        }
    .end annotation

    .prologue
    .line 111
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/EllipsizingTextView;->maxLines:I

    return v0
.end method

.method public isEllipsized()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/EllipsizingTextView;->isEllipsized:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/EllipsizingTextView;->isStale:Z

    if-eqz v0, :cond_0

    .line 153
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/EllipsizingTextView;->resetText()V

    .line 155
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 156
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .prologue
    .line 137
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    .line 138
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/EllipsizingTextView;->ellipsizingLastFullyVisibleLine()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/EllipsizingTextView;->isStale:Z

    .line 141
    :cond_0
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .prologue
    .line 128
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 129
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/EllipsizingTextView;->programmaticChange:Z

    if-nez v0, :cond_0

    .line 130
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/EllipsizingTextView;->fullText:Ljava/lang/String;

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/EllipsizingTextView;->isStale:Z

    .line 133
    :cond_0
    return-void
.end method

.method public removeEllipsizeListener(Lcom/netflix/mediaclient/android/widget/EllipsizingTextView$EllipsizeListener;)V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/EllipsizingTextView;->ellipsizeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 96
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 0

    .prologue
    .line 231
    return-void
.end method

.method public setEndPunctuationPattern(Ljava/util/regex/Pattern;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/EllipsizingTextView;->endPunctuationPattern:Ljava/util/regex/Pattern;

    .line 85
    return-void
.end method

.method public setLineSpacing(FF)V
    .locals 0

    .prologue
    .line 120
    iput p1, p0, Lcom/netflix/mediaclient/android/widget/EllipsizingTextView;->lineAdditionalVerticalPadding:F

    .line 121
    iput p2, p0, Lcom/netflix/mediaclient/android/widget/EllipsizingTextView;->lineSpacingMultiplier:F

    .line 122
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 123
    return-void
.end method

.method public setMaxLines(I)V
    .locals 1

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 105
    iput p1, p0, Lcom/netflix/mediaclient/android/widget/EllipsizingTextView;->maxLines:I

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/EllipsizingTextView;->isStale:Z

    .line 107
    return-void
.end method

.method public setPadding(IIII)V
    .locals 1

    .prologue
    .line 144
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 145
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/EllipsizingTextView;->ellipsizingLastFullyVisibleLine()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/EllipsizingTextView;->isStale:Z

    .line 148
    :cond_0
    return-void
.end method
