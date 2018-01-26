.class public Lcom/biznessapps/fragments/qr/QrScannerHelpFragment;
.super Lcom/biznessapps/fragments/CommonListFragment;
.source "QrScannerHelpFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/fragments/CommonListFragment",
        "<",
        "Lcom/biznessapps/model/CommonListEntity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/biznessapps/fragments/CommonListFragment;-><init>()V

    return-void
.end method

.method private plugListView(Landroid/app/Activity;)V
    .locals 3
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 42
    iget-object v1, p0, Lcom/biznessapps/fragments/qr/QrScannerHelpFragment;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    new-instance v0, Lcom/biznessapps/layout/adapters/QRScannerHelpAdapter;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/fragments/qr/QrScannerHelpFragment;->items:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/biznessapps/layout/adapters/QRScannerHelpAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 44
    .local v0, "ex":Lcom/biznessapps/layout/adapters/QRScannerHelpAdapter;
    iget-object v1, p0, Lcom/biznessapps/fragments/qr/QrScannerHelpFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    invoke-virtual {v1, v0}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 46
    .end local v0    # "ex":Lcom/biznessapps/layout/adapters/QRScannerHelpAdapter;
    :cond_0
    return-void
.end method


# virtual methods
.method protected canUseCachedData()Z
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x1

    return v0
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 7
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/biznessapps/fragments/qr/QrScannerHelpFragment;->getUiSettings()Lcom/biznessapps/api/AppCore$UiSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/AppCore$UiSettings;->getOddRowColor()I

    move-result v2

    .line 22
    .local v2, "oddRowColor":I
    invoke-virtual {p0}, Lcom/biznessapps/fragments/qr/QrScannerHelpFragment;->getUiSettings()Lcom/biznessapps/api/AppCore$UiSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/AppCore$UiSettings;->getOddRowTextColor()I

    move-result v3

    .line 23
    .local v3, "oddRowTextColor":I
    invoke-virtual {p0}, Lcom/biznessapps/fragments/qr/QrScannerHelpFragment;->getUiSettings()Lcom/biznessapps/api/AppCore$UiSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/AppCore$UiSettings;->getEvenRowColor()I

    move-result v0

    .line 24
    .local v0, "evenRowColor":I
    invoke-virtual {p0}, Lcom/biznessapps/fragments/qr/QrScannerHelpFragment;->getUiSettings()Lcom/biznessapps/api/AppCore$UiSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/AppCore$UiSettings;->getEvenRowTextColor()I

    move-result v1

    .line 25
    .local v1, "evenRowTextColor":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/biznessapps/fragments/qr/QrScannerHelpFragment;->items:Ljava/util/List;

    .line 26
    iget-object v4, p0, Lcom/biznessapps/fragments/qr/QrScannerHelpFragment;->items:Ljava/util/List;

    new-instance v5, Lcom/biznessapps/model/CommonListEntity;

    sget v6, Lcom/biznessapps/layout/R$string;->find_qr_code_for_app:I

    invoke-virtual {p0, v6}, Lcom/biznessapps/fragments/qr/QrScannerHelpFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v2, v3, v6}, Lcom/biznessapps/model/CommonListEntity;-><init>(IILjava/lang/String;)V

    iget-object v6, p0, Lcom/biznessapps/fragments/qr/QrScannerHelpFragment;->items:Ljava/util/List;

    invoke-virtual {p0, v5, v6}, Lcom/biznessapps/fragments/qr/QrScannerHelpFragment;->getWrappedItem(Lcom/biznessapps/model/CommonListEntity;Ljava/util/List;)Lcom/biznessapps/model/CommonListEntity;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object v4, p0, Lcom/biznessapps/fragments/qr/QrScannerHelpFragment;->items:Ljava/util/List;

    new-instance v5, Lcom/biznessapps/model/CommonListEntity;

    sget v6, Lcom/biznessapps/layout/R$string;->have_good_lighting:I

    invoke-virtual {p0, v6}, Lcom/biznessapps/fragments/qr/QrScannerHelpFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v0, v1, v6}, Lcom/biznessapps/model/CommonListEntity;-><init>(IILjava/lang/String;)V

    iget-object v6, p0, Lcom/biznessapps/fragments/qr/QrScannerHelpFragment;->items:Ljava/util/List;

    invoke-virtual {p0, v5, v6}, Lcom/biznessapps/fragments/qr/QrScannerHelpFragment;->getWrappedItem(Lcom/biznessapps/model/CommonListEntity;Ljava/util/List;)Lcom/biznessapps/model/CommonListEntity;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object v4, p0, Lcom/biznessapps/fragments/qr/QrScannerHelpFragment;->items:Ljava/util/List;

    new-instance v5, Lcom/biznessapps/model/CommonListEntity;

    sget v6, Lcom/biznessapps/layout/R$string;->line_up_camera_view:I

    invoke-virtual {p0, v6}, Lcom/biznessapps/fragments/qr/QrScannerHelpFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v2, v3, v6}, Lcom/biznessapps/model/CommonListEntity;-><init>(IILjava/lang/String;)V

    iget-object v6, p0, Lcom/biznessapps/fragments/qr/QrScannerHelpFragment;->items:Ljava/util/List;

    invoke-virtual {p0, v5, v6}, Lcom/biznessapps/fragments/qr/QrScannerHelpFragment;->getWrappedItem(Lcom/biznessapps/model/CommonListEntity;Ljava/util/List;)Lcom/biznessapps/model/CommonListEntity;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object v4, p0, Lcom/biznessapps/fragments/qr/QrScannerHelpFragment;->items:Ljava/util/List;

    new-instance v5, Lcom/biznessapps/model/CommonListEntity;

    sget v6, Lcom/biznessapps/layout/R$string;->wait_for_camera:I

    invoke-virtual {p0, v6}, Lcom/biznessapps/fragments/qr/QrScannerHelpFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v0, v1, v6}, Lcom/biznessapps/model/CommonListEntity;-><init>(IILjava/lang/String;)V

    iget-object v6, p0, Lcom/biznessapps/fragments/qr/QrScannerHelpFragment;->items:Ljava/util/List;

    invoke-virtual {p0, v5, v6}, Lcom/biznessapps/fragments/qr/QrScannerHelpFragment;->getWrappedItem(Lcom/biznessapps/model/CommonListEntity;Ljava/util/List;)Lcom/biznessapps/model/CommonListEntity;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object v4, p0, Lcom/biznessapps/fragments/qr/QrScannerHelpFragment;->items:Ljava/util/List;

    new-instance v5, Lcom/biznessapps/model/CommonListEntity;

    sget v6, Lcom/biznessapps/layout/R$string;->display_scanned_code:I

    invoke-virtual {p0, v6}, Lcom/biznessapps/fragments/qr/QrScannerHelpFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v2, v3, v6}, Lcom/biznessapps/model/CommonListEntity;-><init>(IILjava/lang/String;)V

    iget-object v6, p0, Lcom/biznessapps/fragments/qr/QrScannerHelpFragment;->items:Ljava/util/List;

    invoke-virtual {p0, v5, v6}, Lcom/biznessapps/fragments/qr/QrScannerHelpFragment;->getWrappedItem(Lcom/biznessapps/model/CommonListEntity;Ljava/util/List;)Lcom/biznessapps/model/CommonListEntity;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    invoke-direct {p0, p1}, Lcom/biznessapps/fragments/qr/QrScannerHelpFragment;->plugListView(Landroid/app/Activity;)V

    .line 39
    return-void
.end method
