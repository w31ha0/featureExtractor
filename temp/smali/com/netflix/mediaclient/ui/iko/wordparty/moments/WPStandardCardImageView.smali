.class public Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPStandardCardImageView;
.super Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;
.source "WPStandardCardImageView.java"


# instance fields
.field private cardPlusAntiAliasBorderRight:I

.field private cardPlusShadowPlusAntiAliasBorderBottom:I

.field private shadowPlusAntiAliasBorderTop:I

.field private showShadowOnly:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPStandardCardImageView;->showShadowOnly:Z

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPStandardCardImageView;->showShadowOnly:Z

    .line 30
    return-void
.end method


# virtual methods
.method protected init(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 36
    const v1, 0x7f0a0085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 38
    const v2, 0x7f0a0083

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 40
    const v3, 0x7f0a0084

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 42
    const/4 v3, 0x1

    .line 43
    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPStandardCardImageView;->cardPlusAntiAliasBorderRight:I

    .line 44
    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPStandardCardImageView;->cardPlusShadowPlusAntiAliasBorderBottom:I

    .line 45
    add-int v0, v2, v3

    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPStandardCardImageView;->shadowPlusAntiAliasBorderTop:I

    .line 46
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 74
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPStandardCardImageView;->showShadowOnly:Z

    if-eqz v0, :cond_0

    .line 76
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPStandardCardImageView;->shadowPlusAntiAliasBorderTop:I

    int-to-float v2, v0

    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPStandardCardImageView;->cardPlusAntiAliasBorderRight:I

    int-to-float v3, v0

    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPStandardCardImageView;->cardPlusShadowPlusAntiAliasBorderBottom:I

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 82
    :goto_0
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 83
    return-void

    .line 79
    :cond_0
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPStandardCardImageView;->cardPlusAntiAliasBorderRight:I

    int-to-float v3, v0

    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPStandardCardImageView;->cardPlusShadowPlusAntiAliasBorderBottom:I

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    goto :goto_0
.end method

.method public showShadowOnly(Z)V
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPStandardCardImageView;->showShadowOnly:Z

    if-eq v0, p1, :cond_0

    .line 56
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPStandardCardImageView;->showShadowOnly:Z

    .line 58
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPStandardCardImageView;->invalidate()V

    .line 60
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "WPStandardCardImageView{showShadowOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPStandardCardImageView;->showShadowOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", cardPlusAntiAliasBorderRight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPStandardCardImageView;->cardPlusAntiAliasBorderRight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", cardPlusShadowPlusAntiAliasBorderBottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPStandardCardImageView;->cardPlusShadowPlusAntiAliasBorderBottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", shadowPlusAntiAliasBorderTop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPStandardCardImageView;->shadowPlusAntiAliasBorderTop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 69
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    return-object v0
.end method
