.class Lcom/novel/reader/CategoryActivity$4;
.super Ljava/lang/Object;
.source "CategoryActivity.java"

# interfaces
.implements Landroid/support/v7/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novel/reader/CategoryActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novel/reader/CategoryActivity;

.field final synthetic val$menu:Landroid/view/Menu;


# direct methods
.method constructor <init>(Lcom/novel/reader/CategoryActivity;Landroid/view/Menu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/novel/reader/CategoryActivity;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/novel/reader/CategoryActivity$4;->this$0:Lcom/novel/reader/CategoryActivity;

    iput-object p2, p0, Lcom/novel/reader/CategoryActivity$4;->val$menu:Landroid/view/Menu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private loadHistory(Ljava/lang/String;)V
    .locals 5
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 197
    new-instance v0, Lcom/novel/db/SQLiteNovel;

    iget-object v2, p0, Lcom/novel/reader/CategoryActivity$4;->this$0:Lcom/novel/reader/CategoryActivity;

    invoke-direct {v0, v2}, Lcom/novel/db/SQLiteNovel;-><init>(Landroid/content/Context;)V

    .line 198
    .local v0, "db":Lcom/novel/db/SQLiteNovel;
    iget-object v2, p0, Lcom/novel/reader/CategoryActivity$4;->val$menu:Landroid/view/Menu;

    const v3, 0x7f0e0159

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/SearchView;

    .line 199
    .local v1, "search":Landroid/support/v7/widget/SearchView;
    new-instance v2, Lcom/novel/reader/adapter/RecentSearchAdapter;

    iget-object v3, p0, Lcom/novel/reader/CategoryActivity$4;->this$0:Lcom/novel/reader/CategoryActivity;

    const/16 v4, 0x64

    invoke-virtual {v0, v4, p1}, Lcom/novel/db/SQLiteNovel;->getLastQueryHistory(ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/novel/reader/adapter/RecentSearchAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SearchView;->setSuggestionsAdapter(Landroid/support/v4/widget/CursorAdapter;)V

    .line 200
    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 192
    invoke-direct {p0, p1}, Lcom/novel/reader/CategoryActivity$4;->loadHistory(Ljava/lang/String;)V

    .line 193
    const/4 v0, 0x1

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 181
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 182
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "SearchKeyword"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 184
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/novel/reader/CategoryActivity$4;->this$0:Lcom/novel/reader/CategoryActivity;

    const-class v3, Lcom/novel/reader/SearchActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 185
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 186
    iget-object v2, p0, Lcom/novel/reader/CategoryActivity$4;->this$0:Lcom/novel/reader/CategoryActivity;

    invoke-virtual {v2, v1}, Lcom/novel/reader/CategoryActivity;->startActivity(Landroid/content/Intent;)V

    .line 187
    const/4 v2, 0x1

    return v2
.end method
