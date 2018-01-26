.class public Lcom/biznessapps/fragments/single/TipCalculatorFragment;
.super Lcom/biznessapps/fragments/CommonFragment;
.source "TipCalculatorFragment.java"


# instance fields
.field private amountEditText:Landroid/widget/EditText;

.field private calculateButton:Landroid/widget/Button;

.field private peopleEditText:Landroid/widget/EditText;

.field private percentEditText:Landroid/widget/EditText;

.field private personTextView:Landroid/widget/TextView;

.field private tabId:Ljava/lang/String;

.field private tipInfo:Lcom/biznessapps/model/Tip;

.field private tipLayout:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/biznessapps/fragments/CommonFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/fragments/single/TipCalculatorFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fragments/single/TipCalculatorFragment;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/biznessapps/fragments/single/TipCalculatorFragment;->calculate()V

    return-void
.end method

.method static synthetic access$100(Lcom/biznessapps/fragments/single/TipCalculatorFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/single/TipCalculatorFragment;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/biznessapps/fragments/single/TipCalculatorFragment;->calculateButton:Landroid/widget/Button;

    return-object v0
.end method

.method private calculate()V
    .locals 17

    .prologue
    .line 114
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/fragments/single/TipCalculatorFragment;->amountEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 115
    .local v8, "amountPrice":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/fragments/single/TipCalculatorFragment;->percentEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 116
    .local v14, "percent":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/fragments/single/TipCalculatorFragment;->peopleEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 118
    .local v13, "peopleCount":Ljava/lang/String;
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v8, v1, v15

    const/4 v15, 0x1

    aput-object v14, v1, v15

    const/4 v15, 0x2

    aput-object v13, v1, v15

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->checkTextFieldsOnEmpty([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/fragments/single/TipCalculatorFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v15, Lcom/biznessapps/layout/R$string;->field_not_filled_message:I

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v1, v15, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 141
    :goto_0
    return-void

    .line 122
    :cond_0
    :try_start_0
    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 123
    .local v2, "amountValue":D
    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 124
    .local v4, "percentValue":D
    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .local v6, "peopleValue":D
    move-object/from16 v1, p0

    .line 126
    invoke-direct/range {v1 .. v7}, Lcom/biznessapps/fragments/single/TipCalculatorFragment;->checkFieldsCorrectness(DDD)Z

    move-result v1

    if-nez v1, :cond_1

    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/fragments/single/TipCalculatorFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v15, Lcom/biznessapps/layout/R$string;->number_incorrect_format_message:I

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v1, v15, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 136
    .end local v2    # "amountValue":D
    .end local v4    # "percentValue":D
    .end local v6    # "peopleValue":D
    :catch_0
    move-exception v10

    .line 137
    .local v10, "e":Ljava/lang/NumberFormatException;
    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/fragments/single/TipCalculatorFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v15, Lcom/biznessapps/layout/R$string;->number_incorrect_format_message:I

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v1, v15, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 132
    .end local v10    # "e":Ljava/lang/NumberFormatException;
    .restart local v2    # "amountValue":D
    .restart local v4    # "percentValue":D
    .restart local v6    # "peopleValue":D
    :cond_1
    const-wide/high16 v15, 0x4059000000000000L    # 100.0

    div-double v15, v4, v15

    mul-double/2addr v15, v2

    add-double/2addr v15, v2

    div-double v11, v15, v6

    .line 134
    .local v11, "payment":D
    :try_start_1
    new-instance v9, Ljava/text/DecimalFormat;

    const-string v1, "##.00"

    invoke-direct {v9, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 135
    .local v9, "df":Ljava/text/DecimalFormat;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/fragments/single/TipCalculatorFragment;->personTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v11, v12}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private checkFieldsCorrectness(DDD)Z
    .locals 6
    .param p1, "amountValue"    # D
    .param p3, "percentValue"    # D
    .param p5, "peopleValue"    # D

    .prologue
    const/4 v0, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    .line 144
    cmpl-double v1, p1, v2

    if-eqz v1, :cond_0

    cmpl-double v1, p3, v2

    if-eqz v1, :cond_0

    cmpl-double v1, p5, v2

    if-nez v1, :cond_1

    .line 150
    :cond_0
    :goto_0
    return v0

    .line 146
    :cond_1
    cmpg-double v1, p1, v4

    if-ltz v1, :cond_0

    const-wide v1, 0x4197d783fc000000L    # 9.9999999E7

    cmpl-double v1, p1, v1

    if-gtz v1, :cond_0

    const-wide v1, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v1, p3, v1

    if-ltz v1, :cond_0

    const-wide v1, 0x408f400000000000L    # 1000.0

    cmpl-double v1, p3, v1

    if-gtz v1, :cond_0

    cmpg-double v1, p5, v4

    if-ltz v1, :cond_0

    const-wide/high16 v1, 0x4049000000000000L    # 50.0

    cmpl-double v1, p5, v1

    if-gtz v1, :cond_0

    .line 150
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private initListeners()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/biznessapps/fragments/single/TipCalculatorFragment;->calculateButton:Landroid/widget/Button;

    new-instance v1, Lcom/biznessapps/fragments/single/TipCalculatorFragment$1;

    invoke-direct {v1, p0}, Lcom/biznessapps/fragments/single/TipCalculatorFragment$1;-><init>(Lcom/biznessapps/fragments/single/TipCalculatorFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lcom/biznessapps/fragments/single/TipCalculatorFragment;->peopleEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/biznessapps/fragments/single/TipCalculatorFragment$2;

    invoke-direct {v1, p0}, Lcom/biznessapps/fragments/single/TipCalculatorFragment$2;-><init>(Lcom/biznessapps/fragments/single/TipCalculatorFragment;)V

    invoke-static {v1}, Lcom/biznessapps/utils/ViewUtils;->getOnEnterKeyListener(Ljava/lang/Runnable;)Landroid/view/View$OnKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 111
    return-void
.end method

.method private initViews(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 89
    sget v0, Lcom/biznessapps/layout/R$id;->amount_text:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/biznessapps/fragments/single/TipCalculatorFragment;->amountEditText:Landroid/widget/EditText;

    .line 90
    sget v0, Lcom/biznessapps/layout/R$id;->tip_percent_text:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/biznessapps/fragments/single/TipCalculatorFragment;->percentEditText:Landroid/widget/EditText;

    .line 91
    sget v0, Lcom/biznessapps/layout/R$id;->people_text:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/biznessapps/fragments/single/TipCalculatorFragment;->peopleEditText:Landroid/widget/EditText;

    .line 92
    sget v0, Lcom/biznessapps/layout/R$id;->each_person_text:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biznessapps/fragments/single/TipCalculatorFragment;->personTextView:Landroid/widget/TextView;

    .line 93
    sget v0, Lcom/biznessapps/layout/R$id;->calculate_button:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/biznessapps/fragments/single/TipCalculatorFragment;->calculateButton:Landroid/widget/Button;

    .line 94
    sget v0, Lcom/biznessapps/layout/R$id;->tip_layout:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/biznessapps/fragments/single/TipCalculatorFragment;->tipLayout:Landroid/view/ViewGroup;

    .line 95
    iget-object v0, p0, Lcom/biznessapps/fragments/single/TipCalculatorFragment;->calculateButton:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/biznessapps/fragments/single/TipCalculatorFragment;->setCustomButtonStyle(Landroid/widget/Button;)V

    .line 96
    return-void
.end method

.method private setBackgrounds()V
    .locals 4

    .prologue
    .line 78
    iget-object v1, p0, Lcom/biznessapps/fragments/single/TipCalculatorFragment;->tipInfo:Lcom/biznessapps/model/Tip;

    invoke-virtual {v1}, Lcom/biznessapps/model/Tip;->getImage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/biznessapps/fragments/single/TipCalculatorFragment;->bitmapUrl:Ljava/lang/String;

    .line 79
    iget-object v1, p0, Lcom/biznessapps/fragments/single/TipCalculatorFragment;->bitmapUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    :try_start_0
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/TipCalculatorFragment;->getImageManager()Lcom/biznessapps/utils/ImageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/fragments/single/TipCalculatorFragment;->bitmapUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/biznessapps/fragments/single/TipCalculatorFragment;->tipLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/biznessapps/utils/ImageManager;->downloadBgUrl(Ljava/lang/String;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected canUseCachedData()Z
    .locals 2

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/TipCalculatorFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    const-string v1, "TIP_INFO_PROPERTY"

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/model/Tip;

    iput-object v0, p0, Lcom/biznessapps/fragments/single/TipCalculatorFragment;->tipInfo:Lcom/biznessapps/model/Tip;

    .line 69
    iget-object v0, p0, Lcom/biznessapps/fragments/single/TipCalculatorFragment;->tipInfo:Lcom/biznessapps/model/Tip;

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
    .line 57
    const-string v0, "http://www.biznessapps.com/iphone/tip.php?app_code=%s&version=4&tab_id=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/TipCalculatorFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/biznessapps/fragments/single/TipCalculatorFragment;->tabId:Ljava/lang/String;

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
    .line 43
    sget v0, Lcom/biznessapps/layout/R$layout;->tip_calculator_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/fragments/single/TipCalculatorFragment;->root:Landroid/view/ViewGroup;

    .line 44
    iget-object v0, p0, Lcom/biznessapps/fragments/single/TipCalculatorFragment;->root:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/biznessapps/fragments/single/TipCalculatorFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 45
    invoke-direct {p0}, Lcom/biznessapps/fragments/single/TipCalculatorFragment;->initListeners()V

    .line 46
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/TipCalculatorFragment;->loadData()V

    .line 47
    iget-object v0, p0, Lcom/biznessapps/fragments/single/TipCalculatorFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected preDataLoading(Landroid/app/Activity;)V
    .locals 2
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 52
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TAB_SPECIAL_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/fragments/single/TipCalculatorFragment;->tabId:Ljava/lang/String;

    .line 53
    return-void
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-static {p1}, Lcom/biznessapps/utils/JsonParserUtils;->parseTip(Ljava/lang/String;)Lcom/biznessapps/model/Tip;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/fragments/single/TipCalculatorFragment;->tipInfo:Lcom/biznessapps/model/Tip;

    .line 63
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/TipCalculatorFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    const-string v1, "TIP_INFO_PROPERTY"

    iget-object v2, p0, Lcom/biznessapps/fragments/single/TipCalculatorFragment;->tipInfo:Lcom/biznessapps/model/Tip;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/api/CachingManager;->saveData(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 0
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/biznessapps/fragments/single/TipCalculatorFragment;->setBackgrounds()V

    .line 75
    return-void
.end method
