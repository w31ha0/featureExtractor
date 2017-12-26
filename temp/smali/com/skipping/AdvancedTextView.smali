.class public Lcom/skipping/AdvancedTextView;
.super Landroid/widget/TextView;
.source "AdvancedTextView.java"


# instance fields
.field private mMaxValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 12
    const/16 v0, 0x64

    iput v0, p0, Lcom/skipping/AdvancedTextView;->mMaxValue:I

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    const/16 v0, 0x64

    iput v0, p0, Lcom/skipping/AdvancedTextView;->mMaxValue:I

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    const/16 v0, 0x64

    iput v0, p0, Lcom/skipping/AdvancedTextView;->mMaxValue:I

    .line 17
    return-void
.end method


# virtual methods
.method public setMaxValue(I)V
    .locals 0
    .param p1, "maxValue"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/skipping/AdvancedTextView;->mMaxValue:I

    .line 30
    return-void
.end method

.method public declared-synchronized setValue(I)V
    .locals 13
    .param p1, "value"    # I

    .prologue
    const/16 v12, 0xa

    .line 41
    monitor-enter p0

    :try_start_0
    rem-int/lit8 v6, p1, 0x3c

    .line 42
    .local v6, "seconds":I
    div-int/lit8 v3, p1, 0x3c

    .line 43
    .local v3, "minutes":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    if-ge v3, v12, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "0"

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_0
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-ge v6, v12, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "0"

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_1
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 46
    .local v8, "value1":Ljava/lang/String;
    iget v9, p0, Lcom/skipping/AdvancedTextView;->mMaxValue:I

    rem-int/lit8 v7, v9, 0x3c

    .line 47
    .local v7, "seconds1":I
    iget v9, p0, Lcom/skipping/AdvancedTextView;->mMaxValue:I

    div-int/lit8 v4, v9, 0x3c

    .line 48
    .local v4, "minutes1":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    if-ge v4, v12, :cond_2

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "0"

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_2
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-ge v7, v12, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "0"

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_3
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "GoulValue":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    mul-int/lit8 v10, p1, 0x64

    iget v11, p0, Lcom/skipping/AdvancedTextView;->mMaxValue:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "%)    "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/skipping/AdvancedTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f050061

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "   "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/skipping/AdvancedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {p0}, Lcom/skipping/AdvancedTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 59
    .local v1, "background":Landroid/graphics/drawable/LayerDrawable;
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/ClipDrawable;

    .line 62
    .local v2, "barValue":Landroid/graphics/drawable/ClipDrawable;
    mul-int/lit16 v9, p1, 0x2710

    iget v10, p0, Lcom/skipping/AdvancedTextView;->mMaxValue:I

    div-int v5, v9, v10

    .line 63
    .local v5, "newClipLevel":I
    invoke-virtual {v2, v5}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    .line 66
    invoke-virtual {p0}, Lcom/skipping/AdvancedTextView;->drawableStateChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit p0

    return-void

    .line 43
    .end local v0    # "GoulValue":Ljava/lang/String;
    .end local v1    # "background":Landroid/graphics/drawable/LayerDrawable;
    .end local v2    # "barValue":Landroid/graphics/drawable/ClipDrawable;
    .end local v4    # "minutes1":I
    .end local v5    # "newClipLevel":I
    .end local v7    # "seconds1":I
    .end local v8    # "value1":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto/16 :goto_0

    :cond_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto/16 :goto_1

    .line 48
    .restart local v4    # "minutes1":I
    .restart local v7    # "seconds1":I
    .restart local v8    # "value1":Ljava/lang/String;
    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto/16 :goto_2

    :cond_3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    goto :goto_3

    .line 41
    .end local v3    # "minutes":I
    .end local v4    # "minutes1":I
    .end local v6    # "seconds":I
    .end local v7    # "seconds1":I
    .end local v8    # "value1":Ljava/lang/String;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9
.end method
