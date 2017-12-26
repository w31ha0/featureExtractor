.class public Lgraphview/GraphViewStyle;
.super Ljava/lang/Object;
.source "GraphViewStyle.java"


# instance fields
.field private gridColor:I

.field private horizontalLabelsColor:I

.field private legendBorder:I

.field private legendMarginBottom:I

.field private legendSpacing:I

.field private legendWidth:I

.field private numHorizontalLabels:I

.field private numVerticalLabels:I

.field private textSize:F

.field private verticalLabelsAlign:Landroid/graphics/Paint$Align;

.field private verticalLabelsColor:I

.field private verticalLabelsWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-direct {p0}, Lgraphview/GraphViewStyle;->setDefaults()V

    .line 49
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "vLabelsColor"    # I
    .param p2, "hLabelsColor"    # I
    .param p3, "gridColor"    # I

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-direct {p0}, Lgraphview/GraphViewStyle;->setDefaults()V

    .line 53
    iput p1, p0, Lgraphview/GraphViewStyle;->verticalLabelsColor:I

    .line 54
    iput p2, p0, Lgraphview/GraphViewStyle;->horizontalLabelsColor:I

    .line 55
    iput p3, p0, Lgraphview/GraphViewStyle;->gridColor:I

    .line 56
    return-void
.end method

.method private setDefaults()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    const/4 v0, -0x1

    .line 107
    iput v0, p0, Lgraphview/GraphViewStyle;->verticalLabelsColor:I

    .line 108
    iput v0, p0, Lgraphview/GraphViewStyle;->horizontalLabelsColor:I

    .line 109
    const v0, -0xbbbbbc

    iput v0, p0, Lgraphview/GraphViewStyle;->gridColor:I

    .line 110
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lgraphview/GraphViewStyle;->textSize:F

    .line 111
    const/16 v0, 0x78

    iput v0, p0, Lgraphview/GraphViewStyle;->legendWidth:I

    .line 112
    iput v1, p0, Lgraphview/GraphViewStyle;->legendBorder:I

    .line 113
    iput v1, p0, Lgraphview/GraphViewStyle;->legendSpacing:I

    .line 114
    const/4 v0, 0x0

    iput v0, p0, Lgraphview/GraphViewStyle;->legendMarginBottom:I

    .line 115
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iput-object v0, p0, Lgraphview/GraphViewStyle;->verticalLabelsAlign:Landroid/graphics/Paint$Align;

    .line 116
    return-void
.end method


# virtual methods
.method public getGridColor()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lgraphview/GraphViewStyle;->gridColor:I

    return v0
.end method

.method public getHorizontalLabelsColor()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lgraphview/GraphViewStyle;->horizontalLabelsColor:I

    return v0
.end method

.method public getLegendBorder()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lgraphview/GraphViewStyle;->legendBorder:I

    return v0
.end method

.method public getLegendMarginBottom()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lgraphview/GraphViewStyle;->legendMarginBottom:I

    return v0
.end method

.method public getLegendSpacing()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lgraphview/GraphViewStyle;->legendSpacing:I

    return v0
.end method

.method public getLegendWidth()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lgraphview/GraphViewStyle;->legendWidth:I

    return v0
.end method

.method public getNumHorizontalLabels()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lgraphview/GraphViewStyle;->numHorizontalLabels:I

    return v0
.end method

.method public getNumVerticalLabels()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lgraphview/GraphViewStyle;->numVerticalLabels:I

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lgraphview/GraphViewStyle;->textSize:F

    return v0
.end method

.method public getVerticalLabelsAlign()Landroid/graphics/Paint$Align;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lgraphview/GraphViewStyle;->verticalLabelsAlign:Landroid/graphics/Paint$Align;

    return-object v0
.end method

.method public getVerticalLabelsColor()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lgraphview/GraphViewStyle;->verticalLabelsColor:I

    return v0
.end method

.method public getVerticalLabelsWidth()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lgraphview/GraphViewStyle;->verticalLabelsWidth:I

    return v0
.end method

