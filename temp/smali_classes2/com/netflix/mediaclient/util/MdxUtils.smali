.class public final Lcom/netflix/mediaclient/util/MdxUtils;
.super Ljava/lang/Object;
.source "MdxUtils.java"


# static fields
.field private static final MDX_EOS_DELTA_IN_SECOND:I = 0xa

.field private static final TAG:Ljava/lang/String; = "MdxUtils"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method private static createMdxDisconnectDialog(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/util/MdxUtils$MdxTargetSelectionDialogInterface;)Landroid/support/v7/app/AlertDialog;
    .locals 11

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 323
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 324
    :cond_0
    const-string/jumbo v1, "MdxUtils"

    const-string/jumbo v2, "Activity is not valid or MdxFrag is null. Skipping MDX disconnect dialog"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :goto_0
    return-object v0

    .line 327
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 328
    const v2, 0x7f030098

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 330
    const v0, 0x7f100237

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 331
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManagerUtils;->getCurrentDeviceFriendlyName(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Ljava/lang/String;

    move-result-object v1

    .line 332
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    const v0, 0x7f100238

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 335
    const v1, 0x7f100239

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 337
    invoke-interface {p1}, Lcom/netflix/mediaclient/util/MdxUtils$MdxTargetSelectionDialogInterface;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v2

    .line 338
    invoke-interface {p1}, Lcom/netflix/mediaclient/util/MdxUtils$MdxTargetSelectionDialogInterface;->isPlayingRemotely()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    .line 339
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0901d2

    new-array v6, v10, [Ljava/lang/Object;

    const-string/jumbo v7, ""

    aput-object v7, v6, v9

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 340
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 343
    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->isPlayableEpisode()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 344
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0901c6

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    .line 345
    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getParentTitle()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getSeasonAbbrSeqLabel()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    const/4 v8, 0x2

    .line 346
    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getEpisodeNumber()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableTitle()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v8

    .line 345
    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 350
    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v1, v3

    .line 355
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0901c4

    new-instance v2, Lcom/netflix/mediaclient/util/MdxUtils$2;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/util/MdxUtils$2;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 358
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 379
    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 381
    invoke-virtual {v0, v10}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    goto/16 :goto_0

    .line 348
    :cond_2
    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableTitle()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 352
    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0901c5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 353
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    move-object v1, v2

    goto :goto_2
.end method

.method public static createMdxMenuDialog(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/util/MdxUtils$MdxTargetSelectionDialogInterface;)Landroid/support/v7/app/AlertDialog;
    .locals 2

    .prologue
    .line 217
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    :cond_0
    const-string/jumbo v0, "MdxUtils"

    const-string/jumbo v1, "Activity is not valid. Skipping MDX menu dialog"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 v0, 0x0

    .line 228
    :goto_0
    return-object v0

    .line 223
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/MdxUtils;->isTargetReadyToControl(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 224
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/util/MdxUtils;->createMdxDisconnectDialog(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/util/MdxUtils$MdxTargetSelectionDialogInterface;)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 226
    :cond_2
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/util/MdxUtils;->createMdxTargetSelectionDialog(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/util/MdxUtils$MdxTargetSelectionDialogInterface;)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    goto :goto_0
.end method

.method public static createMdxTargetSelectionDialog(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/util/MdxUtils$MdxTargetSelectionDialogInterface;)Landroid/support/v7/app/AlertDialog;
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 234
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    :cond_0
    const-string/jumbo v0, "MdxUtils"

    const-string/jumbo v1, "Activity is not valid or MdxFrag is null. Skipping MDX target selection dialog"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const/4 v0, 0x0

    .line 319
    :goto_0
    return-object v0

    .line 239
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    .line 241
    invoke-interface {p1}, Lcom/netflix/mediaclient/util/MdxUtils$MdxTargetSelectionDialogInterface;->getTargetSelection()Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;

    move-result-object v2

    .line 242
    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->getCurrentTarget()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->getDevicePositionByUUID(Ljava/lang/String;)I

    move-result v3

    .line 243
    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->setTarget(I)Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    .line 245
    new-instance v4, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;

    invoke-direct {v4, p0}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;-><init>(Landroid/app/Activity;)V

    .line 246
    invoke-virtual {v4, v6}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 247
    const v0, 0x7f090125

    invoke-virtual {v4, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;->setTitle(I)Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;

    .line 248
    invoke-virtual {v2, p0}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->getTargets(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;->setAdapterData(Ljava/util/List;)V

    .line 250
    const-string/jumbo v0, ""

    .line 251
    invoke-interface {p1}, Lcom/netflix/mediaclient/util/MdxUtils$MdxTargetSelectionDialogInterface;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-interface {p1}, Lcom/netflix/mediaclient/util/MdxUtils$MdxTargetSelectionDialogInterface;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v5

    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 252
    const v0, 0x7f0901d2

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v5, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {p1}, Lcom/netflix/mediaclient/util/MdxUtils$MdxTargetSelectionDialogInterface;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v7

    invoke-interface {v7}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableTitle()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 254
    :cond_2
    invoke-virtual {v4, v3, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;->setSelection(ILjava/lang/String;)V

    .line 256
    new-instance v0, Lcom/netflix/mediaclient/util/MdxUtils$1;

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/netflix/mediaclient/util/MdxUtils$1;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;Lcom/netflix/mediaclient/util/MdxUtils$MdxTargetSelectionDialogInterface;)V

    invoke-virtual {v4, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 319
    invoke-virtual {v4}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    goto :goto_0
.end method

.method public static getPlayableVideoId(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    instance-of v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    if-eqz v0, :cond_0

    .line 56
    const-string/jumbo v0, "MdxUtils"

    const-string/jumbo v1, "Episode, use show ID as video ID"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    check-cast p0, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    .line 58
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getShowId()Ljava/lang/String;

    move-result-object v0

    .line 64
    :goto_0
    return-object v0

    .line 60
    :cond_0
    const-string/jumbo v0, "MdxUtils"

    const-string/jumbo v1, "Movie, use movie ID as video ID"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static isAnyMdxTargetAvailable(Lcom/netflix/mediaclient/servicemgr/IMdx;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 402
    if-nez p0, :cond_0

    .line 403
    const-string/jumbo v1, "MdxUtils"

    const-string/jumbo v2, "MDX agent is null inside isAnyMdxTargetAvailable()...returning false!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :goto_0
    return v0

    .line 407
    :cond_0
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->isReady()Z

    move-result v2

    if-nez v2, :cond_1

    .line 408
    const-string/jumbo v1, "MdxUtils"

    const-string/jumbo v2, "MDX service is NOT ready"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 412
    :cond_1
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->getTargetList()[Landroid/util/Pair;

    move-result-object v2

    .line 413
    if-eqz v2, :cond_2

    array-length v2, v2

    if-ge v2, v1, :cond_3

    .line 414
    :cond_2
    const-string/jumbo v1, "MdxUtils"

    const-string/jumbo v2, "No MDX remote targets found"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move v0, v1

    .line 420
    goto :goto_0
.end method

.method public static isCurrentMdxTargetAvailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z
    .locals 2

    .prologue
    .line 138
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 139
    :cond_0
    const-string/jumbo v0, "MdxUtils"

    const-string/jumbo v1, "MDX service is NOT ready"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v0, 0x0

    .line 143
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->getCurrentTarget()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/MdxUtils;->isMdxTargetAvailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isMdxTargetAvailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 169
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    const-string/jumbo v1, "MdxUtils"

    const-string/jumbo v2, "uuid is empty"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :goto_0
    return v0

    .line 174
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IMdx;->isReady()Z

    move-result v2

    if-nez v2, :cond_2

    .line 175
    :cond_1
    const-string/jumbo v1, "MdxUtils"

    const-string/jumbo v2, "MDX service is NOT ready"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 179
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IMdx;->getTargetList()[Landroid/util/Pair;

    move-result-object v3

    .line 180
    if-eqz v3, :cond_3

    array-length v2, v3

    if-ge v2, v1, :cond_4

    .line 181
    :cond_3
    const-string/jumbo v1, "MdxUtils"

    const-string/jumbo v2, "No MDX remote targets found"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 185
    :cond_4
    array-length v4, v3

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_6

    aget-object v5, v3, v2

    .line 186
    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 187
    const-string/jumbo v0, "MdxUtils"

    const-string/jumbo v2, "Target found"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 188
    goto :goto_0

    .line 185
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 192
    :cond_6
    const-string/jumbo v1, "MdxUtils"

    const-string/jumbo v2, "Target NOT found!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isMediaSessionAvailable()Z
    .locals 2

    .prologue
    .line 392
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSameVideoPlaying(Lcom/netflix/mediaclient/servicemgr/IMdx;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 100
    if-nez p0, :cond_0

    .line 101
    const-string/jumbo v1, "MdxUtils"

    const-string/jumbo v2, "MDX agent is null - isSameVideoPlaying returning false"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :goto_0
    return v0

    .line 105
    :cond_0
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->getVideoDetail()Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    move-result-object v1

    if-nez v1, :cond_1

    .line 106
    const-string/jumbo v1, "MdxUtils"

    const-string/jumbo v2, "Video detail is null - isSameVideoPlaying returning false"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 110
    :cond_1
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->getVideoDetail()Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v1

    .line 125
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 126
    const-string/jumbo v0, "MdxUtils"

    const-string/jumbo v1, "Same video is playing, just sync..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/4 v0, 0x1

    goto :goto_0

    .line 129
    :cond_2
    const-string/jumbo v1, "MdxUtils"

    const-string/jumbo v2, "Video is not currently playing or different video, start play if play is not already pending..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isTargetReadyToControl(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z
    .locals 2

    .prologue
    .line 150
    const-string/jumbo v0, "MdxUtils"

    const-string/jumbo v1, "isTargetReadyToControl"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-static {p0}, Lcom/netflix/mediaclient/util/MdxUtils;->isCurrentMdxTargetAvailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    const-string/jumbo v0, "MdxUtils"

    const-string/jumbo v1, "isTargetReadyToControl check is launched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->isTargetLaunchingOrLaunched()Z

    move-result v0

    .line 155
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setProgressByBif(Landroid/widget/SeekBar;)I
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 72
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    .line 73
    div-int/lit8 v0, v1, 0xa

    .line 74
    mul-int/lit8 v0, v0, 0xa

    .line 77
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    .line 78
    add-int/lit8 v3, v0, 0xa

    if-lt v3, v2, :cond_0

    if-lez v2, :cond_0

    .line 79
    const-string/jumbo v0, "MdxUtils"

    const-string/jumbo v3, "seek to close to EOS, defaulting to 10 seconds before EOS."

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    add-int/lit8 v0, v2, -0xa

    .line 83
    :cond_0
    if-ne v0, v1, :cond_1

    .line 84
    const-string/jumbo v2, "MdxUtils"

    const-string/jumbo v3, "Right on target, no need to adjust seekBar position %d [sec]"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 89
    :goto_0
    return v0

    .line 86
    :cond_1
    const-string/jumbo v2, "MdxUtils"

    const-string/jumbo v3, "Progress : %d  [sec] vs. bif position %d [sec]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 87
    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method
