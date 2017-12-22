.class public Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;
.super Ljava/lang/Object;
.source "BarkerShowDetailsFrag.java"


# static fields
.field private static final FADE_DURATION_2_SECS:I = 0x7d0

.field private static final INTERVAL_4_SECS:I = 0xfa0

.field private static final START_DELAY_3_SECS:I = 0xbb8


# instance fields
.field private final context:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private currentSlideshowIndex:I

.field private final handler:Landroid/os/Handler;

.field private horzDispImg:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

.field private horzDispImg2:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

.field private isHorzDispImgShowing:Z

.field private final slideShowImageUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final slideshowTask:Ljava/lang/Runnable;

.field private stopRequested:Z

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 1

    .prologue
    .line 1087
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1077
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;->handler:Landroid/os/Handler;

    .line 1078
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;->slideShowImageUrls:Ljava/util/List;

    .line 1085
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;->isHorzDispImgShowing:Z

    .line 1091
    new-instance v0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow$1;-><init>(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;->slideshowTask:Ljava/lang/Runnable;

    .line 1088
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;->context:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 1089
    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$1;)V
    .locals 0

    .prologue
    .line 1072
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;-><init>(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;)V
    .locals 0

    .prologue
    .line 1072
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;->animateSlideshow()V

    return-void
.end method

.method static synthetic access$3400(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;->slideshowTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;)Z
    .locals 1

    .prologue
    .line 1072
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;->stopRequested:Z

    return v0
.end method

.method static synthetic access$4200(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;)Z
    .locals 1

    .prologue
    .line 1072
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;->isHorzDispImgShowing:Z

    return v0
.end method

.method static synthetic access$4202(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;Z)Z
    .locals 0

    .prologue
    .line 1072
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;->isHorzDispImgShowing:Z

    return p1
.end method

.method static synthetic access$4300(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;)Lcom/netflix/mediaclient/android/widget/AdvancedImageView;
    .locals 1

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;->horzDispImg2:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;)Lcom/netflix/mediaclient/android/widget/AdvancedImageView;
    .locals 1

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;->horzDispImg:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;I)I
    .locals 0

    .prologue
    .line 1072
    iput p1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;->currentSlideshowIndex:I

    return p1
.end method

.method private animateSlideshow()V
    .locals 6

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;->horzDispImg:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;->context:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1192
    :cond_0
    :goto_0
    return-void

    .line 1145
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;->slideShowImageUrls:Ljava/util/List;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;->currentSlideshowIndex:I

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;->slideShowImageUrls:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1146
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;->context:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;->slideShowImageUrls:Ljava/util/List;

    iget v2, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;->currentSlideshowIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->boxArt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;->horzDispImg:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    .line 1147
    invoke-virtual {v3}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;->horzDispImg:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getMeasuredHeight()I

    move-result v4

    new-instance v5, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow$2;

    invoke-direct {v5, p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow$2;-><init>(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;)V

    .line 1146
    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->getImg(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;IILcom/netflix/mediaclient/util/gfx/ImageLoader$ImageLoaderListener;)V

    .line 1187
    iget v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;->currentSlideshowIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;->currentSlideshowIndex:I

    .line 1188
    iget v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;->currentSlideshowIndex:I

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;->slideShowImageUrls:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 1189
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;->currentSlideshowIndex:I

    goto :goto_0
.end method


# virtual methods
.method public start()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1101
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->access$3600(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->access$3700(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/mediaclient/servicemgr/interface_/details/KubrickShowDetails;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    .line 1102
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper;->isInTest(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1104
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->access$3800(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getHeroImage()Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;->horzDispImg:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    .line 1105
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->access$3900(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->getHeroImage2()Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;->horzDispImg2:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    .line 1107
    iput-boolean v3, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;->stopRequested:Z

    .line 1108
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;->slideShowImageUrls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1109
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->access$4000(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/details/KubrickShowDetails;

    .line 1111
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/KubrickShowDetails;->getHeroImages()Ljava/util/List;

    move-result-object v1

    .line 1112
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1113
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;->slideShowImageUrls:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1116
    :cond_0
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/KubrickShowDetails;->getKubrickStoryImgUrl()Ljava/lang/String;

    move-result-object v0

    .line 1118
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1119
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;->slideShowImageUrls:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1122
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;->slideShowImageUrls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1123
    iput v3, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;->currentSlideshowIndex:I

    .line 1124
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;->slideshowTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1125
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;->slideshowTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1128
    :cond_2
    return-void
.end method

.method public stop(Z)V
    .locals 2

    .prologue
    .line 1131
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;->stopRequested:Z

    if-nez v0, :cond_0

    .line 1132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;->stopRequested:Z

    .line 1133
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;->slideshowTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1134
    if-eqz p1, :cond_0

    .line 1135
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;->slideShowImageUrls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1138
    :cond_0
    return-void
.end method
