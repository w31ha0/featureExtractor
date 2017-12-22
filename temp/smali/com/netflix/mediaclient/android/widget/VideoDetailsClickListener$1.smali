.class Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener$1;
.super Ljava/lang/Object;
.source "VideoDetailsClickListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener$1;->this$0:Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

    iput-object p2, p0, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/16 v1, 0x64

    const/4 v8, 0x0

    .line 143
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener$1;->this$0:Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;->access$000(Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/NetflixApplication;->addToEasterEgg(Ljava/lang/String;)V

    .line 145
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 146
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 147
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 148
    const/high16 v3, -0x10000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 149
    const/high16 v3, 0x41400000    # 12.0f

    iget-object v4, p0, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener$1;->this$0:Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

    invoke-static {v4}, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;->access$100(Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 151
    iget-object v3, p0, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener$1;->this$0:Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

    invoke-static {v3}, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;->access$000(Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/netflix/mediaclient/NetflixApplication;->getTitleFromEasterEggMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 152
    if-eqz v3, :cond_0

    const-string/jumbo v4, "X"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->isEasterEggActivated()Z

    move-result v4

    if-nez v4, :cond_0

    .line 153
    iget-object v4, p0, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener$1;->this$0:Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

    invoke-static {v4}, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;->access$100(Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v4

    const-string/jumbo v5, "Congratulations - Netflix Android team\'s favorite movie is about to play..."

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 154
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->setEasterEggActivated()V

    .line 159
    new-instance v4, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler;

    const/16 v5, 0x1f6

    invoke-direct {v4, v5, v9}, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler;-><init>(ILjava/lang/String;)V

    iget-object v5, p0, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener$1;->this$0:Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

    invoke-static {v5}, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;->access$100(Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v5

    sget-object v6, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    const-string/jumbo v7, "80075566"

    invoke-virtual {v4, v5, v6, v7}, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler;->playVideo(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;)V

    .line 162
    iget-object v4, p0, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener$1;->this$0:Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

    invoke-static {v4}, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;->access$100(Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v4

    new-instance v5, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener$1$1;

    invoke-direct {v5, p0}, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener$1$1;-><init>(Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener$1;)V

    invoke-interface {v4, v9, v5}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->fetchAccountConfigData(Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;)V

    .line 172
    :cond_0
    const/high16 v4, 0x420c0000    # 35.0f

    const/high16 v5, 0x428c0000    # 70.0f

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 174
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener$1;->val$v:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 175
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener$1;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener$1;->this$0:Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;->longClickAnimation:Z

    if-eqz v0, :cond_1

    const-wide/16 v0, 0xc8

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 177
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener$1;->this$0:Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

    iput-boolean v8, v0, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;->longClickAnimation:Z

    .line 181
    return-void

    .line 175
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
