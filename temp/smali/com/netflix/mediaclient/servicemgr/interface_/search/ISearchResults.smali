.class public interface abstract Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;
.super Ljava/lang/Object;
.source "ISearchResults.java"


# virtual methods
.method public abstract getNumResults()I
.end method

.method public abstract getNumResultsPeople()I
.end method

.method public abstract getNumResultsSuggestions()I
.end method

.method public abstract getNumResultsVideos()I
.end method

.method public abstract getNumSections()I
.end method

.method public abstract getPeopleListTrackable()Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;
.end method

.method public abstract getResultsPeople(I)Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchPerson;
.end method

.method public abstract getResultsSuggestions(I)Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchSuggestion;
.end method

.method public abstract getResultsVideos(I)Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchVideo;
.end method

.method public abstract getResultsVideos()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchVideo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSuggestionsListTrackable()Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;
.end method

.method public abstract getVideosListTrackable()Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;
.end method

.method public abstract hasResults()Z
.end method
