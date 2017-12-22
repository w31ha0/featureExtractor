.class public Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "OfflineBaseAdapter.java"


# instance fields
.field public boxShot:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

.field public checkmark:Landroid/support/v7/widget/AppCompatCheckBox;

.field private checkmarkClickListener:Landroid/view/View$OnClickListener;

.field private clickListener:Landroid/view/View$OnClickListener;

.field public downloadButton:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

.field public downloadStatus:Landroid/widget/TextView;

.field public info:Landroid/widget/TextView;

.field public itemContent:Landroid/view/View;

.field public itemHeader:Landroid/view/View;

.field private longClickListener:Landroid/view/View$OnLongClickListener;

.field public playIcon:Landroid/view/View;

.field public profileAvatar:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

.field public profileName:Landroid/widget/TextView;

.field public progress:Landroid/widget/ProgressBar;

.field public showIndicator:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

.field public title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 306
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    .line 307
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 265
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData$1;-><init>(Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->clickListener:Landroid/view/View$OnClickListener;

    .line 277
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData$2;-><init>(Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->checkmarkClickListener:Landroid/view/View$OnClickListener;

    .line 289
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData$3;-><init>(Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->longClickListener:Landroid/view/View$OnLongClickListener;

    .line 308
    const v0, 0x7f100285

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->itemHeader:Landroid/view/View;

    .line 309
    const v0, 0x7f100288

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->itemContent:Landroid/view/View;

    .line 310
    const v0, 0x7f100289

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->boxShot:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    .line 311
    const v0, 0x7f100075

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->title:Landroid/widget/TextView;

    .line 312
    const v0, 0x7f10028c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->info:Landroid/widget/TextView;

    .line 313
    const v0, 0x7f100287

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->profileName:Landroid/widget/TextView;

    .line 314
    const v0, 0x7f100286

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->profileAvatar:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    .line 315
    const v0, 0x7f10028f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->showIndicator:Landroid/widget/ImageView;

    .line 316
    const v0, 0x7f10028d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->downloadStatus:Landroid/widget/TextView;

    .line 317
    const v0, 0x7f10028a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->playIcon:Landroid/view/View;

    .line 318
    const v0, 0x7f100290

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->downloadButton:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    .line 319
    const v0, 0x7f10028b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->progress:Landroid/widget/ProgressBar;

    .line 320
    const v0, 0x7f100291

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatCheckBox;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->checkmark:Landroid/support/v7/widget/AppCompatCheckBox;

    .line 322
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->checkmark:Landroid/support/v7/widget/AppCompatCheckBox;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0087

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatCheckBox;->setSupportButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 329
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->itemContent:Landroid/view/View;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->itemContent:Landroid/view/View;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->longClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 331
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->checkmark:Landroid/support/v7/widget/AppCompatCheckBox;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->checkmarkClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->boxShot:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 333
    return-void

    .line 324
    :cond_1
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->isThemed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->checkmark:Landroid/support/v7/widget/AppCompatCheckBox;

    invoke-static {}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->getTheme()Lcom/netflix/mediaclient/ui/user_theme/Theme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/user_theme/Theme;->getSecondaryTextColor()I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatCheckBox;->setSupportButtonTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method
