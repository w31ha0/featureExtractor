.class public final Lcom/netflix/mediaclient/util/SubtitleUtils;
.super Ljava/lang/Object;
.source "SubtitleUtils.java"


# static fields
.field private static final CELL_PATTERN:Ljava/util/regex/Pattern;

.field public static final DEFAULT_DEVICE_TEXT_STYLE_FOR_MONOSPACE:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

.field public static final DEFAULT_DEVICE_TEXT_STYLE_FOR_PROPORTIONAL:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

.field private static final DEFAULT_SPACING_IN_EM_FOR_MONOSPACE_FONT:F = 0.0f

.field private static final DEFAULT_SPACING_IN_EM_FOR_PROPORSIONAL_FONT:F = 0.016f

.field private static final DEFAULT_TEXT_COLOR:Ljava/lang/String; = "FFFFFF"

.field private static final DEFAULT_TEXT_STLE_ID:Ljava/lang/String; = "<%NF_DEFAULT_TEXT_STYLE%>"

.field private static final MILLISECONDS_PER_SECOND:I = 0x3e8

.field private static final PERCENT_PATTERN:Ljava/util/regex/Pattern;

.field public static final SUBTITITLE_IMAGE_1080P_HEIGHT:I = 0x438

.field public static final SUBTITITLE_IMAGE_1080P_WIDTH:I = 0x780

.field public static final SUBTITITLE_IMAGE_480P_HEIGHT:I = 0x1e0

.field public static final SUBTITITLE_IMAGE_480P_WIDTH:I = 0x355

.field public static final SUBTITITLE_IMAGE_720P_HEIGHT:I = 0x2d0

.field public static final SUBTITITLE_IMAGE_720P_WIDTH:I = 0x500

.field private static final TAG:Ljava/lang/String; = "nf_subtitles_render"

.field private static final TICK_MS_PATTERN:Ljava/util/regex/Pattern;

.field private static final TICK_SEC_PATTERN:Ljava/util/regex/Pattern;

.field private static final TICK_TIME_PATTERN:Ljava/util/regex/Pattern;

.field private static final TICK_T_PATTERN:Ljava/util/regex/Pattern;

.field private static final sTypeFaceWeightMapForProportional:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v3, 0x0

    .line 71
    const-string/jumbo v0, "^[0-9]*[.]?[0-9]*%$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/util/SubtitleUtils;->PERCENT_PATTERN:Ljava/util/regex/Pattern;

    .line 72
    const-string/jumbo v0, "^[0-9]{1,2}c$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/util/SubtitleUtils;->CELL_PATTERN:Ljava/util/regex/Pattern;

    .line 73
    const-string/jumbo v0, "^([0-9.]+)t$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/util/SubtitleUtils;->TICK_T_PATTERN:Ljava/util/regex/Pattern;

    .line 74
    const-string/jumbo v0, "^([0-9.]+)ms$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/util/SubtitleUtils;->TICK_MS_PATTERN:Ljava/util/regex/Pattern;

    .line 75
    const-string/jumbo v0, "^([0-9.]+)s$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/util/SubtitleUtils;->TICK_SEC_PATTERN:Ljava/util/regex/Pattern;

    .line 76
    const-string/jumbo v0, "^([0-9]+):([0-9]+):([0-9.]+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/util/SubtitleUtils;->TICK_TIME_PATTERN:Ljava/util/regex/Pattern;

    .line 81
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    const-string/jumbo v1, "<%NF_DEFAULT_TEXT_STYLE%>"

    const-string/jumbo v2, "FFFFFF"

    .line 82
    invoke-static {}, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;->getDefaultOutline()Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;

    move-result-object v6

    sget-object v7, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->defaultType:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    sget-object v10, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;->Regular:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    move-object v4, v3

    move-object v5, v3

    move-object v11, v3

    move-object v12, v3

    move-object v13, v3

    invoke-direct/range {v0 .. v13}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V

    sput-object v0, Lcom/netflix/mediaclient/util/SubtitleUtils;->DEFAULT_DEVICE_TEXT_STYLE_FOR_MONOSPACE:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    .line 84
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    const-string/jumbo v1, "<%NF_DEFAULT_TEXT_STYLE%>"

    const-string/jumbo v2, "FFFFFF"

    .line 85
    invoke-static {}, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;->getDefaultOutline()Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;

    move-result-object v6

    sget-object v7, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->monospace:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    sget-object v10, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;->Medium:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    move-object v4, v3

    move-object v5, v3

    move-object v11, v3

    move-object v12, v3

    move-object v13, v3

    invoke-direct/range {v0 .. v13}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V

    sput-object v0, Lcom/netflix/mediaclient/util/SubtitleUtils;->DEFAULT_DEVICE_TEXT_STYLE_FOR_PROPORTIONAL:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/util/SubtitleUtils;->sTypeFaceWeightMapForProportional:Ljava/util/Map;

    .line 101
    invoke-static {}, Lcom/netflix/mediaclient/util/SubtitleUtils;->initTypeFaceMap()V

    .line 102
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    return-void
.end method

