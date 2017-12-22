.class public Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;
.super Ljava/lang/Object;
.source "NetflixButtonAttributes.java"


# instance fields
.field final animationDuration:I

.field final buttonColor:Landroid/content/res/ColorStateList;

.field final cornerRadius:I

.field final iconColor:Landroid/content/res/ColorStateList;

.field final iconSize:I

.field final initialWidth:I

.field final rippleColor:I

.field final strokeColor:Landroid/content/res/ColorStateList;

.field final strokeWidth:I

.field final text:Ljava/lang/CharSequence;

.field final textColor:Landroid/content/res/ColorStateList;


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;->animationDuration:I

    .line 74
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 75
    const/16 v1, 0xa

    new-array v1, v1, [I

    sget v2, Lcom/netflix/android/widgetry/R$attr;->nb_strokeColor:I

    aput v2, v1, v3

    sget v2, Lcom/netflix/android/widgetry/R$attr;->nb_buttonColor:I

    aput v2, v1, v4

    sget v2, Lcom/netflix/android/widgetry/R$attr;->nb_textColor:I

    aput v2, v1, v5

    sget v2, Lcom/netflix/android/widgetry/R$attr;->nb_rippleColor:I

    aput v2, v1, v6

    sget v2, Lcom/netflix/android/widgetry/R$attr;->nb_cornerRadius:I

    aput v2, v1, v7

    const/4 v2, 0x5

    sget v3, Lcom/netflix/android/widgetry/R$attr;->nb_strokeWidth:I

    aput v3, v1, v2

    const/4 v2, 0x6

    sget v3, Lcom/netflix/android/widgetry/R$attr;->nb_iconSize:I

    aput v3, v1, v2

    const/4 v2, 0x7

    sget v3, Lcom/netflix/android/widgetry/R$attr;->nb_iconColor:I

    aput v3, v1, v2

    const/16 v2, 0x8

    sget v3, Lcom/netflix/android/widgetry/R$attr;->nb_text:I

    aput v3, v1, v2

    const/16 v2, 0x9

    sget v3, Lcom/netflix/android/widgetry/R$attr;->nb_initialWidth:I

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ContextThemeWrapper;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 89
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;->getColorState(Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;->strokeColor:Landroid/content/res/ColorStateList;

    .line 90
    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;->getColorState(Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;->buttonColor:Landroid/content/res/ColorStateList;

    .line 91
    const/4 v0, 0x2

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;->getColorState(Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;->textColor:Landroid/content/res/ColorStateList;

    .line 92
    const/4 v0, 0x3

    iget-object v2, p0, Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;->buttonColor:Landroid/content/res/ColorStateList;

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const v5, 0x10100a7

    aput v5, v3, v4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;->rippleColor:I

    .line 93
    const/4 v0, 0x4

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;->cornerRadius:I

    .line 94
    const/4 v0, 0x5

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;->strokeWidth:I

    .line 95
    const/4 v0, 0x6

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;->iconSize:I

    .line 96
    const/4 v0, 0x7

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;->getColorState(Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;->iconColor:Landroid/content/res/ColorStateList;

    .line 97
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;->text:Ljava/lang/CharSequence;

    .line 98
    const/16 v0, 0x9

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;->initialWidth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    if-eqz v1, :cond_0

    .line 101
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 104
    :cond_0
    return-void

    .line 100
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    .line 101
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    throw v0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    sget-object v0, Lcom/netflix/android/widgetry/R$styleable;->NetflixButton:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10e0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;->animationDuration:I

    .line 52
    sget v1, Lcom/netflix/android/widgetry/R$styleable;->NetflixButton_nb_strokeColor:I

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;->getColorState(Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;->strokeColor:Landroid/content/res/ColorStateList;

    .line 53
    sget v1, Lcom/netflix/android/widgetry/R$styleable;->NetflixButton_nb_buttonColor:I

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;->getColorState(Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;->buttonColor:Landroid/content/res/ColorStateList;

    .line 54
    sget v1, Lcom/netflix/android/widgetry/R$styleable;->NetflixButton_nb_textColor:I

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;->getColorState(Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;->textColor:Landroid/content/res/ColorStateList;

    .line 55
    sget v1, Lcom/netflix/android/widgetry/R$styleable;->NetflixButton_nb_iconColor:I

    iget-object v2, p0, Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;->textColor:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;->getColorState(Landroid/content/res/TypedArray;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;->iconColor:Landroid/content/res/ColorStateList;

    .line 56
    sget v1, Lcom/netflix/android/widgetry/R$styleable;->NetflixButton_nb_rippleColor:I

    iget-object v2, p0, Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;->buttonColor:Landroid/content/res/ColorStateList;

    const/4 v3, 0x1

    new-array v3, v3, [I

    const v4, 0x10100a7

    aput v4, v3, v5

    invoke-virtual {v2, v3, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;->rippleColor:I

    .line 57
    sget v1, Lcom/netflix/android/widgetry/R$styleable;->NetflixButton_nb_cornerRadius:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;->cornerRadius:I

    .line 58
    sget v1, Lcom/netflix/android/widgetry/R$styleable;->NetflixButton_nb_strokeWidth:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;->strokeWidth:I

    .line 59
    sget v1, Lcom/netflix/android/widgetry/R$styleable;->NetflixButton_nb_iconSize:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;->iconSize:I

    .line 60
    sget v1, Lcom/netflix/android/widgetry/R$styleable;->NetflixButton_nb_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;->text:Ljava/lang/CharSequence;

    .line 61
    sget v1, Lcom/netflix/android/widgetry/R$styleable;->NetflixButton_nb_initialWidth:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;->initialWidth:I

    .line 62
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 63
    return-void
.end method

.method private static getColorState(Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;->getColorState(Landroid/content/res/TypedArray;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method private static getColorState(Landroid/content/res/TypedArray;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 114
    if-nez v0, :cond_0

    .line 117
    :goto_0
    return-object p2

    :cond_0
    move-object p2, v0

    goto :goto_0
.end method
