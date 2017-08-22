.class public Lcom/kosbrother/tool/RecommendNovelDialog;
.super Ljava/lang/Object;
.source "RecommendNovelDialog.java"


# static fields
.field private static dialog:Landroid/app/AlertDialog;

.field static mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createReportDialog(Landroid/app/Activity;)V
    .locals 0
    .param p0, "act"    # Landroid/app/Activity;

    .prologue
    .line 22
    sput-object p0, Lcom/kosbrother/tool/RecommendNovelDialog;->mActivity:Landroid/app/Activity;

    .line 23
    invoke-static {}, Lcom/kosbrother/tool/RecommendNovelDialog;->showDialog()V

    .line 24
    return-void
.end method

.method private static showDialog()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 27
    sget-object v5, Lcom/kosbrother/tool/RecommendNovelDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 28
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f030030

    invoke-virtual {v1, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 30
    .local v4, "recomendLayout":Landroid/widget/LinearLayout;
    const v5, 0x7f0e00af

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 31
    .local v3, "novelNameEditText":Landroid/widget/EditText;
    const v5, 0x7f0e00b0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 34
    .local v2, "novelAuthorEditText":Landroid/widget/EditText;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    sget-object v6, Lcom/kosbrother/tool/RecommendNovelDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-object v6, Lcom/kosbrother/tool/RecommendNovelDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07006d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0200a6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    sget-object v6, Lcom/kosbrother/tool/RecommendNovelDialog;->mActivity:Landroid/app/Activity;

    .line 35
    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0700bb

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/kosbrother/tool/RecommendNovelDialog$1;

    invoke-direct {v7, v3, v2}, Lcom/kosbrother/tool/RecommendNovelDialog$1;-><init>(Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    sget-object v6, Lcom/kosbrother/tool/RecommendNovelDialog;->mActivity:Landroid/app/Activity;

    .line 48
    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0700b9

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 49
    .local v0, "a":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 50
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    sput-object v5, Lcom/kosbrother/tool/RecommendNovelDialog;->dialog:Landroid/app/AlertDialog;

    .line 51
    sget-object v5, Lcom/kosbrother/tool/RecommendNovelDialog;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 52
    return-void
.end method
