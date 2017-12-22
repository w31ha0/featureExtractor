.class final Lcom/netflix/mediaclient/ui/ums/EogLandingPage$1;
.super Landroid/text/style/ClickableSpan;
.source "EogLandingPage.java"


# instance fields
.field final synthetic val$context:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage$1;->val$context:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 114
    new-instance v0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage$1$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/ums/EogLandingPage$1$1;-><init>(Lcom/netflix/mediaclient/ui/ums/EogLandingPage$1;)V

    .line 140
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/ums/EogLandingPage$1$1;->run()V

    .line 141
    return-void
.end method
