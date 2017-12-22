.class public Lcom/netflix/mediaclient/android/widget/ErrorWrapper;
.super Ljava/lang/Object;
.source "ErrorWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ErrorWrapper"


# instance fields
.field private callback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

.field private final errorGroup:Landroid/view/View;

.field private final errorMsg:Landroid/widget/TextView;

.field private final retryBtn:Lcom/netflix/mediaclient/android/widget/NetflixTextButton;

.field private final retryClickListener:Landroid/view/View$OnClickListener;

.field private showRetry:Z

.field private final viewMyDownloads:Lcom/netflix/mediaclient/android/widget/NetflixTextButton;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;)V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->showRetry:Z

    .line 162
    new-instance v0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/android/widget/ErrorWrapper$2;-><init>(Lcom/netflix/mediaclient/android/widget/ErrorWrapper;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->retryClickListener:Landroid/view/View$OnClickListener;

    .line 40
    iput-object p2, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->callback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    .line 42
    const v0, 0x7f1001d2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->errorGroup:Landroid/view/View;

    .line 49
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->errorGroup:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    const v0, 0x7f1001d4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->errorMsg:Landroid/widget/TextView;

    .line 51
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->errorGroup:Landroid/view/View;

    const v1, 0x7f1001d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->retryBtn:Lcom/netflix/mediaclient/android/widget/NetflixTextButton;

    .line 52
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->retryBtn:Lcom/netflix/mediaclient/android/widget/NetflixTextButton;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->retryClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->errorGroup:Landroid/view/View;

    const v1, 0x7f1001d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->viewMyDownloads:Lcom/netflix/mediaclient/android/widget/NetflixTextButton;

    .line 55
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->viewMyDownloads:Lcom/netflix/mediaclient/android/widget/NetflixTextButton;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->viewMyDownloads:Lcom/netflix/mediaclient/android/widget/NetflixTextButton;

    new-instance v1, Lcom/netflix/mediaclient/android/widget/ErrorWrapper$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/android/widget/ErrorWrapper$1;-><init>(Lcom/netflix/mediaclient/android/widget/ErrorWrapper;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/AndroidUtils;->getContextAs(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 68
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->configureViewsForKidsExperience(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 72
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->setRetryVisibility()V

    .line 74
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->errorGroup:Landroid/view/View;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->setBackgroundIfApplicable(Landroid/view/View;)V

    .line 75
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->errorMsg:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->setTextColorIfApplicable(Landroid/widget/TextView;)V

    .line 76
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->retryBtn:Lcom/netflix/mediaclient/android/widget/NetflixTextButton;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->setTextColorIfApplicable(Landroid/widget/TextView;)V

    .line 77
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->viewMyDownloads:Lcom/netflix/mediaclient/android/widget/NetflixTextButton;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->setTextColorIfApplicable(Landroid/widget/TextView;)V

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/android/widget/ErrorWrapper;)Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->callback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    return-object v0
.end method

.method private configureViewsForKidsExperience(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 10

    .prologue
    const v9, 0x7f0a016c

    const v8, 0x7f0a0040

    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 81
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->errorMsg:Landroid/widget/TextView;

    const v2, 0x7f0f0050

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->errorMsg:Landroid/widget/TextView;

    const v2, 0x7f0a0046

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->setTextViewSizeByRes(Landroid/widget/TextView;I)V

    .line 85
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->errorMsg:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setTextViewToBold(Landroid/widget/TextView;)V

    .line 88
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->retryBtn:Lcom/netflix/mediaclient/android/widget/NetflixTextButton;

    const v2, 0x7f0b0111

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->applyFrom(I)V

    .line 90
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->retryBtn:Lcom/netflix/mediaclient/android/widget/NetflixTextButton;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 91
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->retryBtn:Lcom/netflix/mediaclient/android/widget/NetflixTextButton;

    invoke-virtual {v1, v5}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->setAllCaps(Z)V

    .line 92
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->retryBtn:Lcom/netflix/mediaclient/android/widget/NetflixTextButton;

    invoke-static {v1, v8}, Lcom/netflix/mediaclient/util/ViewUtils;->setTextViewSizeByRes(Landroid/widget/TextView;I)V

    .line 94
    const v1, 0x7f02011a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 95
    const/16 v2, 0x20

    invoke-static {p1, v2}, Lcom/netflix/mediaclient/util/AndroidUtils;->dipToPixels(Landroid/content/Context;I)I

    move-result v2

    .line 97
    invoke-static {p1, v7}, Lcom/netflix/mediaclient/util/AndroidUtils;->dipToPixels(Landroid/content/Context;I)I

    move-result v3

    .line 98
    add-int v4, v2, v3

    invoke-virtual {v1, v3, v5, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 99
    iget-object v2, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->retryBtn:Lcom/netflix/mediaclient/android/widget/NetflixTextButton;

    invoke-virtual {v2, v6, v6, v1, v6}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 100
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->retryBtn:Lcom/netflix/mediaclient/android/widget/NetflixTextButton;

    invoke-static {p1, v7}, Lcom/netflix/mediaclient/util/AndroidUtils;->dipToPixels(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->setCompoundDrawablePadding(I)V

    .line 103
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->viewMyDownloads:Lcom/netflix/mediaclient/android/widget/NetflixTextButton;

    const v2, 0x7f0b0111

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->applyFrom(I)V

    .line 105
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->viewMyDownloads:Lcom/netflix/mediaclient/android/widget/NetflixTextButton;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 106
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->viewMyDownloads:Lcom/netflix/mediaclient/android/widget/NetflixTextButton;

    invoke-virtual {v0, v5}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->setAllCaps(Z)V

    .line 108
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->viewMyDownloads:Lcom/netflix/mediaclient/android/widget/NetflixTextButton;

    const v1, 0x7f0901e4

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->setText(I)V

    .line 109
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->viewMyDownloads:Lcom/netflix/mediaclient/android/widget/NetflixTextButton;

    invoke-static {v0, v8}, Lcom/netflix/mediaclient/util/ViewUtils;->setTextViewSizeByRes(Landroid/widget/TextView;I)V

    .line 112
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->errorGroup:Landroid/view/View;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 113
    return-void
.end method

.method private setRetryVisibility()V
    .locals 2

    .prologue
    .line 158
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->retryBtn:Lcom/netflix/mediaclient/android/widget/NetflixTextButton;

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->callback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->showRetry:Z

    if-nez v0, :cond_1

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->setVisibility(I)V

    .line 160
    return-void

    .line 158
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getErrorMessageTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->errorMsg:Landroid/widget/TextView;

    return-object v0
.end method

.method public hide(Z)V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->errorGroup:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->hideView(Landroid/view/View;Z)V

    .line 117
    return-void
.end method

.method public showErrorView(IZZ)V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->errorMsg:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 130
    iput-boolean p2, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->showRetry:Z

    .line 131
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->errorGroup:Landroid/view/View;

    invoke-static {v0, p3}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->showView(Landroid/view/View;Z)V

    .line 132
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->setRetryVisibility()V

    .line 133
    return-void
.end method

.method public showErrorView(Ljava/lang/CharSequence;ILcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;)V
    .locals 2

    .prologue
    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->showRetry:Z

    .line 150
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->errorMsg:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->retryBtn:Lcom/netflix/mediaclient/android/widget/NetflixTextButton;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->setText(I)V

    .line 152
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->errorGroup:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->showView(Landroid/view/View;Z)V

    .line 153
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->setRetryVisibility()V

    .line 154
    iput-object p3, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->callback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    .line 155
    return-void
.end method

.method public showErrorView(Z)V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->errorGroup:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->showView(Landroid/view/View;Z)V

    .line 125
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->setRetryVisibility()V

    .line 126
    return-void
.end method

.method public showViewMyDownloadsButton()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->viewMyDownloads:Lcom/netflix/mediaclient/android/widget/NetflixTextButton;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->viewMyDownloads:Lcom/netflix/mediaclient/android/widget/NetflixTextButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->setVisibility(I)V

    .line 139
    :cond_0
    return-void
.end method
