.class Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow$1;
.super Ljava/lang/Object;
.source "BarkerShowDetailsFrag.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;)V
    .locals 0

    .prologue
    .line 1091
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow$1;->this$1:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow$1;->this$1:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;->access$3300(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;)V

    .line 1095
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow$1;->this$1:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;->access$3500(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow$1;->this$1:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;->access$3400(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1096
    return-void
.end method
