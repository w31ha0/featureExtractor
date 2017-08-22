.class public Lcom/mopub/nativeads/NativeRendererHelper;
.super Ljava/lang/Object;
.source "NativeRendererHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCtaButton(Landroid/widget/TextView;Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .param p0, "ctaTextView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "rootView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "contents"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 94
    invoke-static {p0, p2}, Lcom/mopub/nativeads/NativeRendererHelper;->addTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 96
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    new-instance v0, Lcom/mopub/nativeads/NativeRendererHelper$2;

    invoke-direct {v0, p1}, Lcom/mopub/nativeads/NativeRendererHelper$2;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public static addPrivacyInformationIcon(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "privacyInformationIconImageView"    # Landroid/widget/ImageView;
    .param p1, "privacyInformationImageUrl"    # Ljava/lang/String;
    .param p2, "privacyInformationClickthroughUrl"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 52
    if-nez p0, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    if-nez p2, :cond_2

    .line 56
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 63
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 67
    if-nez p1, :cond_3

    .line 68
    sget-object v1, Lcom/mopub/common/util/Drawables;->NATIVE_PRIVACY_INFORMATION_ICON:Lcom/mopub/common/util/Drawables;

    .line 69
    invoke-virtual {v1, v0}, Lcom/mopub/common/util/Drawables;->createDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 68
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    :goto_1
    new-instance v1, Lcom/mopub/nativeads/NativeRendererHelper$1;

    invoke-direct {v1, v0, p2}, Lcom/mopub/nativeads/NativeRendererHelper$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 71
    :cond_3
    invoke-static {p1, p0}, Lcom/mopub/nativeads/NativeImageHelper;->loadImageView(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_1
.end method

.method public static addTextView(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "contents"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted to add text ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") to null TextView."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 36
    :goto_0
    return-void

    .line 29
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    if-nez p1, :cond_1

    .line 32
    const-string v0, "Attempted to set TextView contents to null."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static updateExtras(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V
    .locals 9
    .param p0, "mainView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "extrasIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local p2, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v8, 0x0

    .line 113
    if-nez p0, :cond_1

    .line 114
    const-string v5, "Attempted to bind extras on a null main view."

    invoke-static {v5}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    .line 140
    :cond_0
    return-void

    .line 118
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 119
    .local v1, "key":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 120
    .local v3, "resourceId":I
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 121
    .local v4, "view":Landroid/view/View;
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 123
    .local v0, "content":Ljava/lang/Object;
    instance-of v5, v4, Landroid/widget/ImageView;

    if-eqz v5, :cond_3

    move-object v5, v4

    .line 125
    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 127
    .local v2, "object":Ljava/lang/Object;
    if-eqz v2, :cond_2

    instance-of v5, v2, Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 128
    check-cast v2, Ljava/lang/String;

    .end local v2    # "object":Ljava/lang/Object;
    check-cast v4, Landroid/widget/ImageView;

    .end local v4    # "view":Landroid/view/View;
    invoke-static {v2, v4}, Lcom/mopub/nativeads/NativeImageHelper;->loadImageView(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 130
    .restart local v4    # "view":Landroid/view/View;
    :cond_3
    instance-of v5, v4, Landroid/widget/TextView;

    if-eqz v5, :cond_4

    move-object v5, v4

    .line 132
    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    instance-of v5, v0, Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 134
    check-cast v4, Landroid/widget/TextView;

    .end local v4    # "view":Landroid/view/View;
    check-cast v0, Ljava/lang/String;

    .end local v0    # "content":Ljava/lang/Object;
    invoke-static {v4, v0}, Lcom/mopub/nativeads/NativeRendererHelper;->addTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0

    .line 137
    .restart local v0    # "content":Ljava/lang/Object;
    .restart local v4    # "view":Landroid/view/View;
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "View bound to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " should be an instance of TextView or ImageView."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
