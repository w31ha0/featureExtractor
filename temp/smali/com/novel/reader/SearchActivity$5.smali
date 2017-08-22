.class Lcom/novel/reader/SearchActivity$5;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/support/v7/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novel/reader/SearchActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novel/reader/SearchActivity;

.field final synthetic val$menu:Landroid/view/Menu;


# direct methods
.method constructor <init>(Lcom/novel/reader/SearchActivity;Landroid/view/Menu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/novel/reader/SearchActivity;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/novel/reader/SearchActivity$5;->this$0:Lcom/novel/reader/SearchActivity;

    iput-object p2, p0, Lcom/novel/reader/SearchActivity$5;->val$menu:Landroid/view/Menu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private loadHistory(Ljava/lang/String;)V
    .locals 5
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 301
    new-instance v0, Lcom/novel/db/SQLiteNovel;

    iget-object v2, p0, Lcom/novel/reader/SearchActivity$5;->this$0:Lcom/novel/reader/SearchActivity;

    invoke-direct {v0, v2}, Lcom/novel/db/SQLiteNovel;-><init>(Landroid/content/Context;)V

    .line 302
    .local v0, "db":Lcom/novel/db/SQLiteNovel;
    iget-object v2, p0, Lcom/novel/reader/SearchActivity$5;->val$menu:Landroid/view/Menu;

    const v3, 0x7f0e0159

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/SearchView;

    .line 303
    .local v1, "search":Landroid/support/v7/widget/SearchView;
    new-instance v2, Lcom/novel/reader/adapter/RecentSearchAdapter;

    iget-object v3, p0, Lcom/novel/reader/SearchActivity$5;->this$0:Lcom/novel/reader/SearchActivity;

    const/16 v4, 0x64

    invoke-virtual {v0, v4, p1}, Lcom/novel/db/SQLiteNovel;->getLastQueryHistory(ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/novel/reader/adapter/RecentSearchAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SearchView;->setSuggestionsAdapter(Landroid/support/v4/widget/CursorAdapter;)V

    .line 304
    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/novel/reader/SearchActivity$5;->loadHistory(Ljava/lang/String;)V

    .line 297
    const/4 v0, 0x1

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 7
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 280
    iget-object v1, p0, Lcom/novel/reader/SearchActivity$5;->this$0:Lcom/novel/reader/SearchActivity;

    invoke-static {v1, p1}, Lcom/novel/reader/SearchActivity;->access$102(Lcom/novel/reader/SearchActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 281
    iget-object v1, p0, Lcom/novel/reader/SearchActivity$5;->this$0:Lcom/novel/reader/SearchActivity;

    invoke-static {v1}, Lcom/novel/reader/SearchActivity;->access$600(Lcom/novel/reader/SearchActivity;)Landroid/support/v7/app/ActionBar;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/novel/reader/SearchActivity$5;->this$0:Lcom/novel/reader/SearchActivity;

    const v4, 0x7f070072

    invoke-virtual {v3, v4}, Lcom/novel/reader/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/novel/reader/SearchActivity$5;->this$0:Lcom/novel/reader/SearchActivity;

    invoke-static {v3}, Lcom/novel/reader/SearchActivity;->access$100(Lcom/novel/reader/SearchActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v1, p0, Lcom/novel/reader/SearchActivity$5;->this$0:Lcom/novel/reader/SearchActivity;

    invoke-static {v1, v6}, Lcom/novel/reader/SearchActivity;->access$302(Lcom/novel/reader/SearchActivity;I)I

    .line 283
    iget-object v1, p0, Lcom/novel/reader/SearchActivity$5;->this$0:Lcom/novel/reader/SearchActivity;

    invoke-static {v1}, Lcom/novel/reader/SearchActivity;->access$700(Lcom/novel/reader/SearchActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 284
    iget-object v1, p0, Lcom/novel/reader/SearchActivity$5;->this$0:Lcom/novel/reader/SearchActivity;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Lcom/novel/reader/SearchActivity;->access$002(Lcom/novel/reader/SearchActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 285
    new-instance v1, Lcom/novel/reader/SearchActivity$LoadDataTask;

    iget-object v2, p0, Lcom/novel/reader/SearchActivity$5;->this$0:Lcom/novel/reader/SearchActivity;

    invoke-direct {v1, v2}, Lcom/novel/reader/SearchActivity$LoadDataTask;-><init>(Lcom/novel/reader/SearchActivity;)V

    new-array v2, v5, [Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lcom/novel/reader/SearchActivity$LoadDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 287
    new-instance v0, Lcom/novel/db/SQLiteNovel;

    iget-object v1, p0, Lcom/novel/reader/SearchActivity$5;->this$0:Lcom/novel/reader/SearchActivity;

    invoke-direct {v0, v1}, Lcom/novel/db/SQLiteNovel;-><init>(Landroid/content/Context;)V

    .line 288
    .local v0, "db":Lcom/novel/db/SQLiteNovel;
    iget-object v1, p0, Lcom/novel/reader/SearchActivity$5;->this$0:Lcom/novel/reader/SearchActivity;

    invoke-static {v1}, Lcom/novel/reader/SearchActivity;->access$100(Lcom/novel/reader/SearchActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/novel/db/SQLiteNovel;->deleteQueryHistory(Ljava/lang/String;)V

    .line 289
    iget-object v1, p0, Lcom/novel/reader/SearchActivity$5;->this$0:Lcom/novel/reader/SearchActivity;

    invoke-static {v1}, Lcom/novel/reader/SearchActivity;->access$100(Lcom/novel/reader/SearchActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/novel/db/SQLiteNovel;->insertQueryHistory(Ljava/lang/String;)J

    .line 291
    return v6
.end method
