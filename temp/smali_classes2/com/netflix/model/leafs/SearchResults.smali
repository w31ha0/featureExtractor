.class public Lcom/netflix/model/leafs/SearchResults;
.super Ljava/lang/Object;
.source "SearchResults.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;


# instance fields
.field private people:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchPerson;",
            ">;"
        }
    .end annotation
.end field

.field private peopleListSummary:Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;

.field private final sectionsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private suggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchSuggestion;",
            ">;"
        }
    .end annotation
.end field

.field private suggestionsListSummary:Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;

.field private videoListSummary:Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;

.field private videos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchVideo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/netflix/model/leafs/SearchResults;->sectionsList:Ljava/util/List;

    .line 33
    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/model/leafs/SearchResults$1;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/netflix/model/leafs/SearchResults;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/model/leafs/SearchResults;)Ljava/util/List;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults;->videos:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$102(Lcom/netflix/model/leafs/SearchResults;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/netflix/model/leafs/SearchResults;->videos:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcom/netflix/model/leafs/SearchResults;)Ljava/util/List;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults;->sectionsList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/model/leafs/SearchResults;)Ljava/util/List;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults;->people:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$302(Lcom/netflix/model/leafs/SearchResults;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/netflix/model/leafs/SearchResults;->people:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$400(Lcom/netflix/model/leafs/SearchResults;)Ljava/util/List;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults;->suggestions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$402(Lcom/netflix/model/leafs/SearchResults;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/netflix/model/leafs/SearchResults;->suggestions:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$502(Lcom/netflix/model/leafs/SearchResults;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;)Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/netflix/model/leafs/SearchResults;->videoListSummary:Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;

    return-object p1
.end method

.method static synthetic access$602(Lcom/netflix/model/leafs/SearchResults;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;)Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/netflix/model/leafs/SearchResults;->peopleListSummary:Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;

    return-object p1
.end method

.method static synthetic access$702(Lcom/netflix/model/leafs/SearchResults;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;)Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/netflix/model/leafs/SearchResults;->suggestionsListSummary:Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;

    return-object p1
.end method

.method private hasPeople()Z
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults;->people:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults;->people:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasSuggestions()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults;->suggestions:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults;->suggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasVideos()Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults;->videos:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults;->videos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getNumResults()I
    .locals 3

    .prologue
    .line 37
    const/4 v0, 0x0

    .line 38
    iget-object v1, p0, Lcom/netflix/model/leafs/SearchResults;->sectionsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 39
    check-cast v0, Ljava/util/List;

    .line 40
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    return v1
.end method

.method public getNumResultsPeople()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults;->people:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults;->people:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getNumResultsSuggestions()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults;->suggestions:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults;->suggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getNumResultsVideos()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults;->videos:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults;->videos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getNumSections()I
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults;->sectionsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPeopleListTrackable()Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults;->peopleListSummary:Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;

    return-object v0
.end method

.method public getResultsPeople(I)Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchPerson;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults;->people:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults;->people:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults;->people:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchPerson;

    .line 65
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResultsSuggestions(I)Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchSuggestion;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults;->suggestions:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults;->suggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults;->suggestions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchSuggestion;

    .line 88
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResultsVideos(I)Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchVideo;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults;->videos:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults;->videos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults;->videos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchVideo;

    .line 79
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResultsVideos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchVideo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults;->videos:Ljava/util/List;

    return-object v0
.end method

.method public getSuggestionsListTrackable()Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults;->suggestionsListSummary:Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;

    return-object v0
.end method

.method public getVideosListTrackable()Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults;->videoListSummary:Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;

    return-object v0
.end method

.method public hasResults()Z
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/netflix/model/leafs/SearchResults;->hasVideos()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/netflix/model/leafs/SearchResults;->hasPeople()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/netflix/model/leafs/SearchResults;->hasSuggestions()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
