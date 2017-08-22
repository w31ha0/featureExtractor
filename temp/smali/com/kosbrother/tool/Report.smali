.class public Lcom/kosbrother/tool/Report;
.super Ljava/lang/Object;
.source "Report.java"


# static fields
.field private static dialog:Landroid/app/AlertDialog;

.field static mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createReportDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "act"    # Landroid/app/Activity;
    .param p1, "novelName"    # Ljava/lang/String;
    .param p2, "article"    # Ljava/lang/String;

    .prologue
    .line 23
    sput-object p0, Lcom/kosbrother/tool/Report;->mActivity:Landroid/app/Activity;

    .line 24
    invoke-static {p1, p2}, Lcom/kosbrother/tool/Report;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public static createReportDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "act"    # Landroid/app/Activity;
    .param p1, "novelName"    # Ljava/lang/String;
    .param p2, "article"    # Ljava/lang/String;
    .param p3, "problem"    # Ljava/lang/String;

    .prologue
    .line 28
    sput-object p0, Lcom/kosbrother/tool/Report;->mActivity:Landroid/app/Activity;

    .line 29
    invoke-static {p1, p2, p3}, Lcom/kosbrother/tool/Report;->showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method private static showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "novelName"    # Ljava/lang/String;
    .param p1, "article"    # Ljava/lang/String;

    .prologue
    .line 73
    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcom/kosbrother/tool/Report;->showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method private static showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p0, "novelName"    # Ljava/lang/String;
    .param p1, "article"    # Ljava/lang/String;
    .param p2, "problem"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 33
    sget-object v6, Lcom/kosbrother/tool/Report;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 34
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f030031

    invoke-virtual {v2, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 36
    .local v5, "recomendLayout":Landroid/widget/LinearLayout;
    const v6, 0x7f0e00af

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 37
    .local v3, "novelNameEditText":Landroid/widget/EditText;
    const v6, 0x7f0e00b1

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 38
    .local v1, "articleEditText":Landroid/widget/EditText;
    const v6, 0x7f0e00b3

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 40
    .local v4, "problemEditText":Landroid/widget/EditText;
    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 41
    invoke-virtual {v3, p0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 42
    invoke-virtual {v4, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 43
    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 45
    new-instance v6, Landroid/app/AlertDialog$Builder;

    sget-object v7, Lcom/kosbrother/tool/Report;->mActivity:Landroid/app/Activity;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-object v7, Lcom/kosbrother/tool/Report;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0700c6

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0200a6

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    sget-object v7, Lcom/kosbrother/tool/Report;->mActivity:Landroid/app/Activity;

    .line 46
    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0700bb

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/kosbrother/tool/Report$1;

    invoke-direct {v8, v4, v3, v1}, Lcom/kosbrother/tool/Report$1;-><init>(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    sget-object v7, Lcom/kosbrother/tool/Report;->mActivity:Landroid/app/Activity;

    .line 66
    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0700b9

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 67
    .local v0, "a":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 68
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    sput-object v6, Lcom/kosbrother/tool/Report;->dialog:Landroid/app/AlertDialog;

    .line 69
    sget-object v6, Lcom/kosbrother/tool/Report;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 70
    return-void
.end method
