.class Lcom/netflix/mediaclient/android/widget/NavigationBarListener;
.super Ljava/lang/Object;
.source "NavigationBarListener.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "nf_navbar"


# instance fields
.field protected owner:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;)V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    if-nez p1, :cond_0

    .line 30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "View is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/NavigationBarListener;->owner:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    .line 34
    return-void
.end method

.method static getInstance(Landroid/content/Context;Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;)Lcom/netflix/mediaclient/android/widget/NavigationBarListener;
    .locals 2

    .prologue
    .line 68
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isTabletByContext(Landroid/content/Context;)Z

    .line 73
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 74
    :goto_0
    if-eqz v0, :cond_1

    .line 75
    const-string/jumbo v0, "nf_navbar"

    const-string/jumbo v1, "Real listener for JB+"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v0, Lcom/netflix/mediaclient/android/widget/NavigationBarListenerForJB;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/android/widget/NavigationBarListenerForJB;-><init>(Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;)V

    .line 79
    :goto_1
    return-object v0

    .line 73
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 78
    :cond_1
    const-string/jumbo v0, "nf_navbar"

    const-string/jumbo v1, "Dummy listener"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    new-instance v0, Lcom/netflix/mediaclient/android/widget/NavigationBarListener;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/android/widget/NavigationBarListener;-><init>(Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;)V

    goto :goto_1
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public startListening()V
    .locals 2

    .prologue
    .line 40
    const-string/jumbo v0, "nf_navbar"

    const-string/jumbo v1, "startListening: noop"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void
.end method

.method public stopListening()V
    .locals 2

    .prologue
    .line 47
    const-string/jumbo v0, "nf_navbar"

    const-string/jumbo v1, "stopListening: noop"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void
.end method
