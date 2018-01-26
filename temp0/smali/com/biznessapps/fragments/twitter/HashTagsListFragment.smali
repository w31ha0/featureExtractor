.class public Lcom/biznessapps/fragments/twitter/HashTagsListFragment;
.super Lcom/biznessapps/fragments/CommonListFragment;
.source "HashTagsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/fragments/CommonListFragment",
        "<",
        "Lcom/biznessapps/model/CommonListEntity;",
        ">;"
    }
.end annotation


# instance fields
.field private backButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/biznessapps/fragments/CommonListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/fragments/twitter/HashTagsListFragment;)Lcom/biznessapps/widgets/RefreshableListView;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/twitter/HashTagsListFragment;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/biznessapps/fragments/twitter/HashTagsListFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/biznessapps/fragments/twitter/HashTagsListFragment;)Lcom/biznessapps/widgets/RefreshableListView;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/twitter/HashTagsListFragment;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/biznessapps/fragments/twitter/HashTagsListFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    return-object v0
.end method

.method private plugListView(Landroid/app/Activity;)V
    .locals 3
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 75
    iget-object v1, p0, Lcom/biznessapps/fragments/twitter/HashTagsListFragment;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    new-instance v0, Lcom/biznessapps/layout/adapters/TwitterTagsAdapter;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/fragments/twitter/HashTagsListFragment;->items:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/biznessapps/layout/adapters/TwitterTagsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 77
    .local v0, "ex":Lcom/biznessapps/layout/adapters/TwitterTagsAdapter;
    iget-object v1, p0, Lcom/biznessapps/fragments/twitter/HashTagsListFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    invoke-virtual {v1, v0}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 79
    .end local v0    # "ex":Lcom/biznessapps/layout/adapters/TwitterTagsAdapter;
    :cond_0
    return-void
.end method


# virtual methods
.method protected canUseCachedData()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 23
    sget v0, Lcom/biznessapps/layout/R$layout;->common_list_layout:I

    return v0
.end method

