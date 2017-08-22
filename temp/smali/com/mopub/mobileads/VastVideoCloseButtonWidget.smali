.class public Lcom/mopub/mobileads/VastVideoCloseButtonWidget;
.super Landroid/widget/RelativeLayout;
.source "VastVideoCloseButtonWidget.java"


# instance fields
.field private mCloseButtonDrawable:Lcom/mopub/mobileads/resource/CloseButtonDrawable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mEdgePadding:I

.field private final mImageLoader:Lcom/mopub/volley/toolbox/ImageLoader;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mImagePadding:I

.field private mImageView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mTextRightMargin:I

.field private mTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mWidgetHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-static {}, Lcom/mopub/common/util/Utils;->generateUniqueId()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->setId(I)V

    .line 41
    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1, p1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mEdgePadding:I

    .line 42
    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {v1, p1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mImagePadding:I

    .line 43
    const/high16 v1, 0x42600000    # 56.0f

    invoke-static {v1, p1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mWidgetHeight:I

    .line 44
    const/4 v1, 0x0

    invoke-static {v1, p1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mTextRightMargin:I

    .line 46
    new-instance v1, Lcom/mopub/mobileads/resource/CloseButtonDrawable;

    invoke-direct {v1}, Lcom/mopub/mobileads/resource/CloseButtonDrawable;-><init>()V

    iput-object v1, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mCloseButtonDrawable:Lcom/mopub/mobileads/resource/CloseButtonDrawable;

    .line 47
    invoke-static {p1}, Lcom/mopub/network/Networking;->getImageLoader(Landroid/content/Context;)Lcom/mopub/volley/toolbox/ImageLoader;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mImageLoader:Lcom/mopub/volley/toolbox/ImageLoader;

    .line 49
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->createImageView()V

    .line 50
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->createTextView()V

    .line 52
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    iget v2, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mWidgetHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 56
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 57
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/mopub/mobileads/VastVideoCloseButtonWidget;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoCloseButtonWidget;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private createImageView()V
    .locals 6

    .prologue
    .line 61
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mImageView:Landroid/widget/ImageView;

    .line 62
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mImageView:Landroid/widget/ImageView;

    invoke-static {}, Lcom/mopub/common/util/Utils;->generateUniqueId()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setId(I)V

    .line 64
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mWidgetHeight:I

    iget v2, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mWidgetHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 68
    .local v0, "iconLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 70
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mCloseButtonDrawable:Lcom/mopub/mobileads/resource/CloseButtonDrawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mImageView:Landroid/widget/ImageView;

    iget v2, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mImagePadding:I

    iget v3, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mImagePadding:I

    iget v4, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mEdgePadding:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mImagePadding:I

    iget v5, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mEdgePadding:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mImagePadding:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 72
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    return-void
.end method

.method private createTextView()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 76
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mTextView:Landroid/widget/TextView;

    .line 77
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 78
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 79
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mTextView:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 81
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mTextView:Landroid/widget/TextView;

    sget-object v2, Lcom/mopub/mobileads/resource/DrawableConstants$CloseButton;->TEXT_TYPEFACE:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 82
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mTextView:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 88
    .local v0, "textLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 89
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 91
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mEdgePadding:I

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 93
    iget v1, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mTextRightMargin:I

    invoke-virtual {v0, v3, v3, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 95
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    return-void
.end method


# virtual methods
.method getImageView()Landroid/widget/ImageView;
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method getTextView()Landroid/widget/TextView;
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method setImageView(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 140
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mImageView:Landroid/widget/ImageView;

    .line 141
    return-void
.end method

.method setOnTouchListenerToContent(Landroid/view/View$OnTouchListener;)V
    .locals 1
    .param p1, "onTouchListener"    # Landroid/view/View$OnTouchListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 125
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 126
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 127
    return-void
.end method

.method updateCloseButtonIcon(Ljava/lang/String;)V
    .locals 2
    .param p1, "imageUrl"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 105
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mImageLoader:Lcom/mopub/volley/toolbox/ImageLoader;

    new-instance v1, Lcom/mopub/mobileads/VastVideoCloseButtonWidget$1;

    invoke-direct {v1, p0, p1}, Lcom/mopub/mobileads/VastVideoCloseButtonWidget$1;-><init>(Lcom/mopub/mobileads/VastVideoCloseButtonWidget;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/mopub/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;)Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;

    .line 122
    return-void
.end method

.method updateCloseButtonText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 99
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    :cond_0
    return-void
.end method
