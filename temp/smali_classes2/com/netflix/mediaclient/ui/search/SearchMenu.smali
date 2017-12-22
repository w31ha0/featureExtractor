.class public Lcom/netflix/mediaclient/ui/search/SearchMenu;
.super Ljava/lang/Object;
.source "SearchMenu.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSearchNavigation(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/view/Menu;Z)Landroid/view/MenuItem;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 18
    if-eqz p2, :cond_0

    const v0, 0x7f0201b5

    .line 19
    :goto_0
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 21
    invoke-static {p0, v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->manageActionBarIcon(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;)V

    .line 23
    const v1, 0x7f100001

    const v2, 0x7f090263

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 24
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v0

    .line 25
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->create(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    .line 26
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 23
    return-object v0

    .line 18
    :cond_0
    const v0, 0x7f0201b4

    goto :goto_0
.end method
