.class public Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;
.super Ljava/lang/Object;
.source "VideoDetailsClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoDetailsClickListener"


# instance fields
.field private final activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field public longClickAnimation:Z

.field private final playContextProvider:Lcom/netflix/mediaclient/ui/common/PlayContextProvider;

.field private useDelayedClick:Z

.field private videoId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/common/PlayContextProvider;)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;->longClickAnimation:Z

    .line 56
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 57
    iput-object p2, p0, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;->playContextProvider:Lcom/netflix/mediaclient/ui/common/PlayContextProvider;

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/common/PlayContextProvider;Z)V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;->longClickAnimation:Z

    .line 61
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 62
    iput-object p2, p0, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;->playContextProvider:Lcom/netflix/mediaclient/ui/common/PlayContextProvider;

    .line 63
    iput-boolean p3, p0, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;->useDelayedClick:Z

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-object v0
.end method

.method private reportToCL(Lcom/netflix/mediaclient/android/widget/VideoView;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 234
    const-string/jumbo v0, "boxArtUIState"

    .line 235
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/VideoView;->getBoxArtUIState()Ljava/lang/String;

    move-result-object v0

    .line 237
    const-string/jumbo v1, "VideoDetailsClickListener"

    const-string/jumbo v2, "VideoDetailsOnClick is reporting to CL...  boxArtUIState is %s"

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v0, v3, v7

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 239
    :try_start_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/VideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->viewTitleDetails:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    const/4 v3, 0x0

    sget-object v4, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;->gesture:Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v6, "boxArtUIState"

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v1, v2, v3, v4, v0}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportUIViewCommandWithJsonData(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :goto_0
    return-void

    .line 240
    :catch_0
    move-exception v0

    .line 241
    const-string/jumbo v1, "VideoDetailsClickListener"

    const-string/jumbo v2, "VideoDetailsOnClick had exception %s"

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v0, v3, v7

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 242
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/VideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/util/log/ExceptionLogClUtils;->reportHandledExceptionToCL(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected launchDetailsActivity(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/ui/common/PlayContext;)V
    .locals 1

    .prologue
    .line 92
    const-string/jumbo v0, "DeetsClickListener"

    invoke-static {p1, p2, p3, v0}, Lcom/netflix/mediaclient/ui/details/DetailsActivityLauncher;->show(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/ui/common/PlayContext;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 68
    const v0, 0x7f100023

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 69
    if-nez v0, :cond_0

    .line 70
    const-string/jumbo v0, "VideoDetailsClickListener"

    const-string/jumbo v1, "No video details for click listener to use"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :goto_0
    return-void

    .line 73
    :cond_0
    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/Video;

    .line 74
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;->playContextProvider:Lcom/netflix/mediaclient/ui/common/PlayContextProvider;

    invoke-interface {v1}, Lcom/netflix/mediaclient/ui/common/PlayContextProvider;->getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v1

    .line 84
    instance-of v2, p1, Lcom/netflix/mediaclient/android/widget/VideoView;

    if-eqz v2, :cond_1

    .line 85
    check-cast p1, Lcom/netflix/mediaclient/android/widget/VideoView;

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;->reportToCL(Lcom/netflix/mediaclient/android/widget/VideoView;)V

    .line 88
    :cond_1
    iget-object v2, p0, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p0, v2, v0, v1}, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;->launchDetailsActivity(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/high16 v8, 0x43340000    # 180.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v7, 0x9

    .line 97
    const v0, 0x7f100023

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 98
    if-nez v0, :cond_0

    move v1, v2

    .line 198
    :goto_0
    return v1

    .line 102
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "onLongClick"

    invoke-static {v3, v4, v5, v5}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportCustomAction(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lorg/json/JSONObject;)V

    .line 104
    iget-object v3, p0, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8319;->isInTest(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 106
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;->playContextProvider:Lcom/netflix/mediaclient/ui/common/PlayContextProvider;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/common/PlayContextProvider;->getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getListPos()I

    move-result v0

    .line 107
    iget-object v3, p0, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;->playContextProvider:Lcom/netflix/mediaclient/ui/common/PlayContextProvider;

    invoke-interface {v3}, Lcom/netflix/mediaclient/ui/common/PlayContextProvider;->getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getVideoPos()I

    move-result v3

    .line 108
    const/16 v4, 0xf

    new-array v4, v4, [[I

    new-array v5, v7, [I

    fill-array-data v5, :array_0

    aput-object v5, v4, v2

    new-array v5, v7, [I

    fill-array-data v5, :array_1

    aput-object v5, v4, v1

    const/4 v5, 0x2

    new-array v6, v7, [I

    fill-array-data v6, :array_2

    aput-object v6, v4, v5

    const/4 v5, 0x3

    new-array v6, v7, [I

    fill-array-data v6, :array_3

    aput-object v6, v4, v5

    const/4 v5, 0x4

    new-array v6, v7, [I

    fill-array-data v6, :array_4

    aput-object v6, v4, v5

    const/4 v5, 0x5

    new-array v6, v7, [I

    fill-array-data v6, :array_5

    aput-object v6, v4, v5

    const/4 v5, 0x6

    new-array v6, v7, [I

    fill-array-data v6, :array_6

    aput-object v6, v4, v5

    const/4 v5, 0x7

    new-array v6, v7, [I

    fill-array-data v6, :array_7

    aput-object v6, v4, v5

    const/16 v5, 0x8

    new-array v6, v7, [I

    fill-array-data v6, :array_8

    aput-object v6, v4, v5

    new-array v5, v7, [I

    fill-array-data v5, :array_9

    aput-object v5, v4, v7

    const/16 v5, 0xa

    new-array v6, v7, [I

    fill-array-data v6, :array_a

    aput-object v6, v4, v5

    const/16 v5, 0xb

    new-array v6, v7, [I

    fill-array-data v6, :array_b

    aput-object v6, v4, v5

    const/16 v5, 0xc

    new-array v6, v7, [I

    fill-array-data v6, :array_c

    aput-object v6, v4, v5

    const/16 v5, 0xd

    new-array v6, v7, [I

    fill-array-data v6, :array_d

    aput-object v6, v4, v5

    const/16 v5, 0xe

    new-array v6, v7, [I

    fill-array-data v6, :array_e

    aput-object v6, v4, v5

    .line 128
    :try_start_0
    aget-object v0, v4, v0

    aget v0, v0, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v1, :cond_5

    move v0, v1

    .line 135
    :goto_1
    if-eqz v0, :cond_3

    .line 136
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 137
    invoke-virtual {v0, v8}, Landroid/view/ViewPropertyAnimator;->rotationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-boolean v2, p0, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;->longClickAnimation:Z

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x64

    .line 138
    :goto_2
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-boolean v2, p0, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;->longClickAnimation:Z

    if-eqz v2, :cond_2

    const-wide/16 v2, 0x1f4

    .line 139
    :goto_3
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener$1;

    invoke-direct {v2, p0, p1}, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener$1;-><init>(Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;Landroid/view/View;)V

    .line 140
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 183
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_0

    .line 131
    :catch_0
    move-exception v0

    move v0, v2

    .line 132
    goto :goto_1

    .line 137
    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_2

    .line 138
    :cond_2
    const-wide/16 v2, 0x0

    goto :goto_3

    .line 186
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 187
    invoke-virtual {v0, v8}, Landroid/view/ViewPropertyAnimator;->rotationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x64

    .line 188
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    .line 189
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_0

    .line 196
    :cond_4
    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/Video;

    .line 197
    iget-object v3, p0, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_5
    move v0, v2

    goto :goto_1

    .line 108
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x0
        0x0
        0x1
        0x0
        0x0
        0x1
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x0
        0x0
        0x1
        0x0
        0x0
        0x1
        0x0
        0x1
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x1
        0x0
        0x0
        0x1
        0x0
        0x0
        0x1
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x0
        0x1
        0x0
    .end array-data

    :array_6
    .array-data 4
        0x1
        0x1
        0x1
        0x0
        0x1
        0x0
        0x1
        0x1
        0x1
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x1
        0x0
        0x0
        0x1
        0x0
        0x1
        0x1
        0x0
    .end array-data

    :array_9
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_a
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_b
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_c
    .array-data 4
        0x0
        0x1
        0x0
        0x0
        0x1
        0x0
        0x1
        0x1
        0x0
    .end array-data

    :array_d
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_e
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data
.end method

.method public remove(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 202
    const-string/jumbo v0, "VideoDetailsClickListener"

    const-string/jumbo v1, "Removing click listeners"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 205
    const v0, 0x7f100023

    invoke-virtual {p1, v0, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 206
    return-void
.end method

.method public setVideoId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;->videoId:Ljava/lang/String;

    .line 231
    return-void
.end method

.method public update(Landroid/view/View;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/android/widget/PressedStateHandler;)V
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;->useDelayedClick:Z

    if-eqz v0, :cond_0

    .line 219
    new-instance v0, Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener;

    invoke-direct {v0, p3, p0}, Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener;-><init>(Lcom/netflix/mediaclient/android/widget/PressedStateHandler;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 226
    const v0, 0x7f100023

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 227
    return-void

    .line 221
    :cond_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
