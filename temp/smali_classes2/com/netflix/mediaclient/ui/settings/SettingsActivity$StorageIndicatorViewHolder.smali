.class Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;
.super Landroid/widget/LinearLayout;
.source "SettingsActivity.java"


# instance fields
.field deviceName:Landroid/widget/TextView;

.field freeView:Landroid/view/View;

.field freeViewLegend:Landroid/widget/TextView;

.field isDefault:Landroid/widget/TextView;

.field netflixView:Landroid/view/View;

.field netflixViewLegend:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/settings/SettingsActivity;

.field usedView:Landroid/view/View;

.field usedViewLegend:Landroid/widget/TextView;

.field volume:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineStorageVolume;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/settings/SettingsActivity;Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineStorageVolume;)V
    .locals 2

    .prologue
    .line 171
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsActivity;

    .line 172
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 173
    iput-object p3, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->volume:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineStorageVolume;

    .line 175
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030103

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 176
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->findViews()V

    .line 178
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->update()V

    .line 179
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->setStorageName()V

    .line 181
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->setIsDefault()V

    .line 182
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->setupClicks()V

    .line 183
    return-void
.end method

.method private findViews()V
    .locals 1

    .prologue
    .line 213
    const v0, 0x7f100392

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->netflixViewLegend:Landroid/widget/TextView;

    .line 214
    const v0, 0x7f100391

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->usedViewLegend:Landroid/widget/TextView;

    .line 215
    const v0, 0x7f100393

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->freeViewLegend:Landroid/widget/TextView;

    .line 216
    const v0, 0x7f10038b

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->deviceName:Landroid/widget/TextView;

    .line 217
    const v0, 0x7f10038c

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->isDefault:Landroid/widget/TextView;

    .line 218
    const v0, 0x7f10038f

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->netflixView:Landroid/view/View;

    .line 219
    const v0, 0x7f10038e

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->usedView:Landroid/view/View;

    .line 220
    const v0, 0x7f100390

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->freeView:Landroid/view/View;

    .line 221
    return-void
.end method

.method private setIsDefault()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->isDefault:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->isDefault:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->volume:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineStorageVolume;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineStorageVolume;->isCurrentlySelected()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 197
    :cond_0
    return-void
.end method

.method private setStorageName()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->deviceName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 187
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsActivity;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->volume:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineStorageVolume;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineStorageVolume;->isRemovable()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f09020a

    :goto_0
    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 188
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->deviceName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->setTag(Ljava/lang/Object;)V

    .line 191
    :cond_0
    return-void

    .line 187
    :cond_1
    const v0, 0x7f0901f6

    goto :goto_0
.end method

.method private setupClicks()V
    .locals 1

    .prologue
    .line 200
    new-instance v0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder$1;-><init>(Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    return-void
.end method


# virtual methods
.method update()V
    .locals 8

    .prologue
    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->getExternalDownloadDirIfAvailable(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 227
    if-nez v0, :cond_0

    .line 228
    const-string/jumbo v0, "nf_settings"

    const-string/jumbo v1, "SettingsActivity:update fileDir is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :goto_0
    return-void

    .line 232
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 234
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->volume:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineStorageVolume;

    if-nez v0, :cond_1

    .line 235
    const-string/jumbo v0, "nf_settings"

    const-string/jumbo v1, "SettingsActivity:update volume is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 257
    :catch_0
    move-exception v0

    .line 258
    const-string/jumbo v1, "nf_settings"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 239
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->volume:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineStorageVolume;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineStorageVolume;->getTotalSpace()J

    move-result-wide v0

    .line 240
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->volume:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineStorageVolume;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineStorageVolume;->getFreeSpace()J

    move-result-wide v2

    .line 241
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->volume:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineStorageVolume;

    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineStorageVolume;->getNetflixUsedSpace()J

    move-result-wide v4

    .line 242
    sub-long/2addr v0, v2

    sub-long v6, v0, v4

    .line 244
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->netflixView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    long-to-float v1, v4

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 245
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->usedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    long-to-float v1, v6

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 246
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->freeView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    long-to-float v1, v2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 248
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsActivity;

    invoke-static {v1, v4, v5}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;->access$100(Lcom/netflix/mediaclient/ui/settings/SettingsActivity;J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;->access$002(Lcom/netflix/mediaclient/ui/settings/SettingsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 249
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsActivity;

    invoke-static {v0, v6, v7}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;->access$100(Lcom/netflix/mediaclient/ui/settings/SettingsActivity;J)Ljava/lang/String;

    move-result-object v0

    .line 250
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsActivity;

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;->access$100(Lcom/netflix/mediaclient/ui/settings/SettingsActivity;J)Ljava/lang/String;

    move-result-object v1

    .line 252
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->netflixViewLegend:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsActivity;

    const v4, 0x7f09008e

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsActivity;

    invoke-static {v7}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;->access$000(Lcom/netflix/mediaclient/ui/settings/SettingsActivity;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->usedViewLegend:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsActivity;

    const v4, 0x7f09008f

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->freeViewLegend:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsActivity;

    const v3, 0x7f09008d

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->forceLayout()V

    .line 256
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->setIsDefault()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
