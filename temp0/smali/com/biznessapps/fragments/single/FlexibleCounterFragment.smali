.class public Lcom/biznessapps/fragments/single/FlexibleCounterFragment;
.super Lcom/biznessapps/fragments/CommonFragment;
.source "FlexibleCounterFragment.java"


# static fields
.field private static final LINE_END:Ljava/lang/String; = "\n"

.field private static final STATS_SPACE:Ljava/lang/String; = "        "


# instance fields
.field private data:Lcom/biznessapps/model/StatFieldsItem;

.field private emailButton:Landroid/widget/Button;

.field private fieldsContainer:Landroid/view/ViewGroup;

.field private fieldsCounters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private layout:Landroid/view/ViewGroup;

.field private tabId:Ljava/lang/String;

.field private tabLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/biznessapps/fragments/CommonFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/fragments/single/FlexibleCounterFragment;)Lcom/biznessapps/model/StatFieldsItem;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/single/FlexibleCounterFragment;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/biznessapps/fragments/single/FlexibleCounterFragment;->data:Lcom/biznessapps/model/StatFieldsItem;

    return-object v0
.end method

.method static synthetic access$100(Lcom/biznessapps/fragments/single/FlexibleCounterFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/single/FlexibleCounterFragment;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/biznessapps/fragments/single/FlexibleCounterFragment;->fieldsCounters:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/biznessapps/fragments/single/FlexibleCounterFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/single/FlexibleCounterFragment;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/biznessapps/fragments/single/FlexibleCounterFragment;->tabLabel:Ljava/lang/String;

    return-object v0
.end method

.method private initFieldsCounters(Landroid/app/Activity;)V
    .locals 11
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 122
    iget-object v9, p0, Lcom/biznessapps/fragments/single/FlexibleCounterFragment;->data:Lcom/biznessapps/model/StatFieldsItem;

    invoke-virtual {v9}, Lcom/biznessapps/model/StatFieldsItem;->getFields()Ljava/util/List;

    move-result-object v7

    .line 123
    .local v7, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 166
    :cond_0
    return-void

    .line 127
    :cond_1
    iget-object v9, p0, Lcom/biznessapps/fragments/single/FlexibleCounterFragment;->fieldsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 128
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/biznessapps/fragments/single/FlexibleCounterFragment;->fieldsCounters:Ljava/util/List;

    .line 129
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 130
    .local v5, "field":Ljava/lang/String;
    iget-object v9, p0, Lcom/biznessapps/fragments/single/FlexibleCounterFragment;->fieldsCounters:Ljava/util/List;

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v9, p0, Lcom/biznessapps/fragments/single/FlexibleCounterFragment;->fieldsCounters:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v4, v9, -0x1

    .line 133
    .local v4, "currentPos":I
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    sget v10, Lcom/biznessapps/layout/R$layout;->flexible_counter_item:I

    invoke-static {v9, v10}, Lcom/biznessapps/utils/ViewUtils;->loadLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 135
    .local v6, "fieldView":Landroid/view/ViewGroup;
    sget v9, Lcom/biznessapps/layout/R$id;->counter_text_name:I

    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 136
    .local v2, "counterTextName":Landroid/widget/TextView;
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    sget v9, Lcom/biznessapps/layout/R$id;->counter_text:I

    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 138
    .local v3, "counterView":Landroid/widget/TextView;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/biznessapps/fragments/single/FlexibleCounterFragment;->fieldsCounters:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    sget v9, Lcom/biznessapps/layout/R$id;->counter_decrease_button:I

    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 141
    .local v0, "counterDecButton":Landroid/widget/Button;
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    sget v9, Lcom/biznessapps/layout/R$id;->counter_increase_button:I

    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 143
    .local v1, "counterIncButton":Landroid/widget/Button;
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    new-instance v9, Lcom/biznessapps/fragments/single/FlexibleCounterFragment$2;

    invoke-direct {v9, p0, v4, v3}, Lcom/biznessapps/fragments/single/FlexibleCounterFragment$2;-><init>(Lcom/biznessapps/fragments/single/FlexibleCounterFragment;ILandroid/widget/TextView;)V

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    new-instance v9, Lcom/biznessapps/fragments/single/FlexibleCounterFragment$3;

    invoke-direct {v9, p0, v4, v3}, Lcom/biznessapps/fragments/single/FlexibleCounterFragment$3;-><init>(Lcom/biznessapps/fragments/single/FlexibleCounterFragment;ILandroid/widget/TextView;)V

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    invoke-virtual {p0, v0}, Lcom/biznessapps/fragments/single/FlexibleCounterFragment;->setCustomButtonStyle(Landroid/widget/Button;)V

    .line 163
    invoke-virtual {p0, v1}, Lcom/biznessapps/fragments/single/FlexibleCounterFragment;->setCustomButtonStyle(Landroid/widget/Button;)V

    .line 164
    iget-object v9, p0, Lcom/biznessapps/fragments/single/FlexibleCounterFragment;->fieldsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v9, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method private initListeners()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/biznessapps/fragments/single/FlexibleCounterFragment;->emailButton:Landroid/widget/Button;

    new-instance v1, Lcom/biznessapps/fragments/single/FlexibleCounterFragment$1;

    invoke-direct {v1, p0}, Lcom/biznessapps/fragments/single/FlexibleCounterFragment$1;-><init>(Lcom/biznessapps/fragments/single/FlexibleCounterFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    return-void
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/biznessapps/fragments/single/FlexibleCounterFragment;->root:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->stat_fields_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/fragments/single/FlexibleCounterFragment;->fieldsContainer:Landroid/view/ViewGroup;

    .line 58
    iget-object v0, p0, Lcom/biznessapps/fragments/single/FlexibleCounterFragment;->root:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->email_counter:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/biznessapps/fragments/single/FlexibleCounterFragment;->emailButton:Landroid/widget/Button;

    .line 59
    iget-object v0, p0, Lcom/biznessapps/fragments/single/FlexibleCounterFragment;->emailButton:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/biznessapps/fragments/single/FlexibleCounterFragment;->setCustomButtonStyle(Landroid/widget/Button;)V

    .line 60
    return-void
.end method

.method private setBackgrounds()V
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/biznessapps/fragments/single/FlexibleCounterFragment;->data:Lcom/biznessapps/model/StatFieldsItem;

    invoke-virtual {v0}, Lcom/biznessapps/model/StatFieldsItem;->getImage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/fragments/single/FlexibleCounterFragment;->bitmapUrl:Ljava/lang/String;

    .line 116
    iget-object v0, p0, Lcom/biznessapps/fragments/single/FlexibleCounterFragment;->bitmapUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/FlexibleCounterFragment;->getImageManager()Lcom/biznessapps/utils/ImageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/fragments/single/FlexibleCounterFragment;->bitmapUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/biznessapps/fragments/single/FlexibleCounterFragment;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/utils/ImageManager;->downloadBgUrl(Ljava/lang/String;Landroid/view/View;)V

    .line 119
    :cond_0
    return-void
.end method


# virtual methods
.method protected canUseCachedData()Z
    .locals 2

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/FlexibleCounterFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    const-string v1, "FLEXIBLE_COUNTER_PROPERTY"

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/model/StatFieldsItem;

    iput-object v0, p0, Lcom/biznessapps/fragments/single/FlexibleCounterFragment;->data:Lcom/biznessapps/model/StatFieldsItem;

    .line 111
    iget-object v0, p0, Lcom/biznessapps/fragments/single/FlexibleCounterFragment;->data:Lcom/biznessapps/model/StatFieldsItem;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 93
    const-string v0, "http://www.biznessapps.com/iphone/stat_fields.php?app_code=%s&version=4&tab_id=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/FlexibleCounterFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/biznessapps/fragments/single/FlexibleCounterFragment;->tabId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    sget v0, Lcom/biznessapps/layout/R$layout;->flexible_counter_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/fragments/single/FlexibleCounterFragment;->root:Landroid/view/ViewGroup;

    .line 46
    iget-object v0, p0, Lcom/biznessapps/fragments/single/FlexibleCounterFragment;->root:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->counter_root_layout:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/biznessapps/fragments/single/FlexibleCounterFragment;->layout:Landroid/view/ViewGroup;

    .line 47
    invoke-direct {p0}, Lcom/biznessapps/fragments/single/FlexibleCounterFragment;->initViews()V

    .line 48
    invoke-direct {p0}, Lcom/biznessapps/fragments/single/FlexibleCounterFragment;->initListeners()V

    .line 49
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/FlexibleCounterFragment;->loadData()V

    .line 50
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/FlexibleCounterFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/FlexibleCounterFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "TAB_LABEL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/fragments/single/FlexibleCounterFragment;->tabLabel:Ljava/lang/String;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/fragments/single/FlexibleCounterFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected preDataLoading(Landroid/app/Activity;)V
    .locals 2
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/FlexibleCounterFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "TAB_SPECIAL_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/fragments/single/FlexibleCounterFragment;->tabId:Ljava/lang/String;

    .line 89
    return-void
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-static {p1}, Lcom/biznessapps/utils/JsonParserUtils;->parseStatFields(Ljava/lang/String;)Lcom/biznessapps/model/StatFieldsItem;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/fragments/single/FlexibleCounterFragment;->data:Lcom/biznessapps/model/StatFieldsItem;

    .line 99
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/FlexibleCounterFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    const-string v1, "FLEXIBLE_COUNTER_PROPERTY"

    iget-object v2, p0, Lcom/biznessapps/fragments/single/FlexibleCounterFragment;->data:Lcom/biznessapps/model/StatFieldsItem;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/api/CachingManager;->saveData(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 0
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/biznessapps/fragments/single/FlexibleCounterFragment;->setBackgrounds()V

    .line 105
    invoke-direct {p0, p1}, Lcom/biznessapps/fragments/single/FlexibleCounterFragment;->initFieldsCounters(Landroid/app/Activity;)V

    .line 106
    return-void
.end method
