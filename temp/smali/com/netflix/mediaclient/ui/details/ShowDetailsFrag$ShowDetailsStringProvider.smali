.class public Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag$ShowDetailsStringProvider;
.super Ljava/lang/Object;
.source "ShowDetailsFrag.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$DetailsStringProvider;


# instance fields
.field private final context:Landroid/content/Context;

.field private final details:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;)V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag$ShowDetailsStringProvider;->context:Landroid/content/Context;

    .line 118
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag$ShowDetailsStringProvider;->details:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    .line 119
    return-void
.end method


# virtual methods
.method public getBasicInfoString()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag$ShowDetailsStringProvider;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag$ShowDetailsStringProvider;->details:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/StringUtils;->getBasicShowInfoString(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getCreatorsText()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag$ShowDetailsStringProvider;->details:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getCreators()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    const/4 v0, 0x0

    .line 132
    :goto_0
    return-object v0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag$ShowDetailsStringProvider;->context:Landroid/content/Context;

    const v1, 0x7f0900ca

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;->getFormatter(Landroid/content/Context;I)Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag$ShowDetailsStringProvider;->details:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getNumCreators()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;->withQuantity(I)Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;->format()Ljava/lang/String;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag$ShowDetailsStringProvider;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag$ShowDetailsStringProvider;->details:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getCreators()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/netflix/mediaclient/util/StringUtils;->createBoldLabeledText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getGenresText()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag$ShowDetailsStringProvider;->details:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getGenres()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    const/4 v0, 0x0

    .line 145
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag$ShowDetailsStringProvider;->context:Landroid/content/Context;

    const v1, 0x7f09011c

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag$ShowDetailsStringProvider;->details:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getGenres()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/StringUtils;->createBoldLabeledText(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getStarringText()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag$ShowDetailsStringProvider;->context:Landroid/content/Context;

    const v1, 0x7f0901a6

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag$ShowDetailsStringProvider;->details:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getActors()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/StringUtils;->createBoldLabeledText(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
