.class public Lcom/biznessapps/fragments/single/PreviewAppFragment;
.super Lcom/biznessapps/fragments/CommonFragment;
.source "PreviewAppFragment.java"


# instance fields
.field private clearTextButton:Landroid/widget/Button;

.field private demoCodeView:Landroid/widget/EditText;

.field private loadDemoButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/biznessapps/fragments/CommonFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/fragments/single/PreviewAppFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fragments/single/PreviewAppFragment;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/biznessapps/fragments/single/PreviewAppFragment;->loadDemo()V

    return-void
.end method

.method static synthetic access$100(Lcom/biznessapps/fragments/single/PreviewAppFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fragments/single/PreviewAppFragment;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/biznessapps/fragments/single/PreviewAppFragment;->clearText()V

    return-void
.end method

.method static synthetic access$200(Lcom/biznessapps/fragments/single/PreviewAppFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/single/PreviewAppFragment;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->loadDemoButton:Landroid/widget/Button;

    return-object v0
.end method

.method private clearText()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->demoCodeView:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 76
    return-void
.end method

.method private initViews(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 38
    sget v0, Lcom/biznessapps/layout/R$id;->demo_code_edittext:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->demoCodeView:Landroid/widget/EditText;

    .line 39
    sget v0, Lcom/biznessapps/layout/R$id;->load_demo_button:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->loadDemoButton:Landroid/widget/Button;

    .line 40
    sget v0, Lcom/biznessapps/layout/R$id;->reset_demo_button:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->clearTextButton:Landroid/widget/Button;

    .line 41
    iget-object v0, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->loadDemoButton:Landroid/widget/Button;

    new-instance v1, Lcom/biznessapps/fragments/single/PreviewAppFragment$1;

    invoke-direct {v1, p0}, Lcom/biznessapps/fragments/single/PreviewAppFragment$1;-><init>(Lcom/biznessapps/fragments/single/PreviewAppFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object v0, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->clearTextButton:Landroid/widget/Button;

    new-instance v1, Lcom/biznessapps/fragments/single/PreviewAppFragment$2;

    invoke-direct {v1, p0}, Lcom/biznessapps/fragments/single/PreviewAppFragment$2;-><init>(Lcom/biznessapps/fragments/single/PreviewAppFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v0, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->demoCodeView:Landroid/widget/EditText;

    new-instance v1, Lcom/biznessapps/fragments/single/PreviewAppFragment$3;

    invoke-direct {v1, p0}, Lcom/biznessapps/fragments/single/PreviewAppFragment$3;-><init>(Lcom/biznessapps/fragments/single/PreviewAppFragment;)V

    invoke-static {v1}, Lcom/biznessapps/utils/ViewUtils;->getOnEnterKeyListener(Ljava/lang/Runnable;)Landroid/view/View$OnKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 59
    return-void
.end method

.method private loadDemo()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 62
    iget-object v2, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->demoCodeView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "demoCode":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/PreviewAppFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/biznessapps/layout/R$string;->load_demo_notification:I

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 72
    :goto_0
    return-void

    .line 66
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/PreviewAppFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/biznessapps/layout/MainController;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 67
    .local v1, "myIntent":Landroid/content/Intent;
    const-string v2, "APPCODE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const-string v2, "OPEN_MESSAGE_TAB_PROPERTY"

    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/PreviewAppFragment;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "OPEN_MESSAGE_TAB_PROPERTY"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 69
    invoke-virtual {p0, v1}, Lcom/biznessapps/fragments/single/PreviewAppFragment;->startActivity(Landroid/content/Intent;)V

    .line 70
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/PreviewAppFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method protected hasTitleBar()Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    sget v0, Lcom/biznessapps/layout/R$layout;->preview_changer_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->root:Landroid/view/ViewGroup;

    .line 28
    iget-object v0, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->root:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/biznessapps/fragments/single/PreviewAppFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 29
    iget-object v0, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method
