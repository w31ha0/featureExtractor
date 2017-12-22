.class public final Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8297$HackForPresentationTrackingManager;
.super Ljava/lang/Object;
.source "Config_Ab8297.java"


# static fields
.field private static sPresentationTrackingBufferMultiplier:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8297$HackForPresentationTrackingManager;->sPresentationTrackingBufferMultiplier:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPresentationTrackingBufferMultiplier()I
    .locals 2

    .prologue
    .line 29
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8297$HackForPresentationTrackingManager;->sPresentationTrackingBufferMultiplier:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 30
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8297;->shouldUseLolomoRecyclerView(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getBasicScreenOrientation(Landroid/content/Context;)I

    move-result v0

    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenSizeCategory(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->getNumVideosPerPageTableByOrientation(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8297$HackForPresentationTrackingManager;->sPresentationTrackingBufferMultiplier:Ljava/lang/Integer;

    .line 36
    :cond_0
    :goto_0
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8297$HackForPresentationTrackingManager;->sPresentationTrackingBufferMultiplier:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 33
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8297$HackForPresentationTrackingManager;->sPresentationTrackingBufferMultiplier:Ljava/lang/Integer;

    goto :goto_0
.end method
