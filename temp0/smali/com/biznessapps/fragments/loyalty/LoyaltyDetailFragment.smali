.class public Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;
.super Lcom/biznessapps/fragments/CommonFragment;
.source "LoyaltyDetailFragment.java"


# instance fields
.field private areItemsApproved:Z

.field private cardContainer:Landroid/view/ViewGroup;

.field private isNextCardFound:Z

.field private item:Lcom/biznessapps/model/LoyaltyItem;

.field private layout:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/biznessapps/fragments/CommonFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->tryToRedeem()V

    return-void
.end method

.method static synthetic access$102(Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->isNextCardFound:Z

    return p1
.end method

.method static synthetic access$200(Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->showSuccessRedeemDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->setInitialStateForCoupon()V

    return-void
.end method

.method private initItem(Landroid/view/ViewGroup;Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;IIII)V
    .locals 8
    .param p1, "rowLayout"    # Landroid/view/ViewGroup;
    .param p2, "card"    # Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;
    .param p3, "itemContainerResId"    # I
    .param p4, "stampViewResid"    # I
    .param p5, "lockViewResId"    # I
    .param p6, "textViewResId"    # I

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    const v5, 0x3f99999a    # 1.2f

    .line 150
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 151
    .local v0, "itemContainer":Landroid/view/ViewGroup;
    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 152
    .local v2, "itemStampView":Landroid/widget/ImageView;
    invoke-virtual {p1, p5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 154
    .local v1, "itemLockView":Landroid/widget/ImageView;
    invoke-virtual {p1, p6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 155
    .local v3, "itemTextView":Landroid/widget/TextView;
    if-nez p2, :cond_0

    .line 156
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 157
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 207
    :goto_0
    return-void

    .line 159
    :cond_0
    invoke-virtual {p2}, Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;->isApproved()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 160
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 162
    :cond_1
    invoke-virtual {p2}, Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;->isLocked()Z

    move-result v4

    if-nez v4, :cond_2

    .line 163
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 165
    :cond_2
    invoke-virtual {p0}, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->getUiSettings()Lcom/biznessapps/api/AppCore$UiSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/AppCore$UiSettings;->getNavigationTextColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 166
    invoke-virtual {p0}, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->getUiSettings()Lcom/biznessapps/api/AppCore$UiSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/AppCore$UiSettings;->getNavigationTextShadowColor()I

    move-result v4

    invoke-virtual {v3, v5, v5, v5, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 167
    invoke-virtual {p2}, Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;->getCouponId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    new-instance v4, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment$2;

    invoke-direct {v4, p0, p2}, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment$2;-><init>(Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;)V

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private initRow(Landroid/view/ViewGroup;Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;)V
    .locals 8
    .param p1, "cardContainer"    # Landroid/view/ViewGroup;
    .param p2, "firstCard"    # Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;
    .param p3, "secondCard"    # Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/biznessapps/layout/R$layout;->loyalty_card_layout:I

    invoke-static {v0, v2}, Lcom/biznessapps/utils/ViewUtils;->loadLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 135
    .local v1, "rowLayout":Landroid/view/ViewGroup;
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 136
    new-instance v7, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 137
    .local v7, "view":Landroid/widget/ImageView;
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    sget v0, Lcom/biznessapps/layout/R$drawable;->horizontal_loyalty_line:I

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 139
    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 142
    sget v3, Lcom/biznessapps/layout/R$id;->loyalty_first_item_container:I

    sget v4, Lcom/biznessapps/layout/R$id;->loyalty_first_item_stamp:I

    sget v5, Lcom/biznessapps/layout/R$id;->loyalty_first_item_lock:I

    sget v6, Lcom/biznessapps/layout/R$id;->loyalty_first_item_text:I

    move-object v0, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->initItem(Landroid/view/ViewGroup;Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;IIII)V

    .line 144
    sget v3, Lcom/biznessapps/layout/R$id;->loyalty_second_item_container:I

    sget v4, Lcom/biznessapps/layout/R$id;->loyalty_second_item_stamp:I

    sget v5, Lcom/biznessapps/layout/R$id;->loyalty_second_item_lock:I

    sget v6, Lcom/biznessapps/layout/R$id;->loyalty_second_item_text:I

    move-object v0, p0

    move-object v2, p3

    invoke-direct/range {v0 .. v6}, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->initItem(Landroid/view/ViewGroup;Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;IIII)V

    .line 146
    return-void
.end method

.method private setInitialStateForCoupon()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 246
    iget-object v2, p0, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->item:Lcom/biznessapps/model/LoyaltyItem;

    invoke-virtual {v2}, Lcom/biznessapps/model/LoyaltyItem;->getCoupons()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 247
    iget-object v2, p0, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->item:Lcom/biznessapps/model/LoyaltyItem;

    invoke-virtual {v2}, Lcom/biznessapps/model/LoyaltyItem;->getCoupons()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;

    .line 249
    .local v0, "card":Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;
    iget-boolean v2, p0, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->isNextCardFound:Z

    invoke-virtual {v0, v2}, Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;->setLocked(Z)V

    .line 250
    invoke-virtual {v0, v3}, Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;->setApproved(Z)V

    .line 251
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->isNextCardFound:Z

    .line 252
    iput-boolean v3, p0, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->areItemsApproved:Z

    goto :goto_0

    .line 254
    .end local v0    # "card":Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->loadData()V

    .line 256
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private showRedeemDialog()V
    .locals 3

    .prologue
    .line 210
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 211
    .local v0, "alertBuilder":Landroid/app/AlertDialog$Builder;
    sget v1, Lcom/biznessapps/layout/R$string;->no:I

    new-instance v2, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment$3;

    invoke-direct {v2, p0}, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment$3;-><init>(Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 218
    sget v1, Lcom/biznessapps/layout/R$string;->yes:I

    new-instance v2, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment$4;

    invoke-direct {v2, p0}, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment$4;-><init>(Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 226
    sget v1, Lcom/biznessapps/layout/R$string;->redeem_coupon:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 227
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 228
    return-void
.end method

.method private showSuccessRedeemDialog()V
    .locals 5

    .prologue
    .line 231
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 232
    .local v0, "alertBuilder":Landroid/app/AlertDialog$Builder;
    sget v2, Lcom/biznessapps/layout/R$string;->ok:I

    new-instance v3, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment$5;

    invoke-direct {v3, p0}, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment$5;-><init>(Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 240
    sget v2, Lcom/biznessapps/layout/R$string;->loyalty_congrats_message:I

    invoke-virtual {p0, v2}, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, "successfulMessageFormat":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->item:Lcom/biznessapps/model/LoyaltyItem;

    invoke-virtual {v4}, Lcom/biznessapps/model/LoyaltyItem;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 242
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 243
    return-void
.end method

.method private synchronizeData(Lcom/biznessapps/model/LoyaltyItem;Lcom/biznessapps/model/LoyaltyItem;)V
    .locals 8
    .param p1, "storedItem"    # Lcom/biznessapps/model/LoyaltyItem;
    .param p2, "newItem"    # Lcom/biznessapps/model/LoyaltyItem;

    .prologue
    .line 265
    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 266
    invoke-virtual {p2}, Lcom/biznessapps/model/LoyaltyItem;->getCoupons()Ljava/util/List;

    move-result-object v3

    .line 267
    .local v3, "newCards":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;>;"
    invoke-virtual {p1}, Lcom/biznessapps/model/LoyaltyItem;->getCoupons()Ljava/util/List;

    move-result-object v5

    .line 268
    .local v5, "storedCards":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;>;"
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 269
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 270
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;

    .line 271
    .local v2, "newCard":Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;

    .line 274
    .local v4, "storedCard":Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;
    invoke-virtual {v2}, Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;->getCouponId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;->getCouponId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 275
    invoke-virtual {v4}, Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;->isApproved()Z

    move-result v6

    invoke-virtual {v2, v6}, Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;->setApproved(Z)V

    .line 276
    invoke-virtual {v4}, Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;->isLocked()Z

    move-result v6

    invoke-virtual {v2, v6}, Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;->setLocked(Z)V

    goto :goto_0

    .line 284
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "newCard":Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;
    .end local v3    # "newCards":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;>;"
    .end local v4    # "storedCard":Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;
    .end local v5    # "storedCards":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;>;"
    :cond_2
    return-void
.end method

.method private tryToRedeem()V
    .locals 3

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->areItemsApproved:Z

    if-eqz v0, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->showRedeemDialog()V

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/biznessapps/layout/R$string;->loyalty_warning_message:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method protected initViews()V
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->root:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->loyalty_grid_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->cardContainer:Landroid/view/ViewGroup;

    .line 65
    iget-object v0, p0, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->item:Lcom/biznessapps/model/LoyaltyItem;

    invoke-virtual {v0}, Lcom/biznessapps/model/LoyaltyItem;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->bitmapUrl:Ljava/lang/String;

    .line 66
    invoke-virtual {p0}, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->getImageManager()Lcom/biznessapps/utils/ImageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->bitmapUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/utils/ImageManager;->download(Ljava/lang/String;Landroid/view/View;)V

    .line 67
    return-void
.end method

.method protected loadData()V
    .locals 13

    .prologue
    const v12, 0x3f99999a    # 1.2f

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 70
    iget-object v7, p0, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->item:Lcom/biznessapps/model/LoyaltyItem;

    invoke-virtual {v7}, Lcom/biznessapps/model/LoyaltyItem;->getCoupons()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->item:Lcom/biznessapps/model/LoyaltyItem;

    invoke-virtual {v7}, Lcom/biznessapps/model/LoyaltyItem;->getCoupons()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8

    .line 71
    iget-object v7, p0, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->cardContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 73
    iget-object v7, p0, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->item:Lcom/biznessapps/model/LoyaltyItem;

    invoke-virtual {v7}, Lcom/biznessapps/model/LoyaltyItem;->getCoupons()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    .line 75
    .local v2, "couponsSize":I
    rem-int/lit8 v7, v2, 0x2

    if-nez v7, :cond_5

    div-int/lit8 v5, v2, 0x2

    .line 76
    .local v5, "rowSize":I
    :goto_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v5, :cond_6

    .line 78
    iget-object v7, p0, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->item:Lcom/biznessapps/model/LoyaltyItem;

    invoke-virtual {v7}, Lcom/biznessapps/model/LoyaltyItem;->getCoupons()Ljava/util/List;

    move-result-object v7

    mul-int/lit8 v8, v4, 0x2

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;

    .line 79
    .local v3, "firstCard":Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;
    invoke-virtual {v3}, Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;->isApproved()Z

    move-result v7

    if-nez v7, :cond_1

    iget-boolean v7, p0, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->isNextCardFound:Z

    if-nez v7, :cond_1

    .line 80
    invoke-virtual {v3}, Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;->isLocked()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 81
    invoke-virtual {v3, v10}, Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;->setLocked(Z)V

    .line 83
    :cond_0
    iput-boolean v11, p0, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->isNextCardFound:Z

    .line 85
    :cond_1
    const/4 v6, 0x0

    .line 86
    .local v6, "secondCard":Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;
    mul-int/lit8 v7, v4, 0x2

    add-int/lit8 v7, v7, 0x1

    if-ge v7, v2, :cond_2

    .line 87
    iget-object v7, p0, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->item:Lcom/biznessapps/model/LoyaltyItem;

    invoke-virtual {v7}, Lcom/biznessapps/model/LoyaltyItem;->getCoupons()Ljava/util/List;

    move-result-object v7

    mul-int/lit8 v8, v4, 0x2

    add-int/lit8 v8, v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "secondCard":Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;
    check-cast v6, Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;

    .line 89
    .restart local v6    # "secondCard":Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;
    :cond_2
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;->isApproved()Z

    move-result v7

    if-nez v7, :cond_4

    iget-boolean v7, p0, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->isNextCardFound:Z

    if-nez v7, :cond_4

    .line 90
    invoke-virtual {v6}, Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;->isLocked()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 91
    invoke-virtual {v6, v10}, Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;->setLocked(Z)V

    .line 93
    :cond_3
    iput-boolean v11, p0, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->isNextCardFound:Z

    .line 95
    :cond_4
    iget-object v7, p0, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->cardContainer:Landroid/view/ViewGroup;

    invoke-direct {p0, v7, v3, v6}, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->initRow(Landroid/view/ViewGroup;Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;)V

    .line 76
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 75
    .end local v3    # "firstCard":Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;
    .end local v4    # "i":I
    .end local v5    # "rowSize":I
    .end local v6    # "secondCard":Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;
    :cond_5
    div-int/lit8 v7, v2, 0x2

    add-int/lit8 v5, v7, 0x1

    goto :goto_0

    .line 98
    .restart local v4    # "i":I
    .restart local v5    # "rowSize":I
    :cond_6
    iget-boolean v7, p0, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->isNextCardFound:Z

    if-nez v7, :cond_7

    .line 100
    iget-object v7, p0, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->item:Lcom/biznessapps/model/LoyaltyItem;

    invoke-virtual {v7}, Lcom/biznessapps/model/LoyaltyItem;->getCoupons()Ljava/util/List;

    move-result-object v7

    add-int/lit8 v8, v2, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;

    .line 101
    .local v0, "card":Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;->isApproved()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 102
    iput-boolean v11, p0, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->areItemsApproved:Z

    .line 106
    .end local v0    # "card":Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;
    :cond_7
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 107
    .local v1, "cardNameTextView":Landroid/widget/TextView;
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    iget-object v7, p0, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->item:Lcom/biznessapps/model/LoyaltyItem;

    invoke-virtual {v7}, Lcom/biznessapps/model/LoyaltyItem;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    invoke-virtual {p0}, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->getUiSettings()Lcom/biznessapps/api/AppCore$UiSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/biznessapps/api/AppCore$UiSettings;->getNavigationTextColor()I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    invoke-virtual {p0}, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->getUiSettings()Lcom/biznessapps/api/AppCore$UiSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/biznessapps/api/AppCore$UiSettings;->getNavigationTextShadowColor()I

    move-result v7

    invoke-virtual {v1, v12, v12, v12, v7}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 111
    const/high16 v7, 0x41900000    # 18.0f

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 112
    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 113
    const/16 v7, 0x1e

    invoke-virtual {v1, v10, v7, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 114
    new-instance v7, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment$1;

    invoke-direct {v7, p0}, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment$1;-><init>(Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;)V

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v7, p0, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->cardContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 123
    .end local v1    # "cardNameTextView":Landroid/widget/TextView;
    .end local v2    # "couponsSize":I
    .end local v4    # "i":I
    .end local v5    # "rowSize":I
    :cond_8
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    sget v1, Lcom/biznessapps/layout/R$layout;->loyalty_detail:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->root:Landroid/view/ViewGroup;

    .line 41
    iget-object v1, p0, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->root:Landroid/view/ViewGroup;

    sget v2, Lcom/biznessapps/layout/R$id;->loyalty_scrollable_container:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->layout:Landroid/view/ViewGroup;

    .line 42
    invoke-virtual {p0}, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "LOYALTY_EXTRA"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/model/LoyaltyItem;

    iput-object v1, p0, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->item:Lcom/biznessapps/model/LoyaltyItem;

    .line 43
    iget-object v1, p0, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->item:Lcom/biznessapps/model/LoyaltyItem;

    if-eqz v1, :cond_1

    .line 44
    invoke-static {}, Lcom/biznessapps/storage/StorageKeeper;->instance()Lcom/biznessapps/storage/StorageKeeper;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->item:Lcom/biznessapps/model/LoyaltyItem;

    invoke-virtual {v2}, Lcom/biznessapps/model/LoyaltyItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/biznessapps/storage/StorageKeeper;->getLoyaltyItem(Ljava/lang/String;)Lcom/biznessapps/model/LoyaltyItem;

    move-result-object v0

    .line 45
    .local v0, "storedItem":Lcom/biznessapps/model/LoyaltyItem;
    if-eqz v0, :cond_0

    .line 46
    iget-object v1, p0, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->item:Lcom/biznessapps/model/LoyaltyItem;

    invoke-direct {p0, v0, v1}, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->synchronizeData(Lcom/biznessapps/model/LoyaltyItem;Lcom/biznessapps/model/LoyaltyItem;)V

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->initViews()V

    .line 49
    invoke-virtual {p0}, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->loadData()V

    .line 51
    .end local v0    # "storedItem":Lcom/biznessapps/model/LoyaltyItem;
    :cond_1
    iget-object v1, p0, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->root:Landroid/view/ViewGroup;

    return-object v1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 56
    invoke-super {p0}, Lcom/biznessapps/fragments/CommonFragment;->onPause()V

    .line 58
    iget-object v0, p0, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->item:Lcom/biznessapps/model/LoyaltyItem;

    if-eqz v0, :cond_0

    .line 59
    invoke-static {}, Lcom/biznessapps/storage/StorageKeeper;->instance()Lcom/biznessapps/storage/StorageKeeper;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->item:Lcom/biznessapps/model/LoyaltyItem;

    invoke-virtual {v0, v1}, Lcom/biznessapps/storage/StorageKeeper;->saveLoyaltyItem(Lcom/biznessapps/model/LoyaltyItem;)V

    .line 61
    :cond_0
    return-void
.end method
