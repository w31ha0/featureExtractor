.class Lcom/novel/reader/NovelIntroduceActivity$6;
.super Ljava/lang/Object;
.source "NovelIntroduceActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novel/reader/NovelIntroduceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novel/reader/NovelIntroduceActivity;

.field final synthetic val$menu:Landroid/view/Menu;

.field final synthetic val$searchMenuItem:Landroid/view/MenuItem;

.field final synthetic val$searchView:Landroid/support/v7/widget/SearchView;


# direct methods
.method constructor <init>(Lcom/novel/reader/NovelIntroduceActivity;Landroid/view/Menu;Landroid/view/MenuItem;Landroid/support/v7/widget/SearchView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/novel/reader/NovelIntroduceActivity;

    .prologue
    .line 330
    iput-object p1, p0, Lcom/novel/reader/NovelIntroduceActivity$6;->this$0:Lcom/novel/reader/NovelIntroduceActivity;

    iput-object p2, p0, Lcom/novel/reader/NovelIntroduceActivity$6;->val$menu:Landroid/view/Menu;

    iput-object p3, p0, Lcom/novel/reader/NovelIntroduceActivity$6;->val$searchMenuItem:Landroid/view/MenuItem;

    iput-object p4, p0, Lcom/novel/reader/NovelIntroduceActivity$6;->val$searchView:Landroid/support/v7/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "queryTextFocused"    # Z

    .prologue
    .line 333
    if-eqz p2, :cond_0

    .line 334
    new-instance v0, Lcom/novel/db/SQLiteNovel;

    iget-object v2, p0, Lcom/novel/reader/NovelIntroduceActivity$6;->this$0:Lcom/novel/reader/NovelIntroduceActivity;

    invoke-direct {v0, v2}, Lcom/novel/db/SQLiteNovel;-><init>(Landroid/content/Context;)V

    .line 335
    .local v0, "db":Lcom/novel/db/SQLiteNovel;
    iget-object v2, p0, Lcom/novel/reader/NovelIntroduceActivity$6;->val$menu:Landroid/view/Menu;

    const v3, 0x7f0e0159

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/SearchView;

    .line 336
    .local v1, "search":Landroid/support/v7/widget/SearchView;
    new-instance v2, Lcom/novel/reader/adapter/RecentSearchAdapter;

    iget-object v3, p0, Lcom/novel/reader/NovelIntroduceActivity$6;->this$0:Lcom/novel/reader/NovelIntroduceActivity;

    const/16 v4, 0x64

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Lcom/novel/db/SQLiteNovel;->getLastQueryHistory(ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/novel/reader/adapter/RecentSearchAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SearchView;->setSuggestionsAdapter(Landroid/support/v4/widget/CursorAdapter;)V

    .line 341
    .end local v0    # "db":Lcom/novel/db/SQLiteNovel;
    .end local v1    # "search":Landroid/support/v7/widget/SearchView;
    :goto_0
    return-void

    .line 338
    :cond_0
    iget-object v2, p0, Lcom/novel/reader/NovelIntroduceActivity$6;->val$searchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 339
    iget-object v2, p0, Lcom/novel/reader/NovelIntroduceActivity$6;->val$searchView:Landroid/support/v7/widget/SearchView;

    const-string v3, ""

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method
