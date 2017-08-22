.class Lcom/novel/reader/SearchActivity$4;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/support/v7/widget/SearchView$OnSuggestionListener;


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

.field final synthetic val$searchMenuItem:Landroid/view/MenuItem;

.field final synthetic val$searchView:Landroid/support/v7/widget/SearchView;


# direct methods
.method constructor <init>(Lcom/novel/reader/SearchActivity;Landroid/support/v7/widget/SearchView;Landroid/view/MenuItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/novel/reader/SearchActivity;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/novel/reader/SearchActivity$4;->this$0:Lcom/novel/reader/SearchActivity;

    iput-object p2, p0, Lcom/novel/reader/SearchActivity$4;->val$searchView:Landroid/support/v7/widget/SearchView;

    iput-object p3, p0, Lcom/novel/reader/SearchActivity$4;->val$searchMenuItem:Landroid/view/MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuggestionClick(I)Z
    .locals 9
    .param p1, "position"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 259
    iget-object v3, p0, Lcom/novel/reader/SearchActivity$4;->val$searchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v3}, Landroid/support/v7/widget/SearchView;->getSuggestionsAdapter()Landroid/support/v4/widget/CursorAdapter;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 260
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 262
    .local v2, "query":Ljava/lang/String;
    iget-object v3, p0, Lcom/novel/reader/SearchActivity$4;->this$0:Lcom/novel/reader/SearchActivity;

    invoke-static {v3, v2}, Lcom/novel/reader/SearchActivity;->access$102(Lcom/novel/reader/SearchActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 263
    iget-object v3, p0, Lcom/novel/reader/SearchActivity$4;->this$0:Lcom/novel/reader/SearchActivity;

    invoke-static {v3}, Lcom/novel/reader/SearchActivity;->access$600(Lcom/novel/reader/SearchActivity;)Landroid/support/v7/app/ActionBar;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/novel/reader/SearchActivity$4;->this$0:Lcom/novel/reader/SearchActivity;

    const v6, 0x7f070072

    invoke-virtual {v5, v6}, Lcom/novel/reader/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/novel/reader/SearchActivity$4;->this$0:Lcom/novel/reader/SearchActivity;

    invoke-static {v5}, Lcom/novel/reader/SearchActivity;->access$100(Lcom/novel/reader/SearchActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v3, p0, Lcom/novel/reader/SearchActivity$4;->this$0:Lcom/novel/reader/SearchActivity;

    invoke-static {v3, v7}, Lcom/novel/reader/SearchActivity;->access$302(Lcom/novel/reader/SearchActivity;I)I

    .line 265
    iget-object v3, p0, Lcom/novel/reader/SearchActivity$4;->this$0:Lcom/novel/reader/SearchActivity;

    invoke-static {v3}, Lcom/novel/reader/SearchActivity;->access$700(Lcom/novel/reader/SearchActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 266
    iget-object v3, p0, Lcom/novel/reader/SearchActivity$4;->this$0:Lcom/novel/reader/SearchActivity;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3, v4}, Lcom/novel/reader/SearchActivity;->access$002(Lcom/novel/reader/SearchActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 267
    new-instance v3, Lcom/novel/reader/SearchActivity$LoadDataTask;

    iget-object v4, p0, Lcom/novel/reader/SearchActivity$4;->this$0:Lcom/novel/reader/SearchActivity;

    invoke-direct {v3, v4}, Lcom/novel/reader/SearchActivity$LoadDataTask;-><init>(Lcom/novel/reader/SearchActivity;)V

    new-array v4, v8, [Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Lcom/novel/reader/SearchActivity$LoadDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 268
    iget-object v3, p0, Lcom/novel/reader/SearchActivity$4;->val$searchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v3}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 270
    new-instance v1, Lcom/novel/db/SQLiteNovel;

    iget-object v3, p0, Lcom/novel/reader/SearchActivity$4;->this$0:Lcom/novel/reader/SearchActivity;

    invoke-direct {v1, v3}, Lcom/novel/db/SQLiteNovel;-><init>(Landroid/content/Context;)V

    .line 271
    .local v1, "db":Lcom/novel/db/SQLiteNovel;
    iget-object v3, p0, Lcom/novel/reader/SearchActivity$4;->this$0:Lcom/novel/reader/SearchActivity;

    invoke-static {v3}, Lcom/novel/reader/SearchActivity;->access$100(Lcom/novel/reader/SearchActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/novel/db/SQLiteNovel;->deleteQueryHistory(Ljava/lang/String;)V

    .line 272
    iget-object v3, p0, Lcom/novel/reader/SearchActivity$4;->this$0:Lcom/novel/reader/SearchActivity;

    invoke-static {v3}, Lcom/novel/reader/SearchActivity;->access$100(Lcom/novel/reader/SearchActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/novel/db/SQLiteNovel;->insertQueryHistory(Ljava/lang/String;)J

    .line 273
    return v7
.end method

.method public onSuggestionSelect(I)Z
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 253
    const/4 v0, 0x0

    return v0
.end method
