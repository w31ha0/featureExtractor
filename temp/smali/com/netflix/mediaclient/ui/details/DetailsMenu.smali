.class public Lcom/netflix/mediaclient/ui/details/DetailsMenu;
.super Ljava/lang/Object;
.source "DetailsMenu.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public static addItems(Lcom/netflix/mediaclient/ui/details/DetailsActivity;Landroid/view/Menu;Z)V
    .locals 0

    .prologue
    .line 14
    invoke-static {p0, p1, p2}, Lcom/netflix/mediaclient/ui/search/SearchMenu;->addSearchNavigation(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/view/Menu;Z)Landroid/view/MenuItem;

    .line 15
    return-void
.end method