.method public setGridColor(I)V
    .locals 0
    .param p1, "c"    # I

    .prologue
    .line 119
    iput p1, p0, Lgraphview/GraphViewStyle;->gridColor:I

    .line 120
    return-void
.end method

.method public setHorizontalLabelsColor(I)V
    .locals 0
    .param p1, "c"    # I

    .prologue
    .line 123
    iput p1, p0, Lgraphview/GraphViewStyle;->horizontalLabelsColor:I

    .line 124
    return-void
.end method

.method public setLegendBorder(I)V
    .locals 0
    .param p1, "legendBorder"    # I

    .prologue
    .line 127
    iput p1, p0, Lgraphview/GraphViewStyle;->legendBorder:I

    .line 128
    return-void
.end method

.method public setLegendMarginBottom(I)V
    .locals 0
    .param p1, "legendMarginBottom"    # I

    .prologue
    .line 139
    iput p1, p0, Lgraphview/GraphViewStyle;->legendMarginBottom:I

    .line 140
    return-void
.end method

.method public setLegendSpacing(I)V
    .locals 0
    .param p1, "legendSpacing"    # I

    .prologue
    .line 131
    iput p1, p0, Lgraphview/GraphViewStyle;->legendSpacing:I

    .line 132
    return-void
.end method

.method public setLegendWidth(I)V
    .locals 0
    .param p1, "legendWidth"    # I

    .prologue
    .line 135
    iput p1, p0, Lgraphview/GraphViewStyle;->legendWidth:I

    .line 136
    return-void
.end method

.method public setNumHorizontalLabels(I)V
    .locals 0
    .param p1, "numHorizontalLabels"    # I

    .prologue
    .line 146
    iput p1, p0, Lgraphview/GraphViewStyle;->numHorizontalLabels:I

    .line 147
    return-void
.end method

.method public setNumVerticalLabels(I)V
    .locals 0
    .param p1, "numVerticalLabels"    # I

    .prologue
    .line 153
    iput p1, p0, Lgraphview/GraphViewStyle;->numVerticalLabels:I

    .line 154
    return-void
.end method

.method public setTextSize(F)V
    .locals 0
    .param p1, "textSize"    # F

    .prologue
    .line 157
    iput p1, p0, Lgraphview/GraphViewStyle;->textSize:F

    .line 158
    return-void
.end method

.method public setVerticalLabelsAlign(Landroid/graphics/Paint$Align;)V
    .locals 0
    .param p1, "verticalLabelsAlign"    # Landroid/graphics/Paint$Align;

    .prologue
    .line 161
    iput-object p1, p0, Lgraphview/GraphViewStyle;->verticalLabelsAlign:Landroid/graphics/Paint$Align;

    .line 162
    return-void
.end method

.method public setVerticalLabelsColor(I)V
    .locals 0
    .param p1, "c"    # I

    .prologue
    .line 165
    iput p1, p0, Lgraphview/GraphViewStyle;->verticalLabelsColor:I

    .line 166
    return-void
.end method

.method public setVerticalLabelsWidth(I)V
    .locals 0
    .param p1, "verticalLabelsWidth"    # I

    .prologue
    .line 172
    iput p1, p0, Lgraphview/GraphViewStyle;->verticalLabelsWidth:I

    .line 173
    return-void
.end method

.method public useTextColorFromTheme(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 180
    instance-of v2, p1, Landroid/view/ContextThemeWrapper;

    if-eqz v2, :cond_0

    .line 181
    check-cast p1, Landroid/view/ContextThemeWrapper;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [I

    const v4, 0x1010036

    aput v4, v3, v5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 182
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lgraphview/GraphViewStyle;->getVerticalLabelsColor()I

    move-result v2

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 183
    .local v1, "color":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 185
    invoke-virtual {p0, v1}, Lgraphview/GraphViewStyle;->setVerticalLabelsColor(I)V

    .line 186
    invoke-virtual {p0, v1}, Lgraphview/GraphViewStyle;->setHorizontalLabelsColor(I)V

    .line 188
    .end local v0    # "array":Landroid/content/res/TypedArray;
    .end local v1    # "color":I
    :cond_0
    return-void
.end method
