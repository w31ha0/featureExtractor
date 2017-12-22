.class public Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$ResultsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DiagnosisActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewHolder"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final context:Landroid/content/Context;

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 294
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$ResultsAdapter;->this$0:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;

    .line 295
    const v0, 0x7f030051

    const v1, 0x7f100191

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 296
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$ResultsAdapter;->context:Landroid/content/Context;

    .line 297
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 356
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$ResultsAdapter;->this$0:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->access$100(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 343
    const-string/jumbo v0, "DiagnosisActivity"

    const-string/jumbo v1, "urlList is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const/4 v0, 0x0

    .line 349
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$ResultsAdapter;->this$0:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->access$100(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    const v8, 0x7f0201c2

    const/4 v7, 0x4

    .line 311
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$ResultsAdapter;->context:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 312
    const v1, 0x7f030051

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 314
    const v0, 0x7f100193

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 315
    const v1, 0x7f100194

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 316
    const v2, 0x7f100192

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 317
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 319
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$ResultsAdapter;->this$0:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;

    invoke-static {v3}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->access$100(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;

    .line 320
    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v0, v5, p1}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$ResultsAdapter;->setTitleText(Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 321
    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;->getStatus()Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;

    move-result-object v5

    sget-object v6, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;->COMPLETED:Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;

    invoke-virtual {v5, v6}, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 322
    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 323
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 324
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 337
    :cond_0
    :goto_0
    return-object v4

    .line 326
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "nw-"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;->getErrorGroup()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, "-"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;->getErrorCode()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    const v0, 0x7f0201c1

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 329
    :cond_2
    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;->getStatus()Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;

    move-result-object v5

    sget-object v6, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;->TEST_ONGOING:Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;

    invoke-virtual {v5, v6}, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 330
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 331
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 332
    :cond_3
    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;->getStatus()Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;

    move-result-object v3

    sget-object v5, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;->NOT_TESTED:Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;

    invoke-virtual {v3, v5}, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 333
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 334
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 335
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTitleText(Landroid/widget/TextView;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 300
    if-eqz p2, :cond_0

    const-string/jumbo v0, "netflix"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    add-int/lit8 v0, p3, 0x1

    .line 302
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$ResultsAdapter;->context:Landroid/content/Context;

    const v1, 0x7f090136

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 303
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    :goto_0
    return-void

    .line 305
    :cond_0
    const v0, 0x7f090122

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
