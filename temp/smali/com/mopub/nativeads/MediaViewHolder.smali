.class Lcom/mopub/nativeads/MediaViewHolder;
.super Ljava/lang/Object;
.source "MediaViewHolder.java"


# static fields
.field static final EMPTY_MEDIA_VIEW_HOLDER:Lcom/mopub/nativeads/MediaViewHolder;
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field callToActionView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field iconImageView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field mainView:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field mediaLayout:Lcom/mopub/nativeads/MediaLayout;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field privacyInformationIconImageView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field textView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field titleView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/mopub/nativeads/MediaViewHolder;

    invoke-direct {v0}, Lcom/mopub/nativeads/MediaViewHolder;-><init>()V

    sput-object v0, Lcom/mopub/nativeads/MediaViewHolder;->EMPTY_MEDIA_VIEW_HOLDER:Lcom/mopub/nativeads/MediaViewHolder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fromViewBinder(Landroid/view/View;Lcom/mopub/nativeads/MediaViewBinder;)Lcom/mopub/nativeads/MediaViewHolder;
    .locals 3
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "mediaViewBinder"    # Lcom/mopub/nativeads/MediaViewBinder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 30
    new-instance v1, Lcom/mopub/nativeads/MediaViewHolder;

    invoke-direct {v1}, Lcom/mopub/nativeads/MediaViewHolder;-><init>()V

    .line 31
    .local v1, "mediaViewHolder":Lcom/mopub/nativeads/MediaViewHolder;
    iput-object p0, v1, Lcom/mopub/nativeads/MediaViewHolder;->mainView:Landroid/view/View;

    .line 33
    :try_start_0
    iget v2, p1, Lcom/mopub/nativeads/MediaViewBinder;->titleId:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/mopub/nativeads/MediaViewHolder;->titleView:Landroid/widget/TextView;

    .line 34
    iget v2, p1, Lcom/mopub/nativeads/MediaViewBinder;->textId:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/mopub/nativeads/MediaViewHolder;->textView:Landroid/widget/TextView;

    .line 35
    iget v2, p1, Lcom/mopub/nativeads/MediaViewBinder;->callToActionId:I

    .line 36
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/mopub/nativeads/MediaViewHolder;->callToActionView:Landroid/widget/TextView;

    .line 37
    iget v2, p1, Lcom/mopub/nativeads/MediaViewBinder;->mediaLayoutId:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/mopub/nativeads/MediaLayout;

    iput-object v2, v1, Lcom/mopub/nativeads/MediaViewHolder;->mediaLayout:Lcom/mopub/nativeads/MediaLayout;

    .line 38
    iget v2, p1, Lcom/mopub/nativeads/MediaViewBinder;->iconImageId:I

    .line 39
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/mopub/nativeads/MediaViewHolder;->iconImageView:Landroid/widget/ImageView;

    .line 40
    iget v2, p1, Lcom/mopub/nativeads/MediaViewBinder;->privacyInformationIconImageId:I

    .line 41
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/mopub/nativeads/MediaViewHolder;->privacyInformationIconImageView:Landroid/widget/ImageView;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .end local v1    # "mediaViewHolder":Lcom/mopub/nativeads/MediaViewHolder;
    :goto_0
    return-object v1

    .line 43
    .restart local v1    # "mediaViewHolder":Lcom/mopub/nativeads/MediaViewHolder;
    :catch_0
    move-exception v0

    .line 44
    .local v0, "exception":Ljava/lang/ClassCastException;
    const-string v2, "Could not cast from id in MediaViewBinder to expected View type"

    invoke-static {v2, v0}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    sget-object v1, Lcom/mopub/nativeads/MediaViewHolder;->EMPTY_MEDIA_VIEW_HOLDER:Lcom/mopub/nativeads/MediaViewHolder;

    goto :goto_0
.end method