.method public static adjustIfIntersectByMovingFirstUp(Landroid/view/View;Landroid/view/View;)I
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 601
    invoke-static {p0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->getRect(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v3

    .line 602
    invoke-static {p1, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->getRect(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v0

    .line 609
    invoke-static {v3, v0}, Lcom/netflix/mediaclient/util/SubtitleUtils;->getOverlap(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Point;

    move-result-object v0

    .line 610
    if-nez v0, :cond_0

    .line 611
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "===> No intersection found"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 637
    :goto_0
    return v1

    .line 620
    :cond_0
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 621
    iget v4, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v0

    .line 622
    if-gez v4, :cond_1

    .line 623
    const-string/jumbo v1, "nf_subtitles_render"

    const-string/jumbo v5, "We hit top. Set top to 0"

    invoke-static {v1, v5}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    add-int/2addr v0, v4

    .line 625
    const/4 v1, -0x1

    .line 627
    :cond_1
    iget v4, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v0

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 628
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v4, v0

    iput v0, v3, Landroid/graphics/Rect;->bottom:I

    .line 634
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 635
    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v4, v3, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 636
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public static adjustIfIntersectByMovingSecondDown(Landroid/view/View;Landroid/view/View;I)Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 650
    invoke-static {p0, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->getRect(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v0

    .line 651
    invoke-static {p1, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->getRect(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v3

    .line 658
    invoke-static {v0, v3}, Lcom/netflix/mediaclient/util/SubtitleUtils;->getOverlap(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Point;

    move-result-object v0

    .line 659
    if-nez v0, :cond_0

    .line 660
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v2, "===> No intersection found"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 684
    :goto_0
    return v0

    .line 668
    :cond_0
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 669
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v0

    .line 670
    if-le v4, p2, :cond_1

    .line 671
    const-string/jumbo v5, "nf_subtitles_render"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "We hit bottom. Set bottom to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    sub-int/2addr v0, v4

    add-int/2addr v0, p2

    .line 674
    :cond_1
    iget v4, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v0

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 675
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v4

    iput v0, v3, Landroid/graphics/Rect;->bottom:I

    .line 681
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 682
    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v4, v3, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 683
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move v0, v2

    .line 684
    goto :goto_0
.end method

.method private static applyEdge(Landroid/widget/TextView;Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;)V
    .locals 4

    .prologue
    .line 872
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Apply edge"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;->isOutlineRequired()Z

    move-result v0

    if-nez v0, :cond_1

    .line 875
    :cond_0
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "No outline to be applied"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    :goto_0
    return-void

    .line 879
    :cond_1
    invoke-static {p1}, Lcom/netflix/mediaclient/util/SubtitleUtils;->getEdgeColor(Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;)Ljava/lang/Integer;

    move-result-object v0

    .line 880
    if-nez v0, :cond_2

    .line 881
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Edge color unresolved, not setting anything!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 885
    :cond_2
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;->getShadow()Lcom/netflix/mediaclient/service/player/subtitles/text/Outline$Shadow;

    move-result-object v1

    .line 886
    if-nez v1, :cond_3

    .line 887
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Shadow is null, not setting anything!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 893
    :cond_3
    iget v2, v1, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline$Shadow;->radius:F

    iget v3, v1, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline$Shadow;->dx:I

    int-to-float v3, v3

    iget v1, v1, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline$Shadow;->dy:I

    int-to-float v1, v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v2, v3, v1, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_0
.end method

.method private static applyOutline(Landroid/widget/TextView;Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;)V
    .locals 2

    .prologue
    .line 847
    if-nez p1, :cond_0

    .line 848
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "No outline!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    :goto_0
    return-void

    .line 852
    :cond_0
    instance-of v0, p0, Lcom/netflix/mediaclient/android/widget/StrokeTextView;

    if-eqz v0, :cond_1

    .line 853
    check-cast p0, Lcom/netflix/mediaclient/android/widget/StrokeTextView;

    invoke-static {p0, p1}, Lcom/netflix/mediaclient/util/SubtitleUtils;->applyStroke(Lcom/netflix/mediaclient/android/widget/StrokeTextView;Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;)V

    goto :goto_0

    .line 855
    :cond_1
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/util/SubtitleUtils;->applyEdge(Landroid/widget/TextView;Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;)V

    goto :goto_0
.end method

.method private static applyStroke(Lcom/netflix/mediaclient/android/widget/StrokeTextView;Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;)V
    .locals 2

    .prologue
    .line 861
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Apply stroke"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    invoke-static {p1}, Lcom/netflix/mediaclient/util/SubtitleUtils;->getEdgeColor(Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;)Ljava/lang/Integer;

    move-result-object v1

    .line 864
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;->getOutlineWidth()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;->getOutlineWidth()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 865
    :goto_0
    if-eqz v1, :cond_0

    .line 866
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/StrokeTextView;->setStrokeWidth(I)V

    .line 867
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/StrokeTextView;->setStrokeColor(I)V

    .line 869
    :cond_0
    return-void

    .line 864
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static applyStyle(Landroid/widget/TextView;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;F)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 792
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 793
    :cond_0
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "apply style parameters are null, do nothing!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    :goto_0
    return-void

    .line 802
    :cond_1
    invoke-static {p1}, Lcom/netflix/mediaclient/util/SubtitleUtils;->getFontSizeMultiplier(Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)F

    move-result v0

    .line 803
    mul-float/2addr v0, p2

    .line 804
    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 810
    invoke-static {p1, v1}, Lcom/netflix/mediaclient/util/SubtitleUtils;->toTypeFace(Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;Z)Landroid/graphics/Typeface;

    move-result-object v0

    .line 811
    invoke-static {p1}, Lcom/netflix/mediaclient/util/SubtitleUtils;->toTypeFaceStyle(Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 812
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/util/SubtitleUtils;->setLetterSpacing(Landroid/widget/TextView;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)V

    .line 814
    invoke-static {p1}, Lcom/netflix/mediaclient/util/SubtitleUtils;->getTextColor(Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)Ljava/lang/Integer;

    move-result-object v0

    .line 815
    if-eqz v0, :cond_2

    .line 820
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 825
    :goto_1
    invoke-static {p1}, Lcom/netflix/mediaclient/util/SubtitleUtils;->getBackgroundColor(Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)Ljava/lang/Integer;

    move-result-object v0

    .line 826
    if-eqz v0, :cond_3

    .line 830
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 835
    :goto_2
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Before apply outline!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getOutline()Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/SubtitleUtils;->applyOutline(Landroid/widget/TextView;Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;)V

    goto :goto_0

    .line 822
    :cond_2
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Text color unresolved, not setting anything!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 832
    :cond_3
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Background color unresolved, not setting anything!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static createRegionForRectangle(Landroid/view/View;Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;)Landroid/graphics/Rect;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 392
    if-nez p0, :cond_0

    .line 393
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Display area can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 400
    if-eqz p1, :cond_3

    .line 401
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;->getFirstLength()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v1, v0

    .line 402
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;->getSecondLength()F

    move-result v3

    mul-float/2addr v0, v3

    float-to-int v0, v0

    .line 414
    :goto_0
    if-eqz p2, :cond_4

    .line 417
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;->getFirstLength()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 418
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;->getSecondLength()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 419
    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v3

    iput v1, v2, Landroid/graphics/Rect;->right:I

    .line 420
    iget v1, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 423
    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 424
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Extent h is too big!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_1
    iget v0, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 428
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Extent w is too big!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_2
    :goto_1
    return-object v2

    .line 404
    :cond_3
    const-string/jumbo v1, "nf_subtitles_render"

    const-string/jumbo v3, "Extent is null!"

    invoke-static {v1, v3}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    goto :goto_0

    .line 432
    :cond_4
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Origin is null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static createText(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 767
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 768
    if-le p1, v0, :cond_0

    .line 769
    :goto_0
    if-ge v0, p1, :cond_0

    .line 770
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 769
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 773
    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 774
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    :cond_1
    const-string/jumbo v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static dumpLog([Lcom/netflix/mediaclient/media/Subtitle;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1101
    if-eqz p0, :cond_0

    .line 1112
    :goto_0
    return-void

    .line 1110
    :cond_0
    const-string/jumbo v0, "Subtitles are null!"

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getBackgroundColor(Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 532
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getBackgroundOpacity()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getBackgroundColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->resolveColor(Ljava/lang/Float;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultFontWeight(Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;)Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;
    .locals 1

    .prologue
    .line 725
    invoke-static {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->isMonospace(Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 726
    sget-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;->Regular:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    .line 728
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;->Medium:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    goto :goto_0
.end method

.method private static getDefaultSpacing(Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;)F
    .locals 1

    .prologue
    .line 751
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->isProportional(Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 752
    :cond_0
    const v0, 0x3c83126f    # 0.016f

    .line 754
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getDefaultTextStyle(Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;)Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;
    .locals 1

    .prologue
    .line 716
    invoke-static {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->isMonospace(Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 717
    sget-object v0, Lcom/netflix/mediaclient/util/SubtitleUtils;->DEFAULT_DEVICE_TEXT_STYLE_FOR_MONOSPACE:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    .line 719
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/util/SubtitleUtils;->DEFAULT_DEVICE_TEXT_STYLE_FOR_PROPORTIONAL:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    goto :goto_0
.end method

.method public static getDeviceDefaultTextStyle(Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;
    .locals 2

    .prologue
    .line 696
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 697
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "getDeviceDefaultTextStyle:: user and region defaults are null: proportional"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/SubtitleUtils;->getDefaultTextStyle(Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;)Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v0

    .line 704
    :goto_0
    return-object v0

    .line 699
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getFontFamily()Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    move-result-object v0

    if-nez v0, :cond_2

    .line 700
    :cond_1
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "getDeviceDefaultTextStyle:: user font family is null, depending on region"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getFontFamily()Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/SubtitleUtils;->getDefaultTextStyle(Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;)Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v0

    goto :goto_0

    .line 703
    :cond_2
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "getDeviceDefaultTextStyle:: user font family is NOT null, deciding based on it"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getFontFamily()Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/SubtitleUtils;->getDefaultTextStyle(Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;)Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v0

    goto :goto_0
.end method

.method public static getEdgeColor(Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;)Ljava/lang/Integer;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 552
    if-eqz p0, :cond_0

    .line 553
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;->getEdgeColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->resolveColor(Ljava/lang/Float;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 555
    :cond_0
    return-object v0
.end method

.method public static getFontSizeMultiplier(Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)F
    .locals 3

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 495
    .line 496
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getFontSize()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getFontSize()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    .line 498
    :goto_0
    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_1

    .line 501
    :goto_1
    return v0

    :cond_0
    move v1, v0

    .line 496
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static getMarginsForRectangle(Landroid/view/View;Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;)Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 453
    if-nez p0, :cond_0

    .line 454
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Display area can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 459
    :cond_0
    new-instance v2, Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;

    invoke-direct {v2}, Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;-><init>()V

    .line 461
    if-eqz p1, :cond_1

    .line 462
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;->getFirstLength()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v1, v0

    .line 463
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;->getSecondLength()F

    move-result v3

    mul-float/2addr v0, v3

    float-to-int v0, v0

    .line 475
    :goto_0
    if-eqz p2, :cond_2

    .line 478
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;->getFirstLength()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;->left:I

    .line 479
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;->getSecondLength()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;->top:I

    .line 480
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, v2, Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;->left:I

    sub-int/2addr v3, v4

    sub-int v1, v3, v1

    iput v1, v2, Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;->right:I

    .line 481
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v3, v2, Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;->top:I

    sub-int/2addr v1, v3

    sub-int v0, v1, v0

    iput v0, v2, Lcom/netflix/mediaclient/util/SubtitleUtils$Margins;->bottom:I

    .line 490
    :goto_1
    return-object v2

    .line 465
    :cond_1
    const-string/jumbo v1, "nf_subtitles_render"

    const-string/jumbo v3, "Extent is null!"

    invoke-static {v1, v3}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    goto :goto_0

    .line 483
    :cond_2
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Origin is null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getOverlap(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Point;
    .locals 3

    .prologue
    .line 579
    invoke-static {p0, p1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 580
    const/4 v0, 0x0

    .line 589
    :goto_0
    return-object v0

    .line 583
    :cond_0
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/util/SubtitleUtils;->intersection(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 585
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 586
    const/4 v2, 0x0

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 587
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    goto :goto_0
.end method

.method public static getSubtitleImageMaxHeight(Landroid/content/Context;)I
    .locals 5

    .prologue
    const/16 v0, 0x438

    const/16 v1, 0x2d0

    .line 1021
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 1025
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v3, v4, :cond_0

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1026
    :goto_0
    if-lt v2, v0, :cond_1

    .line 1027
    const-string/jumbo v1, "nf_subtitles_render"

    const-string/jumbo v2, "Using 1080P"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    :goto_1
    return v0

    .line 1025
    :cond_0
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0

    .line 1029
    :cond_1
    if-lt v2, v1, :cond_2

    .line 1030
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v2, "Using 720P"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1031
    goto :goto_1

    .line 1033
    :cond_2
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Using 480P"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    const/16 v0, 0x1e0

    goto :goto_1
.end method

.method public static getSubtitleImageMaxWidth(Landroid/content/Context;)I
    .locals 5

    .prologue
    const/16 v0, 0x780

    const/16 v1, 0x500

    .line 1000
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 1005
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v3, v4, :cond_0

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1007
    :goto_0
    if-lt v2, v0, :cond_1

    .line 1008
    const-string/jumbo v1, "nf_subtitles_render"

    const-string/jumbo v2, "Using 1080P"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    :goto_1
    return v0

    .line 1005
    :cond_0
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0

    .line 1010
    :cond_1
    if-lt v2, v1, :cond_2

    .line 1011
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v2, "Using 720P"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1012
    goto :goto_1

    .line 1014
    :cond_2
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Using 480P"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    const/16 v0, 0x355

    goto :goto_1
.end method

.method public static getTextColor(Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 522
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getOpacity()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->resolveColor(Ljava/lang/Float;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private static getTypefaceByWeightForSansSerif(Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;)Landroid/graphics/Typeface;
    .locals 4

    .prologue
    .line 303
    if-nez p0, :cond_0

    .line 304
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "No font weight, use sans serif"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 316
    :goto_0
    return-object v0

    .line 308
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/util/SubtitleUtils;->sTypeFaceWeightMapForProportional:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    .line 309
    if-nez v0, :cond_1

    .line 313
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    .line 315
    :cond_1
    const-string/jumbo v1, "nf_subtitles_render"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Found mapping "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getWindowColor(Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getWindowOpacity()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getWindowColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->resolveColor(Ljava/lang/Float;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private static initTypeFaceMap()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 110
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Init typefaces "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-static {}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;->values()[Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_c

    aget-object v5, v3, v1

    .line 114
    const/4 v0, 0x0

    .line 115
    sget-object v6, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;->Thin:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    if-ne v6, v5, :cond_2

    .line 117
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v6, 0x10

    if-lt v0, v6, :cond_1

    .line 118
    const-string/jumbo v0, "sans-serif-thin"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 150
    :cond_0
    :goto_1
    if-nez v0, :cond_b

    .line 151
    const-string/jumbo v0, "nf_subtitles_render"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "No typeface for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 157
    :goto_2
    sget-object v6, Lcom/netflix/mediaclient/util/SubtitleUtils;->sTypeFaceWeightMapForProportional:Ljava/util/Map;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 120
    :cond_1
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_1

    .line 123
    :cond_2
    sget-object v6, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;->Light:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    if-ne v6, v5, :cond_3

    .line 124
    const-string/jumbo v0, "sans-serif-light"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_1

    .line 126
    :cond_3
    sget-object v6, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;->Book:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    if-ne v6, v5, :cond_4

    .line 127
    const-string/jumbo v0, "sans-serif-light"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_1

    .line 129
    :cond_4
    sget-object v6, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;->Regular:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    if-ne v6, v5, :cond_5

    .line 130
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_1

    .line 132
    :cond_5
    sget-object v6, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;->Medium:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    if-ne v6, v5, :cond_7

    .line 134
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v6, 0x15

    if-lt v0, v6, :cond_6

    .line 135
    const-string/jumbo v0, "sans-serif-medium"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_1

    .line 137
    :cond_6
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_1

    .line 140
    :cond_7
    sget-object v6, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;->SemiBold:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    if-ne v6, v5, :cond_8

    .line 141
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v0, v9}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_1

    .line 142
    :cond_8
    sget-object v6, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;->Bold:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    if-ne v6, v5, :cond_9

    .line 143
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v0, v9}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto/16 :goto_1

    .line 144
    :cond_9
    sget-object v6, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;->Bold:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    if-ne v6, v5, :cond_a

    .line 145
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v0, v9}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto/16 :goto_1

    .line 146
    :cond_a
    sget-object v6, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;->ExtraBlack:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    if-ne v6, v5, :cond_0

    .line 147
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v0, v9}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto/16 :goto_1

    .line 154
    :cond_b
    const-string/jumbo v6, "nf_subtitles_render"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Typeface for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 159
    :cond_c
    return-void
.end method

.method public static intersection(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 563
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 564
    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 565
    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 566
    iget v3, p0, Landroid/graphics/Rect;->bottom:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 567
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4
.end method

.method public static isNextNodeInSameLine(Ljava/util/List;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1041
    if-nez p0, :cond_1

    .line 1050
    :cond_0
    :goto_0
    return v2

    .line 1044
    :cond_1
    add-int/lit8 v0, p1, 0x1

    .line 1045
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v0, :cond_0

    .line 1049
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;

    .line 1050
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;->getLineBreaks()I

    move-result v0

    if-ge v0, v1, :cond_2

    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public static isPositionDefinedInBlock(Landroid/widget/LinearLayout;Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 905
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 906
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "region or block is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 908
    :cond_1
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v3, "isPositionDefinedInBlock start"

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->getRegion()Lcom/netflix/mediaclient/service/player/subtitles/text/Region;

    move-result-object v0

    .line 911
    if-nez v0, :cond_2

    .line 912
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v2, "isPositionDefinedInBlock no region, no need for wrapper"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 941
    :goto_0
    return v0

    .line 916
    :cond_2
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->getTextNodes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v2, :cond_3

    .line 917
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v2, "isPositionDefinedInBlock no text blocks!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 918
    goto :goto_0

    .line 921
    :cond_3
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->getTextNodes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;

    .line 922
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;->getStyle()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v0

    if-nez v0, :cond_5

    .line 923
    :cond_4
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v2, "isPositionDefinedInBlock p missing"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 924
    goto :goto_0

    .line 927
    :cond_5
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->getStyle()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getExtent()Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    move-result-object v0

    .line 928
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->getStyle()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getOrigin()Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    move-result-object v3

    .line 936
    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;->canUse(Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v3}, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;->canUse(Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 937
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "isPositionDefinedInBlock using block extent and origin overrides, return true"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 938
    goto :goto_0

    .line 940
    :cond_6
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v2, "isPositionDefinedInBlock using region defaults for extent and origin, return false"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 941
    goto :goto_0
.end method

.method public static isStrokeTextViewRequired(Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)Z
    .locals 1

    .prologue
    .line 511
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getOutline()Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getOutline()Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;->isStrokeTextRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newInstance(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/media/Subtitle;
    .locals 4

    .prologue
    .line 1071
    if-nez p0, :cond_0

    .line 1072
    const/4 v0, 0x0

    .line 1086
    :goto_0
    return-object v0

    .line 1074
    :cond_0
    const-string/jumbo v0, "impl"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 1075
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1076
    const-string/jumbo v0, "order"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1077
    invoke-static {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxSubtitle;->newInstance(Lorg/json/JSONObject;I)Lcom/netflix/mediaclient/ui/mdx/MdxSubtitle;

    move-result-object v0

    goto :goto_0

    .line 1079
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1080
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/player/NccpSubtitle;->newInstance(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v0

    goto :goto_0

    .line 1082
    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1083
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/OfflineTextSubtitle;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/offline/OfflineTextSubtitle;-><init>(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 1085
    :cond_3
    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 1086
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/OfflineImageSubtitle;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/offline/OfflineImageSubtitle;-><init>(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 1089
    :cond_4
    new-instance v1, Lorg/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Implementation does not support restore "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static parseMargin(Ljava/lang/String;I)Ljava/lang/Float;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 170
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-object v0

    .line 174
    :cond_1
    sget-object v1, Lcom/netflix/mediaclient/util/SubtitleUtils;->PERCENT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 175
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 177
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "%"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 180
    :cond_2
    sget-object v1, Lcom/netflix/mediaclient/util/SubtitleUtils;->CELL_PATTERN:Ljava/util/regex/Pattern;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 181
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "c"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    int-to-float v1, p1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0
.end method

.method public static parseTime(Ljava/lang/String;D)J
    .locals 9

    .prologue
    const-wide/16 v0, -0x1

    .line 201
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 202
    const-string/jumbo v2, "nf_subtitles_render"

    const-string/jumbo v3, "dfxp-badtime: Time string us empty! Invalid time"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_0
    :goto_0
    return-wide v0

    .line 206
    :cond_1
    sget-object v2, Lcom/netflix/mediaclient/util/SubtitleUtils;->TICK_T_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 207
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 208
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "t"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 209
    invoke-static {v2}, Lcom/netflix/mediaclient/util/SubtitleUtils;->safeParseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 210
    cmp-long v0, v2, v0

    if-nez v0, :cond_2

    move-wide v0, v2

    .line 211
    goto :goto_0

    .line 213
    :cond_2
    long-to-double v0, v2

    mul-double/2addr v0, p1

    double-to-long v0, v0

    goto :goto_0

    .line 217
    :cond_3
    sget-object v2, Lcom/netflix/mediaclient/util/SubtitleUtils;->TICK_MS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 218
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 219
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ms"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-static {v0}, Lcom/netflix/mediaclient/util/SubtitleUtils;->safeParseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    .line 223
    :cond_4
    sget-object v2, Lcom/netflix/mediaclient/util/SubtitleUtils;->TICK_SEC_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 224
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 225
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "s"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 226
    invoke-static {v2}, Lcom/netflix/mediaclient/util/SubtitleUtils;->safeParseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 227
    cmp-long v0, v2, v0

    if-nez v0, :cond_5

    move-wide v0, v2

    .line 228
    goto :goto_0

    .line 230
    :cond_5
    long-to-double v0, v2

    mul-double/2addr v0, p1

    double-to-long v0, v0

    goto :goto_0

    .line 234
    :cond_6
    sget-object v2, Lcom/netflix/mediaclient/util/SubtitleUtils;->TICK_TIME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 235
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 236
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/util/StringUtils;->safeSplit(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 237
    array-length v3, v2

    const/4 v4, 0x3

    if-lt v3, v4, :cond_0

    .line 243
    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/SubtitleUtils;->safeParseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 244
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v3}, Lcom/netflix/mediaclient/util/SubtitleUtils;->safeParseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 245
    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/netflix/mediaclient/util/SubtitleUtils;->safeParseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 246
    const-wide/16 v6, 0xe10

    mul-long/2addr v0, v6

    const-wide/16 v6, 0x3c

    mul-long/2addr v4, v6

    add-long/2addr v0, v4

    add-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    goto/16 :goto_0
.end method

.method private static safeParseLong(Ljava/lang/String;)J
    .locals 5

    .prologue
    .line 258
    const-wide/16 v0, -0x1

    .line 260
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 264
    :goto_0
    return-wide v0

    .line 261
    :catch_0
    move-exception v2

    .line 262
    const-string/jumbo v3, "nf_subtitles_render"

    const-string/jumbo v4, "Parsing failed"

    invoke-static {v3, v4, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static setAlignmentToRegion(Landroid/widget/LinearLayout;Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;)V
    .locals 4

    .prologue
    .line 954
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 955
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "region or block is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 958
    :cond_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->getRegion()Lcom/netflix/mediaclient/service/player/subtitles/text/Region;

    move-result-object v2

    .line 959
    sget-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;->center:Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;

    .line 960
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->getHorizontalAlignment()Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 961
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Horizontal alignment from region"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->getHorizontalAlignment()Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;

    move-result-object v0

    move-object v1, v0

    .line 965
    :goto_0
    sget-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;->bottom:Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;

    .line 966
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->getVerticalAlignment()Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 967
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v3, "Vertical alignment from region"

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->getVerticalAlignment()Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;

    move-result-object v0

    move-object v2, v0

    .line 972
    :goto_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->getTextNodes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_3

    .line 973
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->getTextNodes()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;

    .line 974
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;->getStyle()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 976
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;->getStyle()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getHorizontalAlignment()Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 977
    const-string/jumbo v1, "nf_subtitles_render"

    const-string/jumbo v3, "Horizontal alignment overide from p!"

    invoke-static {v1, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;->getStyle()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getHorizontalAlignment()Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;

    move-result-object v1

    .line 980
    :cond_2
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;->getStyle()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getVerticalAlignment()Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 981
    const-string/jumbo v2, "nf_subtitles_render"

    const-string/jumbo v3, "Vertical alignment overide from p!"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;->getStyle()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getVerticalAlignment()Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;

    move-result-object v2

    .line 986
    :cond_3
    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/SubtitleUtils;->toGravity(Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 987
    return-void

    :cond_4
    move-object v2, v0

    goto :goto_1

    :cond_5
    move-object v1, v0

    goto :goto_0
.end method

.method public static setLetterSpacing(Landroid/widget/TextView;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 735
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    if-nez p0, :cond_1

    .line 747
    :cond_0
    :goto_0
    return-void

    .line 740
    :cond_1
    const/4 v0, 0x0

    .line 741
    if-eqz p1, :cond_2

    .line 742
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getFontFamily()Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    move-result-object v0

    .line 745
    :cond_2
    invoke-static {v0}, Lcom/netflix/mediaclient/util/SubtitleUtils;->getDefaultSpacing(Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;)F

    move-result v0

    .line 746
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLetterSpacing(F)V

    goto :goto_0
.end method

.method public static toGravity(Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;)I
    .locals 2

    .prologue
    .line 358
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 359
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "toGravity default CENTER"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const/16 v0, 0x11

    .line 378
    :goto_0
    return v0

    .line 361
    :cond_0
    if-nez p0, :cond_1

    .line 365
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;->getGravity()I

    move-result v0

    goto :goto_0

    .line 366
    :cond_1
    if-nez p1, :cond_2

    .line 370
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;->getGravity()I

    move-result v0

    goto :goto_0

    .line 373
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;->getGravity()I

    move-result v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;->getGravity()I

    move-result v1

    add-int/2addr v0, v1

    .line 374
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;->getGravity()I

    move-result v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;->getGravity()I

    move-result v1

    or-int/2addr v0, v1

    .line 378
    goto :goto_0
.end method

.method public static toTypeFace(Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;Z)Landroid/graphics/Typeface;
    .locals 2

    .prologue
    .line 277
    if-nez p0, :cond_1

    .line 278
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "No styles, use san serif typeface"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 297
    :cond_0
    :goto_0
    return-object v0

    .line 282
    :cond_1
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 284
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getFontFamily()Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 285
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getFontFamily()Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->isSansSerif(Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 286
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Apply sans serif"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getFontWeight()Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/SubtitleUtils;->getTypefaceByWeightForSansSerif(Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 294
    :cond_2
    :goto_1
    if-eqz p1, :cond_0

    .line 295
    invoke-static {p0}, Lcom/netflix/mediaclient/util/SubtitleUtils;->toTypeFaceStyle(Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    .line 289
    :cond_3
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Apply non sans serif"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getFontFamily()Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_1
.end method

.method public static toTypeFaceStyle(Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 329
    if-nez p0, :cond_1

    .line 350
    :cond_0
    :goto_0
    return v0

    .line 333
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getFontWeight()Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;->Bold:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getFontWeight()Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;->getValue()I

    move-result v2

    if-gt v1, v2, :cond_3

    .line 335
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getItalic()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 336
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "toTypeFaceStyle:: BOLD ITALIC"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const/4 v0, 0x3

    goto :goto_0

    .line 339
    :cond_2
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "toTypeFaceStyle:: BOLD"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const/4 v0, 0x1

    goto :goto_0

    .line 344
    :cond_3
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getItalic()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 345
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "toTypeFaceStyle:: ITALIC"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const/4 v0, 0x2

    goto :goto_0
.end method
