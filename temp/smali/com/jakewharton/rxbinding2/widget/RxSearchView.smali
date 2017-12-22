.class public final Lcom/jakewharton/rxbinding2/widget/RxSearchView;
.super Ljava/lang/Object;
.source "RxSearchView.java"


# direct methods
.method public static queryTextChanges(Landroid/widget/SearchView;)Lcom/jakewharton/rxbinding2/InitialValueObservable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/SearchView;",
            ")",
            "Lcom/jakewharton/rxbinding2/InitialValueObservable",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    const-string/jumbo v0, "view == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding2/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v0, Lcom/jakewharton/rxbinding2/widget/SearchViewQueryTextChangesObservable;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding2/widget/SearchViewQueryTextChangesObservable;-><init>(Landroid/widget/SearchView;)V

    return-object v0
.end method
