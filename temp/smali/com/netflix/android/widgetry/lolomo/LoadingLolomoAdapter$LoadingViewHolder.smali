.class Lcom/netflix/android/widgetry/lolomo/LoadingLolomoAdapter$LoadingViewHolder;
.super Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;
.source "LoadingLolomoAdapter.java"

# interfaces
.implements Lcom/netflix/android/widgetry/lolomo/PulseAnimator$AnimatedLoadingViewHolder;


# instance fields
.field final imageView:Landroid/widget/ImageView;

.field final pulseDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;


# direct methods
.method private constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Lcom/netflix/android/widgetry/lolomo/RowConfig;I)V
    .locals 2

    .prologue
    .line 152
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lcom/netflix/android/widgetry/lolomo/RowConfig;I)V

    .line 153
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/android/widgetry/lolomo/LoadingLolomoAdapter$LoadingViewHolder;->imageView:Landroid/widget/ImageView;

    .line 155
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 156
    invoke-virtual {p3}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->lightTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/netflix/android/widgetry/R$drawable;->avd_lolomo_row_light_placeholder:I

    .line 154
    :goto_0
    invoke-static {v1, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object v0, p0, Lcom/netflix/android/widgetry/lolomo/LoadingLolomoAdapter$LoadingViewHolder;->pulseDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 158
    return-void

    .line 156
    :cond_0
    sget v0, Lcom/netflix/android/widgetry/R$drawable;->avd_lolomo_row_dark_placeholder:I

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Lcom/netflix/android/widgetry/lolomo/RowConfig;ILcom/netflix/android/widgetry/lolomo/LoadingLolomoAdapter$1;)V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/android/widgetry/lolomo/LoadingLolomoAdapter$LoadingViewHolder;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lcom/netflix/android/widgetry/lolomo/RowConfig;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getImageView()Landroid/view/View;
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/lolomo/LoadingLolomoAdapter$LoadingViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/LoadingLolomoAdapter$LoadingViewHolder;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getPulseDrawable()Landroid/graphics/drawable/AnimatedVectorDrawable;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/LoadingLolomoAdapter$LoadingViewHolder;->pulseDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x1

    return v0
.end method
