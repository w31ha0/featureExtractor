.class Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$4;
.super Ljava/lang/Object;
.source "GalleryLoMoFrag.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$4;->this$0:Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$4;->this$0:Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$4;->this$0:Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$4;->this$0:Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->createStartIntent(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->startActivity(Landroid/content/Intent;)V

    .line 255
    :cond_0
    return-void
.end method
