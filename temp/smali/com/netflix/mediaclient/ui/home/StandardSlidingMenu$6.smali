.class Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$6;
.super Ljava/lang/Object;
.source "StandardSlidingMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$6;->this$0:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 304
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$6;->this$0:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->access$300(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo/LoMoBasics;

    const-string/jumbo v1, "MyListFakeId"

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$6;->this$0:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v3, 0x7f090135

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->INSTANT_QUEUE:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/ui/lolomo/LoMoBasics;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)V

    .line 306
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$6;->this$0:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/ui/lomo/GalleryLomoActivity;->showLomo(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;)V

    .line 308
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$6;->this$0:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->closeDrawers()V

    .line 310
    :cond_0
    return-void
.end method
