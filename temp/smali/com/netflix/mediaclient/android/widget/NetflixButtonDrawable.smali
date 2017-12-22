.class Lcom/netflix/mediaclient/android/widget/NetflixButtonDrawable;
.super Landroid/graphics/drawable/RippleDrawable;
.source "NetflixButtonDrawable.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;)V
    .locals 3

    .prologue
    .line 19
    invoke-static {p1}, Lcom/netflix/mediaclient/android/widget/NetflixButtonDrawable;->color(Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-static {p1}, Lcom/netflix/mediaclient/android/widget/NetflixButtonDrawable;->content(Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p1}, Lcom/netflix/mediaclient/android/widget/NetflixButtonDrawable;->mask(Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 20
    return-void
.end method

.method private static color(Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;)Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;->rippleColor:I

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method private static content(Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 32
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 33
    iget v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;->strokeWidth:I

    if-lez v1, :cond_0

    .line 34
    iget v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;->strokeWidth:I

    iget-object v2, p0, Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;->strokeColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(ILandroid/content/res/ColorStateList;)V

    .line 36
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;->buttonColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 37
    iget v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;->cornerRadius:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 38
    return-object v0
.end method

.method private static mask(Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 23
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    .line 24
    iget v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;->cornerRadius:I

    int-to-float v1, v1

    .line 25
    const/16 v2, 0x8

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v3, 0x2

    aput v1, v2, v3

    const/4 v3, 0x3

    aput v1, v2, v3

    const/4 v3, 0x4

    aput v1, v2, v3

    const/4 v3, 0x5

    aput v1, v2, v3

    const/4 v3, 0x6

    aput v1, v2, v3

    const/4 v3, 0x7

    aput v1, v2, v3

    .line 26
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v1, v2, v4, v4}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 27
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 28
    return-object v0
.end method
