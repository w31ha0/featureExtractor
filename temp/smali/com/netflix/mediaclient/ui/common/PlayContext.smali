.class public interface abstract Lcom/netflix/mediaclient/ui/common/PlayContext;
.super Ljava/lang/Object;
.source "PlayContext.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;


# static fields
.field public static final DEFAULT_MDX_TRACKID:I = 0xd2a38f

.field public static final DFLT_MDX_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

.field public static final EMPTY_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

.field public static final NFLX_MDX_3RD_PARTY_LAUNCHER_TRACKID:I = 0xd1c419

.field public static final NFLX_MDX_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

.field public static final OFFLINE_MY_DOWNLOADS_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

.field public static final OFFLINE_NOTIFICATION_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/common/PlayContext;->EMPTY_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

    .line 13
    new-instance v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    const v1, 0xd1c419

    invoke-direct {v0, v3, v1, v2, v2}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/netflix/mediaclient/ui/common/PlayContext;->NFLX_MDX_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

    .line 14
    new-instance v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    const v1, 0xd2a38f

    invoke-direct {v0, v3, v1, v2, v2}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/netflix/mediaclient/ui/common/PlayContext;->DFLT_MDX_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

    .line 15
    new-instance v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    const v1, 0xe8703b

    invoke-direct {v0, v3, v1, v2, v2}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/netflix/mediaclient/ui/common/PlayContext;->OFFLINE_MY_DOWNLOADS_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

    .line 16
    new-instance v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    const v1, 0xe8b38b

    invoke-direct {v0, v3, v1, v2, v2}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/netflix/mediaclient/ui/common/PlayContext;->OFFLINE_NOTIFICATION_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

    return-void
.end method


# virtual methods
.method public abstract getBrowsePlay()Z
.end method

.method public abstract getPlayLocation()Lcom/netflix/mediaclient/ui/common/PlayLocationType;
.end method

.method public abstract getVideoPos()I
.end method

.method public abstract playContextToBundle()Landroid/os/Bundle;
.end method

.method public abstract setBrowsePlay(Z)V
.end method

.method public abstract setPlayLocation(Lcom/netflix/mediaclient/ui/common/PlayLocationType;)V
.end method
