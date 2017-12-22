.class public Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;
.super Landroid/support/v7/app/AlertDialog$Builder;
.source "MdxTargetSelectionDialog.java"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final adapterWrapper:Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$TargetsAdapter;

.field private final content:Landroid/view/View;

.field private final listView:Landroid/widget/ListView;

.field private onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private final title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 48
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;->activity:Landroid/app/Activity;

    .line 50
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 51
    const v0, 0x7f03009f

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;->content:Landroid/view/View;

    .line 53
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;->content:Landroid/view/View;

    const v2, 0x7f100237

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;->title:Landroid/widget/TextView;

    .line 54
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;->content:Landroid/view/View;

    const v2, 0x7f100244

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;->listView:Landroid/widget/ListView;

    .line 56
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$TargetsAdapter;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$TargetsAdapter;-><init>(Landroid/view/LayoutInflater;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;->adapterWrapper:Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$TargetsAdapter;

    .line 57
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;->adapterWrapper:Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$TargetsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 58
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;)Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$TargetsAdapter;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;->adapterWrapper:Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$TargetsAdapter;

    return-object v0
.end method


# virtual methods
.method public create()Landroid/support/v7/app/AlertDialog;
    .locals 3

    .prologue
    .line 95
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;->activity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$1;)V

    .line 96
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;->content:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 97
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 98
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;->onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;->onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 101
    :cond_0
    return-object v0
.end method

.method public setAdapterData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;->adapterWrapper:Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$TargetsAdapter;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$TargetsAdapter;->setData(Ljava/util/List;)V

    .line 75
    return-void
.end method

.method public bridge synthetic setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;->onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 70
    return-object p0
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder$1;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder$1;-><init>(Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 91
    return-void
.end method

.method public setSelection(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;->adapterWrapper:Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$TargetsAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$TargetsAdapter;->setSelected(ILjava/lang/String;)V

    .line 79
    return-void
.end method

.method public bridge synthetic setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;->setTitle(I)Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(I)Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;->title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 64
    return-object p0
.end method
