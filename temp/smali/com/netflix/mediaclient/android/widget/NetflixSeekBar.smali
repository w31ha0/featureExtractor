.class public Lcom/netflix/mediaclient/android/widget/NetflixSeekBar;
.super Landroid/widget/SeekBar;
.source "NetflixSeekBar.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/NetflixSeekBar;->init()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/NetflixSeekBar;->init()V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/NetflixSeekBar;->init()V

    .line 37
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 40
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 41
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/api/Api21Util;->setSplitTrack(Landroid/widget/SeekBar;Z)V

    .line 43
    :cond_0
    return-void
.end method
