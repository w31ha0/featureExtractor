.class Lcom/novel/reader/MainActivity$8;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/support/v7/widget/SearchView$OnSuggestionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novel/reader/MainActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novel/reader/MainActivity;

.field final synthetic val$searchMenuItem:Landroid/view/MenuItem;

.field final synthetic val$searchView:Landroid/support/v7/widget/SearchView;


# direct methods
.method constructor <init>(Lcom/novel/reader/MainActivity;Landroid/support/v7/widget/SearchView;Landroid/view/MenuItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/novel/reader/MainActivity;

    .prologue
    .line 393
    iput-object p1, p0, Lcom/novel/reader/MainActivity$8;->this$0:Lcom/novel/reader/MainActivity;

    iput-object p2, p0, Lcom/novel/reader/MainActivity$8;->val$searchView:Landroid/support/v7/widget/SearchView;

    iput-object p3, p0, Lcom/novel/reader/MainActivity$8;->val$searchMenuItem:Landroid/view/MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuggestionClick(I)Z
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v6, 0x1

    .line 402
    iget-object v4, p0, Lcom/novel/reader/MainActivity$8;->val$searchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v4}, Landroid/support/v7/widget/SearchView;->getSuggestionsAdapter()Landroid/support/v4/widget/CursorAdapter;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/support/v4/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 403
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 405
    .local v3, "query":Ljava/lang/String;
    iget-object v4, p0, Lcom/novel/reader/MainActivity$8;->val$searchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v4}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 407
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 408
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "SearchKeyword"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 410
    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/novel/reader/MainActivity$8;->this$0:Lcom/novel/reader/MainActivity;

    const-class v5, Lcom/novel/reader/SearchActivity;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 411
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 412
    iget-object v4, p0, Lcom/novel/reader/MainActivity$8;->this$0:Lcom/novel/reader/MainActivity;

    invoke-virtual {v4, v2}, Lcom/novel/reader/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 413
    return v6
.end method

.method public onSuggestionSelect(I)Z
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 396
    const/4 v0, 0x0

    return v0
.end method
