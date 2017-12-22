.class Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$6;
.super Ljava/lang/Object;
.source "MovieDetailsFrag.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$DetailsStringProvider;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

.field final synthetic val$details:Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$6;->this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$6;->val$details:Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBasicInfoString()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$6;->this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$6;->val$details:Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/StringUtils;->getBasicMovieInfoString(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getCreatorsText()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 385
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$6;->val$details:Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;->getDirectors()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    const/4 v0, 0x0

    .line 389
    :goto_0
    return-object v0

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$6;->this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090101

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;->getFormatter(Landroid/content/Context;I)Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$6;->val$details:Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;->getNumDirectors()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;->withQuantity(I)Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;->format()Ljava/lang/String;

    move-result-object v0

    .line 389
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$6;->this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$6;->val$details:Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;->getDirectors()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/netflix/mediaclient/util/StringUtils;->createBoldLabeledText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getGenresText()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 399
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$6;->val$details:Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;->getGenres()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    const/4 v0, 0x0

    .line 402
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$6;->this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f09011c

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$6;->val$details:Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;->getGenres()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/StringUtils;->createBoldLabeledText(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getStarringText()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 394
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$6;->this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0901a6

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$6;->val$details:Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;->getActors()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/StringUtils;->createBoldLabeledText(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
