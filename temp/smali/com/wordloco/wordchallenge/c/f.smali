.class public Lcom/wordloco/wordchallenge/c/f;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# instance fields
.field a:I

.field public b:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;I[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 22
    iput p2, p0, Lcom/wordloco/wordchallenge/c/f;->a:I

    .line 23
    iput-object p3, p0, Lcom/wordloco/wordchallenge/c/f;->b:[Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/wordloco/wordchallenge/c/f;->b:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 33
    .line 35
    if-nez p2, :cond_0

    .line 36
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 37
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 38
    const v1, 0x7f030012

    invoke-virtual {v0, v1, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 39
    const v0, 0x7f060075

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 41
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 42
    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "fonts/Poppins-Medium.ttf"

    .line 41
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 45
    iget-object v1, p0, Lcom/wordloco/wordchallenge/c/f;->b:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget v1, p0, Lcom/wordloco/wordchallenge/c/f;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    .line 48
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 49
    iget v1, p0, Lcom/wordloco/wordchallenge/c/f;->a:I

    int-to-float v1, v1

    .line 50
    iget v2, p0, Lcom/wordloco/wordchallenge/c/f;->a:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v2, v4

    double-to-float v2, v2

    sub-float/2addr v1, v2

    .line 49
    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 52
    invoke-virtual {p2, p1}, Landroid/view/View;->setId(I)V

    .line 56
    :cond_0
    return-object p2
.end method
