.class public final Lb;
.super Landroid/webkit/WebView;


# instance fields
.field private a:Lcom/google/ads/AdActivity;

.field private b:Lcom/google/ads/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/ads/f;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lb;->b:Lcom/google/ads/f;

    invoke-virtual {p0, v2}, Lb;->setBackgroundColor(I)V

    invoke-static {p0}, Lcom/google/ads/util/AdUtil;->a(Landroid/webkit/WebView;)V

    invoke-virtual {p0}, Lb;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p0, v2}, Lb;->setScrollBarStyle(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lb;->a:Lcom/google/ads/AdActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb;->a:Lcom/google/ads/AdActivity;

    invoke-virtual {v0}, Lcom/google/ads/AdActivity;->finish()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/ads/AdActivity;)V
    .locals 0

    iput-object p1, p0, Lb;->a:Lcom/google/ads/AdActivity;

    return-void
.end method

.method public final b()Lcom/google/ads/AdActivity;
    .locals 1

    iget-object v0, p0, Lb;->a:Lcom/google/ads/AdActivity;

    return-object v0
.end method

.method protected final onMeasure(II)V
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p0}, Lb;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lb;->b:Lcom/google/ads/f;

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-virtual {p0}, Lb;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    iget-object v5, p0, Lb;->b:Lcom/google/ads/f;

    invoke-virtual {v5}, Lcom/google/ads/f;->a()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v4

    float-to-int v5, v5

    iget-object v6, p0, Lb;->b:Lcom/google/ads/f;

    invoke-virtual {v6}, Lcom/google/ads/f;->b()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v4

    float-to-int v6, v6

    if-eqz v0, :cond_2

    if-nez v2, :cond_3

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V

    goto :goto_0

    :cond_3
    int-to-float v0, v5

    const/high16 v2, 0x40c00000    # 6.0f

    mul-float/2addr v2, v4

    sub-float/2addr v0, v2

    int-to-float v2, v1

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_4

    if-le v6, v3, :cond_5

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not enough space to show ad! Wants: <"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ">, Has: <"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->e(Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lb;->setVisibility(I)V

    invoke-virtual {p0, v7, v7}, Lb;->setMeasuredDimension(II)V

    goto/16 :goto_0

    :cond_5
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V

    goto/16 :goto_0
.end method
