.class public Lcom/biznessapps/fragments/single/MortgageCalculatorFragment;
.super Lcom/biznessapps/fragments/CommonFragment;
.source "MortgageCalculatorFragment.java"


# instance fields
.field private amountEditText:Landroid/widget/EditText;

.field private calculateButton:Landroid/widget/Button;

.field private layout:Landroid/view/ViewGroup;

.field private monthRepaymentTextView:Landroid/widget/TextView;

.field private mortgageInfo:Lcom/biznessapps/model/Mortgage;

.field private rateEditText:Landroid/widget/EditText;

.field private tabId:Ljava/lang/String;

.field private termEditText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/biznessapps/fragments/CommonFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/fragments/single/MortgageCalculatorFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fragments/single/MortgageCalculatorFragment;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/biznessapps/fragments/single/MortgageCalculatorFragment;->calculate()V

    return-void
.end method

.method static synthetic access$100(Lcom/biznessapps/fragments/single/MortgageCalculatorFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/single/MortgageCalculatorFragment;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/biznessapps/fragments/single/MortgageCalculatorFragment;->calculateButton:Landroid/widget/Button;

    return-object v0
.end method

.method private calculate()V
    .locals 26

    .prologue
    .line 103
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/biznessapps/fragments/single/MortgageCalculatorFragment;->amountEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 104
    .local v13, "priceAmount":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/biznessapps/fragments/single/MortgageCalculatorFragment;->termEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 105
    .local v15, "term":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/biznessapps/fragments/single/MortgageCalculatorFragment;->rateEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 106
    .local v14, "rate":Ljava/lang/String;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v13, v2, v16

    const/16 v16, 0x1

    aput-object v15, v2, v16

    const/16 v16, 0x2

    aput-object v14, v2, v16

    invoke-static {v2}, Lcom/biznessapps/utils/StringUtils;->checkTextFieldsOnEmpty([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/fragments/single/MortgageCalculatorFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v16, Lcom/biznessapps/layout/R$string;->field_not_filled_message:I

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 131
    :goto_0
    return-void

    .line 110
    :cond_0
    :try_start_0
    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 111
    .local v3, "amountValue":D
    invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 112
    .local v5, "termValue":D
    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    .local v7, "rateValue":D
    move-object/from16 v2, p0

    .line 114
    invoke-direct/range {v2 .. v8}, Lcom/biznessapps/fragments/single/MortgageCalculatorFragment;->checkOnCorrectness(DDD)Z

    move-result v2

    if-nez v2, :cond_1

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/fragments/single/MortgageCalculatorFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v16, Lcom/biznessapps/layout/R$string;->number_incorrect_format_message:I

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 126
    .end local v3    # "amountValue":D
    .end local v5    # "termValue":D
    .end local v7    # "rateValue":D
    :catch_0
    move-exception v10

    .line 127
    .local v10, "e":Ljava/lang/NumberFormatException;
    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/fragments/single/MortgageCalculatorFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v16, Lcom/biznessapps/layout/R$string;->number_incorrect_format_message:I

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 120
    .end local v10    # "e":Ljava/lang/NumberFormatException;
    .restart local v3    # "amountValue":D
    .restart local v5    # "termValue":D
    .restart local v7    # "rateValue":D
    :cond_1
    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    div-double v7, v7, v16

    .line 121
    mul-double v16, v3, v7

    const-wide/high16 v18, 0x4028000000000000L    # 12.0

    div-double v16, v16, v18

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    add-double v24, v24, v7

    div-double v22, v22, v24

    :try_start_1
    move-wide/from16 v0, v22

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    sub-double v20, v20, v22

    div-double v18, v18, v20

    mul-double v11, v16, v18

    .line 124
    .local v11, "payment":D
    new-instance v9, Ljava/text/DecimalFormat;

    const-string v2, "##.00"

    invoke-direct {v9, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 125
    .local v9, "df":Ljava/text/DecimalFormat;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/biznessapps/fragments/single/MortgageCalculatorFragment;->monthRepaymentTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v11, v12}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private checkOnCorrectness(DDD)Z
    .locals 6
    .param p1, "amountValue"    # D
    .param p3, "termValue"    # D
    .param p5, "rateValue"    # D

    .prologue
    const/4 v0, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    .line 142
    cmpl-double v1, p1, v2

    if-eqz v1, :cond_0

    cmpl-double v1, p5, v2

    if-eqz v1, :cond_0

    cmpl-double v1, p3, v2

    if-nez v1, :cond_1

    .line 148
    :cond_0
    :goto_0
    return v0

    .line 144
    :cond_1
    cmpg-double v1, p1, v4

    if-ltz v1, :cond_0

    const-wide v1, 0x4197d783fc000000L    # 9.9999999E7

    cmpl-double v1, p1, v1

    if-gtz v1, :cond_0

    const-wide v1, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v1, p5, v1

    if-ltz v1, :cond_0

    const-wide v1, 0x408f400000000000L    # 1000.0

    cmpl-double v1, p5, v1

    if-gtz v1, :cond_0

    cmpg-double v1, p3, v4

    if-ltz v1, :cond_0

    const-wide/high16 v1, 0x4049000000000000L    # 50.0

    cmpl-double v1, p3, v1

    if-gtz v1, :cond_0

    .line 148
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private initListeners()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/biznessapps/fragments/single/MortgageCalculatorFragment;->calculateButton:Landroid/widget/Button;

    new-instance v1, Lcom/biznessapps/fragments/single/MortgageCalculatorFragment$1;

    invoke-direct {v1, p0}, Lcom/biznessapps/fragments/single/MortgageCalculatorFragment$1;-><init>(Lcom/biznessapps/fragments/single/MortgageCalculatorFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/biznessapps/fragments/single/MortgageCalculatorFragment;->rateEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/biznessapps/fragments/single/MortgageCalculatorFragment$2;

    invoke-direct {v1, p0}, Lcom/biznessapps/fragments/single/MortgageCalculatorFragment$2;-><init>(Lcom/biznessapps/fragments/single/MortgageCalculatorFragment;)V

    invoke-static {v1}, Lcom/biznessapps/utils/ViewUtils;->getOnEnterKeyListener(Ljava/lang/Runnable;)Landroid/view/View$OnKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 100
    return-void
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/biznessapps/fragments/single/MortgageCalculatorFragment;->root:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->amount_text:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/biznessapps/fragments/single/MortgageCalculatorFragment;->amountEditText:Landroid/widget/EditText;

    .line 79
    iget-object v0, p0, Lcom/biznessapps/fragments/single/MortgageCalculatorFragment;->root:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->term_text:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/biznessapps/fragments/single/MortgageCalculatorFragment;->termEditText:Landroid/widget/EditText;

    .line 80
    iget-object v0, p0, Lcom/biznessapps/fragments/single/MortgageCalculatorFragment;->root:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->rate_text:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/biznessapps/fragments/single/MortgageCalculatorFragment;->rateEditText:Landroid/widget/EditText;

    .line 81
    iget-object v0, p0, Lcom/biznessapps/fragments/single/MortgageCalculatorFragment;->root:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->each_month_text:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biznessapps/fragments/single/MortgageCalculatorFragment;->monthRepaymentTextView:Landroid/widget/TextView;

    .line 82
    iget-object v0, p0, Lcom/biznessapps/fragments/single/MortgageCalculatorFragment;->root:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->calculate_button:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/biznessapps/fragments/single/MortgageCalculatorFragment;->calculateButton:Landroid/widget/Button;

    .line 83
    iget-object v0, p0, Lcom/biznessapps/fragments/single/MortgageCalculatorFragment;->calculateButton:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/biznessapps/fragments/single/MortgageCalculatorFragment;->setCustomButtonStyle(Landroid/widget/Button;)V

    .line 84
    return-void
.end method

.method private setBackgrounds()V
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/biznessapps/fragments/single/MortgageCalculatorFragment;->mortgageInfo:Lcom/biznessapps/model/Mortgage;

    invoke-virtual {v0}, Lcom/biznessapps/model/Mortgage;->getImage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/fragments/single/MortgageCalculatorFragment;->bitmapUrl:Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/biznessapps/fragments/single/MortgageCalculatorFragment;->bitmapUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/MortgageCalculatorFragment;->getImageManager()Lcom/biznessapps/utils/ImageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/fragments/single/MortgageCalculatorFragment;->bitmapUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/biznessapps/fragments/single/MortgageCalculatorFragment;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/utils/ImageManager;->downloadBgUrl(Ljava/lang/String;Landroid/view/View;)V

    .line 75
    :cond_0
    return-void
.end method


# virtual methods
.method protected canUseCachedData()Z
    .locals 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/MortgageCalculatorFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    const-string v1, "MORTGAGE_INFO_PROPERTY"

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/model/Mortgage;

    iput-object v0, p0, Lcom/biznessapps/fragments/single/MortgageCalculatorFragment;->mortgageInfo:Lcom/biznessapps/model/Mortgage;

    .line 67
    iget-object v0, p0, Lcom/biznessapps/fragments/single/MortgageCalculatorFragment;->mortgageInfo:Lcom/biznessapps/model/Mortgage;

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
    .line 50
    const-string v0, "http://www.biznessapps.com/iphone/loan.php?app_code=%s&version=4&tab_id=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/MortgageCalculatorFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/biznessapps/fragments/single/MortgageCalculatorFragment;->tabId:Ljava/lang/String;

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
    .line 35
    sget v0, Lcom/biznessapps/layout/R$layout;->mortgage_calculator_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/fragments/single/MortgageCalculatorFragment;->root:Landroid/view/ViewGroup;

    .line 36
    iget-object v0, p0, Lcom/biznessapps/fragments/single/MortgageCalculatorFragment;->root:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->mortgage_layout:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/fragments/single/MortgageCalculatorFragment;->layout:Landroid/view/ViewGroup;

    .line 37
    invoke-direct {p0}, Lcom/biznessapps/fragments/single/MortgageCalculatorFragment;->initViews()V

    .line 38
    invoke-direct {p0}, Lcom/biznessapps/fragments/single/MortgageCalculatorFragment;->initListeners()V

    .line 39
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/MortgageCalculatorFragment;->loadData()V

    .line 40
    iget-object v0, p0, Lcom/biznessapps/fragments/single/MortgageCalculatorFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected preDataLoading(Landroid/app/Activity;)V
    .locals 2
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 45
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TAB_SPECIAL_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/fragments/single/MortgageCalculatorFragment;->tabId:Ljava/lang/String;

    .line 46
    return-void
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-static {p1}, Lcom/biznessapps/utils/JsonParserUtils;->parseMortgage(Ljava/lang/String;)Lcom/biznessapps/model/Mortgage;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/fragments/single/MortgageCalculatorFragment;->mortgageInfo:Lcom/biznessapps/model/Mortgage;

    .line 56
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/MortgageCalculatorFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    const-string v1, "MORTGAGE_INFO_PROPERTY"

    iget-object v2, p0, Lcom/biznessapps/fragments/single/MortgageCalculatorFragment;->mortgageInfo:Lcom/biznessapps/model/Mortgage;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/api/CachingManager;->saveData(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 0
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/biznessapps/fragments/single/MortgageCalculatorFragment;->setBackgrounds()V

    .line 62
    return-void
.end method
