.class Lcom/netflix/mediaclient/ui/settings/OpenSourceLicensesActivity$OslAdapter;
.super Landroid/widget/BaseAdapter;
.source "OpenSourceLicensesActivity.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/settings/OpenSourceLicensesActivity;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/ui/settings/OpenSourceLicensesActivity;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/settings/OpenSourceLicensesActivity$OslAdapter;->this$0:Lcom/netflix/mediaclient/ui/settings/OpenSourceLicensesActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/ui/settings/OpenSourceLicensesActivity;Lcom/netflix/mediaclient/ui/settings/OpenSourceLicensesActivity$1;)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/settings/OpenSourceLicensesActivity$OslAdapter;-><init>(Lcom/netflix/mediaclient/ui/settings/OpenSourceLicensesActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Lcom/netflix/mediaclient/ui/settings/OpenSourceLicensesActivity;->access$100()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/netflix/mediaclient/ui/settings/OpenSourceLicensesActivity$OslInfo;
    .locals 1

    .prologue
    .line 98
    invoke-static {}, Lcom/netflix/mediaclient/ui/settings/OpenSourceLicensesActivity;->access$100()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/settings/OpenSourceLicensesActivity$OslInfo;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/settings/OpenSourceLicensesActivity$OslAdapter;->getItem(I)Lcom/netflix/mediaclient/ui/settings/OpenSourceLicensesActivity$OslInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 103
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 109
    if-nez p2, :cond_0

    .line 110
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/OpenSourceLicensesActivity$OslAdapter;->this$0:Lcom/netflix/mediaclient/ui/settings/OpenSourceLicensesActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/settings/OpenSourceLicensesActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300c3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 112
    new-instance v2, Lcom/netflix/mediaclient/ui/settings/OpenSourceLicensesActivity$Holder;

    const v0, 0x7f100298

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f100299

    .line 113
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {v2, v0, v1}, Lcom/netflix/mediaclient/ui/settings/OpenSourceLicensesActivity$Holder;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 114
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 117
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/settings/OpenSourceLicensesActivity$Holder;

    .line 118
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/settings/OpenSourceLicensesActivity$OslAdapter;->getItem(I)Lcom/netflix/mediaclient/ui/settings/OpenSourceLicensesActivity$OslInfo;

    move-result-object v1

    .line 119
    iget-object v2, v0, Lcom/netflix/mediaclient/ui/settings/OpenSourceLicensesActivity$Holder;->title:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/netflix/mediaclient/ui/settings/OpenSourceLicensesActivity$OslInfo;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v2, v0, Lcom/netflix/mediaclient/ui/settings/OpenSourceLicensesActivity$Holder;->license:Landroid/widget/TextView;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/settings/OpenSourceLicensesActivity$OslInfo;->license:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, v0, Lcom/netflix/mediaclient/ui/settings/OpenSourceLicensesActivity$Holder;->license:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 124
    return-object p2
.end method
