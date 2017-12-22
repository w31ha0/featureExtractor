.class public abstract Lcom/netflix/mediaclient/ui/player/ResourceHelper;
.super Ljava/lang/Object;
.source "ResourceHelper.java"


# instance fields
.field public pause:I

.field public play:I

.field public timelineHeightInDip:I

.field public timelineHeightPaddingInDip:I

.field public timelineThumbOffsetInDip:I

.field public zoomIn:I

.field public zoomOut:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static newInstance(Z)Lcom/netflix/mediaclient/ui/player/ResourceHelper;
    .locals 1

    .prologue
    .line 45
    if-eqz p0, :cond_0

    .line 46
    new-instance v0, Lcom/netflix/mediaclient/ui/player/ResourceHelperTablet;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/player/ResourceHelperTablet;-><init>()V

    .line 48
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/ui/player/ResourceHelperPhone;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/player/ResourceHelperPhone;-><init>()V

    goto :goto_0
.end method
