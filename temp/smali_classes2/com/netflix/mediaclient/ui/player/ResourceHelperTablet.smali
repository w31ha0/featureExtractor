.class public final Lcom/netflix/mediaclient/ui/player/ResourceHelperTablet;
.super Lcom/netflix/mediaclient/ui/player/ResourceHelper;
.source "ResourceHelperTablet.java"


# static fields
.field protected static final PROGRESSBAR_TOP_BOTTOM_PADDING_IN_DIP_TABLET:I = 0x2

.field protected static final TIMELINE_HEIGHT_IN_DIP_TABLET:I = 0x28

.field protected static final TIMELINE_THUMB_OFFSET_IN_DIP:I = 0x10


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/ResourceHelper;-><init>()V

    .line 34
    const v0, 0x7f02019d

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/ResourceHelperTablet;->pause:I

    .line 35
    const v0, 0x7f02019e

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/ResourceHelperTablet;->play:I

    .line 36
    const v0, 0x7f0201d2

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/ResourceHelperTablet;->zoomIn:I

    .line 37
    const v0, 0x7f0201d3

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/ResourceHelperTablet;->zoomOut:I

    .line 38
    const/16 v0, 0x28

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/ResourceHelperTablet;->timelineHeightInDip:I

    .line 39
    const/4 v0, 0x2

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/ResourceHelperTablet;->timelineHeightPaddingInDip:I

    .line 40
    const/16 v0, 0x10

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/ResourceHelperTablet;->timelineThumbOffsetInDip:I

    .line 41
    return-void
.end method
