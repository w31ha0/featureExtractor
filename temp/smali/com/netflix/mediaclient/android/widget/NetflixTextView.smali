.class public Lcom/netflix/mediaclient/android/widget/NetflixTextView;
.super Landroid/support/v7/widget/AppCompatTextView;
.source "NetflixTextView.java"


# static fields
.field public static final COLOR_TEXT_IF_MODIFIED:Z = false

.field public static final MIN_LINE_HEIGHT:F = 1.1f

.field private static final TAG:Ljava/lang/String; = "NetflixTextView"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method private adjustLineHeightIfNeeded()V
    .locals 4

    .prologue
    const v3, 0x3f8ccccd    # 1.1f

    .line 54
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixTextView;->getLineCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netflix/android/widgetry/R$dimen;->netflix_text_view_extra_line_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 56
    if-nez v0, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixTextView;->getLineSpacingMultiplier()F

    move-result v1

    cmpg-float v1, v1, v3

    if-gez v1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixTextView;->getLineSpacingExtra()F

    move-result v1

    mul-int/lit8 v2, v0, 0x2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 65
    int-to-float v0, v0

    invoke-virtual {p0, v0, v3}, Lcom/netflix/mediaclient/android/widget/NetflixTextView;->setLineSpacing(FF)V

    goto :goto_0
.end method

.method private forceLayoutDirectionIfNeeded(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 47
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/netflix/android/widgetry/utils/UiUtils;->isCurrentLocaleRTL()Z

    move-result v0

    if-nez v0, :cond_1

    .line 50
    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/util/l10n/BidiMarker;->FORCED_RTL:Lcom/netflix/mediaclient/util/l10n/BidiMarker;

    invoke-static {v0, v1}, Lcom/netflix/android/widgetry/utils/UiUtils;->prependBidiMarkerIfRtl(Ljava/lang/String;Lcom/netflix/mediaclient/util/l10n/BidiMarker;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 0

    .prologue
    .line 42
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/AppCompatTextView;->onMeasure(II)V

    .line 43
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/NetflixTextView;->adjustLineHeightIfNeeded()V

    .line 44
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/widget/NetflixTextView;->forceLayoutDirectionIfNeeded(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-super {p0, v0, p2}, Landroid/support/v7/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 38
    return-void
.end method