.method protected initViews(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/biznessapps/fragments/CommonListFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 29
    sget v0, Lcom/biznessapps/layout/R$id;->common_back_button:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/biznessapps/fragments/twitter/HashTagsListFragment;->backButton:Landroid/widget/Button;

    .line 30
    iget-object v0, p0, Lcom/biznessapps/fragments/twitter/HashTagsListFragment;->backButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/biznessapps/fragments/twitter/HashTagsListFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "TAB_LABEL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 31
    iget-object v0, p0, Lcom/biznessapps/fragments/twitter/HashTagsListFragment;->backButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/biznessapps/fragments/twitter/HashTagsListFragment;->getTitleBg()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 32
    iget-object v0, p0, Lcom/biznessapps/fragments/twitter/HashTagsListFragment;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/biznessapps/fragments/twitter/HashTagsListFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "CHILDREN_TAB_LABEL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v0, p0, Lcom/biznessapps/fragments/twitter/HashTagsListFragment;->backButton:Landroid/widget/Button;

    new-instance v1, Lcom/biznessapps/fragments/twitter/HashTagsListFragment$1;

    invoke-direct {v1, p0}, Lcom/biznessapps/fragments/twitter/HashTagsListFragment$1;-><init>(Lcom/biznessapps/fragments/twitter/HashTagsListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    return-void
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 7
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/biznessapps/fragments/twitter/HashTagsListFragment;->getUiSettings()Lcom/biznessapps/api/AppCore$UiSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/AppCore$UiSettings;->getOddRowColor()I

    move-result v2

    .line 60
    .local v2, "oddRowColor":I
    invoke-virtual {p0}, Lcom/biznessapps/fragments/twitter/HashTagsListFragment;->getUiSettings()Lcom/biznessapps/api/AppCore$UiSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/AppCore$UiSettings;->getOddRowTextColor()I

    move-result v3

    .line 61
    .local v3, "oddRowTextColor":I
    invoke-virtual {p0}, Lcom/biznessapps/fragments/twitter/HashTagsListFragment;->getUiSettings()Lcom/biznessapps/api/AppCore$UiSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/AppCore$UiSettings;->getEvenRowColor()I

    move-result v0

    .line 62
    .local v0, "evenRowColor":I
    invoke-virtual {p0}, Lcom/biznessapps/fragments/twitter/HashTagsListFragment;->getUiSettings()Lcom/biznessapps/api/AppCore$UiSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/AppCore$UiSettings;->getEvenRowTextColor()I

    move-result v1

    .line 63
    .local v1, "evenRowTextColor":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/biznessapps/fragments/twitter/HashTagsListFragment;->items:Ljava/util/List;

    .line 64
    iget-object v4, p0, Lcom/biznessapps/fragments/twitter/HashTagsListFragment;->items:Ljava/util/List;

    new-instance v5, Lcom/biznessapps/model/CommonListEntity;

    const-string v6, "#ConservativeLady"

    invoke-direct {v5, v2, v3, v6}, Lcom/biznessapps/model/CommonListEntity;-><init>(IILjava/lang/String;)V

    iget-object v6, p0, Lcom/biznessapps/fragments/twitter/HashTagsListFragment;->items:Ljava/util/List;

    invoke-virtual {p0, v5, v6}, Lcom/biznessapps/fragments/twitter/HashTagsListFragment;->getWrappedItem(Lcom/biznessapps/model/CommonListEntity;Ljava/util/List;)Lcom/biznessapps/model/CommonListEntity;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v4, p0, Lcom/biznessapps/fragments/twitter/HashTagsListFragment;->items:Ljava/util/List;

    new-instance v5, Lcom/biznessapps/model/CommonListEntity;

    const-string v6, "#FeminismFail"

    invoke-direct {v5, v0, v1, v6}, Lcom/biznessapps/model/CommonListEntity;-><init>(IILjava/lang/String;)V

    iget-object v6, p0, Lcom/biznessapps/fragments/twitter/HashTagsListFragment;->items:Ljava/util/List;

    invoke-virtual {p0, v5, v6}, Lcom/biznessapps/fragments/twitter/HashTagsListFragment;->getWrappedItem(Lcom/biznessapps/model/CommonListEntity;Ljava/util/List;)Lcom/biznessapps/model/CommonListEntity;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v4, p0, Lcom/biznessapps/fragments/twitter/HashTagsListFragment;->items:Ljava/util/List;

    new-instance v5, Lcom/biznessapps/model/CommonListEntity;

    const-string v6, "#LeadingLadies"

    invoke-direct {v5, v2, v3, v6}, Lcom/biznessapps/model/CommonListEntity;-><init>(IILjava/lang/String;)V

    iget-object v6, p0, Lcom/biznessapps/fragments/twitter/HashTagsListFragment;->items:Ljava/util/List;

    invoke-virtual {p0, v5, v6}, Lcom/biznessapps/fragments/twitter/HashTagsListFragment;->getWrappedItem(Lcom/biznessapps/model/CommonListEntity;Ljava/util/List;)Lcom/biznessapps/model/CommonListEntity;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v4, p0, Lcom/biznessapps/fragments/twitter/HashTagsListFragment;->items:Ljava/util/List;

    new-instance v5, Lcom/biznessapps/model/CommonListEntity;

    const-string v6, "#LibCampus"

    invoke-direct {v5, v0, v1, v6}, Lcom/biznessapps/model/CommonListEntity;-><init>(IILjava/lang/String;)V

    iget-object v6, p0, Lcom/biznessapps/fragments/twitter/HashTagsListFragment;->items:Ljava/util/List;

    invoke-virtual {p0, v5, v6}, Lcom/biznessapps/fragments/twitter/HashTagsListFragment;->getWrappedItem(Lcom/biznessapps/model/CommonListEntity;Ljava/util/List;)Lcom/biznessapps/model/CommonListEntity;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v4, p0, Lcom/biznessapps/fragments/twitter/HashTagsListFragment;->items:Ljava/util/List;

    new-instance v5, Lcom/biznessapps/model/CommonListEntity;

    const-string v6, "#LibProf"

    invoke-direct {v5, v2, v3, v6}, Lcom/biznessapps/model/CommonListEntity;-><init>(IILjava/lang/String;)V

    iget-object v6, p0, Lcom/biznessapps/fragments/twitter/HashTagsListFragment;->items:Ljava/util/List;

    invoke-virtual {p0, v5, v6}, Lcom/biznessapps/fragments/twitter/HashTagsListFragment;->getWrappedItem(Lcom/biznessapps/model/CommonListEntity;Ljava/util/List;)Lcom/biznessapps/model/CommonListEntity;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v4, p0, Lcom/biznessapps/fragments/twitter/HashTagsListFragment;->items:Ljava/util/List;

    new-instance v5, Lcom/biznessapps/model/CommonListEntity;

    const-string v6, "#LibBias"

    invoke-direct {v5, v0, v1, v6}, Lcom/biznessapps/model/CommonListEntity;-><init>(IILjava/lang/String;)V

    iget-object v6, p0, Lcom/biznessapps/fragments/twitter/HashTagsListFragment;->items:Ljava/util/List;

    invoke-virtual {p0, v5, v6}, Lcom/biznessapps/fragments/twitter/HashTagsListFragment;->getWrappedItem(Lcom/biznessapps/model/CommonListEntity;Ljava/util/List;)Lcom/biznessapps/model/CommonListEntity;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v4, p0, Lcom/biznessapps/fragments/twitter/HashTagsListFragment;->items:Ljava/util/List;

    new-instance v5, Lcom/biznessapps/model/CommonListEntity;

    const-string v6, "#LuceLeader"

    invoke-direct {v5, v2, v3, v6}, Lcom/biznessapps/model/CommonListEntity;-><init>(IILjava/lang/String;)V

    iget-object v6, p0, Lcom/biznessapps/fragments/twitter/HashTagsListFragment;->items:Ljava/util/List;

    invoke-virtual {p0, v5, v6}, Lcom/biznessapps/fragments/twitter/HashTagsListFragment;->getWrappedItem(Lcom/biznessapps/model/CommonListEntity;Ljava/util/List;)Lcom/biznessapps/model/CommonListEntity;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-direct {p0, p1}, Lcom/biznessapps/fragments/twitter/HashTagsListFragment;->plugListView(Landroid/app/Activity;)V

    .line 72
    return-void
.end method
