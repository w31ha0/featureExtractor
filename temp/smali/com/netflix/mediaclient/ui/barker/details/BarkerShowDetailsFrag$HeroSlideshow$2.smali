.class Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow$2;
.super Ljava/lang/Object;
.source "BarkerShowDetailsFrag.java"

# interfaces
.implements Lcom/netflix/mediaclient/util/gfx/ImageLoader$ImageLoaderListener;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;)V
    .locals 0

    .prologue
    .line 1149
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow$2;->this$1:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setImage(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Lcom/netflix/mediaclient/android/widget/AdvancedImageView;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x7d0

    .line 1164
    invoke-virtual {p4}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 1165
    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_0

    .line 1176
    :goto_0
    return-void

    .line 1169
    :cond_0
    invoke-virtual {p3, p1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setTag(Ljava/lang/Object;)V

    .line 1170
    invoke-virtual {p3, p2}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1171
    invoke-virtual {p3}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1172
    invoke-virtual {p4}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1174
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow$2;->this$1:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow$2;->this$1:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;->access$4200(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;->access$4202(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;Z)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onErrorResponse(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow$2;->this$1:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;->access$4502(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;I)I

    .line 1184
    return-void
.end method

.method public onResponse(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1154
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow$2;->this$1:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;->access$4100(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1155
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow$2;->this$1:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;->access$4200(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1156
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow$2;->this$1:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;->access$4300(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;)Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow$2;->this$1:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;->access$4400(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;)Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    move-result-object v1

    invoke-direct {p0, p2, p1, v0, v1}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow$2;->setImage(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Lcom/netflix/mediaclient/android/widget/AdvancedImageView;)V

    .line 1161
    :cond_0
    :goto_0
    return-void

    .line 1158
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow$2;->this$1:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;->access$4400(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;)Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow$2;->this$1:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;->access$4300(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;)Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    move-result-object v1

    invoke-direct {p0, p2, p1, v0, v1}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow$2;->setImage(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Lcom/netflix/mediaclient/android/widget/AdvancedImageView;)V

    goto :goto_0
.end method
